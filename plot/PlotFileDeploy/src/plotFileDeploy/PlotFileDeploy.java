package plotFileDeploy;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.Scanner;
import java.util.*; 
import java.util.stream.*; 

public class PlotFileDeploy {
	private final int numOfSimulations = 5;
	private final int threadOffset = 6;
	private final int updateRatioNum = 5;
	
	private ProcessBuilder pb;
	private Process process;
	private String[] Container;
	private String[] algoList;
	private Integer[] listSizeList;
	private Integer[] updateRatio;
	private Integer[] ThreadNum;
	private Double[] ThroughputArray;
	private ArrayList<String> plotPathList;
	private ArrayList<String> pathThroughputXupRatio;
	private ArrayList<String> plotThroughputXupRatio;
	private Double[] ThroughputMeanArray;

	
	public PlotFileDeploy() {
		plotPathList           = new ArrayList<String>();
		pathThroughputXupRatio = new ArrayList<String>();
		plotThroughputXupRatio = new ArrayList<String>();
		pb = new ProcessBuilder("echo Environment deployed");
				
		algoList = new String[] {"CoarseGrainedListBasedSet",
								 "HandsOverHandsSet"};
		
		Container = new String[] {"linkedlist"};
		
		listSizeList = new Integer[] {100, 500};
		
		updateRatio = new Integer[] {0, 10, 25, 75, 100};
		
		ThreadNum 	= new Integer[] {1, 2, 4, 8, 16, 32};
	}
	
	public static void main(String[] args) {
		PlotFileDeploy d = new PlotFileDeploy();
		ArrayList<String> plotPath;
		ArrayList<String> simuPath;
		Double[] pub;
		
		plotPath = d.getFilePath("plotDataPath_throughputXthreads_JIT-off.txt");
		simuPath = d.getFilePath("simuDataPath_JIT-off.txt");
		pub = d.getThroughputArray(simuPath);
		d.writeDataToPlotFiles_thread(plotPath, pub);
		
		/*
		plotPath = d.getFilePath("plotDataPath_throughputXthreads_JIT-on.txt");
		simuPath = d.getFilePath("simuDataPath_JIT-on.txt");
		pub = d.getThroughputArray(simuPath);
		d.writeDataToPlotFiles_thread(plotPath, pub);
		*/
	}
	
	public void generatePlotEnvironment() {
		
		try {
			//pb = new ProcessBuilder("echo hello");
			process = pb.start();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<String> getFilePath(String file) {
		ArrayList<String> resultList = new ArrayList<String>();
		File filePath = new File(file);
	    String line = "";
			try {
				Scanner scanner = new Scanner(filePath);
			   
			    while (scanner.hasNextLine()) {
			        line = scanner.nextLine();
			        //System.out.println(line);
			        resultList.add(line);
			    }
			    scanner.close();
			} catch(FileNotFoundException e) { 
				e.printStackTrace();
			}
			return resultList;
	    }
	
	public Double[] getThroughputArray(ArrayList<String> simuPathList) {
		ArrayList<Double> ThroughputTempList = new ArrayList<Double>();
		ListIterator<String> simuPathListIt = null;
		Double [] ThroughputMeanAr;
	    String line = "";
	    String pfile = "";
	    
	    simuPathListIt = simuPathList.listIterator();
	    while(simuPathListIt.hasNext()) {
	    	pfile = simuPathListIt.next();
	    	//System.out.println(pfile);
	    	File simuData = new File(pfile);

			try {
				Scanner scanner = new Scanner(simuData);
			    
			    while (scanner.hasNextLine()) {
			        line = scanner.nextLine();
			        if(line.contains("Throughput")) {
			        	line = line.replaceAll("\\s","").substring(18);
			        	//System.out.println(line);
			        	ThroughputTempList.add(Double.parseDouble(line));

			        }
			    }

				} catch(FileNotFoundException e) { 
					e.printStackTrace();
				}
			}
	    ThroughputArray = ThroughputTempList.toArray(new Double[ThroughputTempList.size()]);
	    ThroughputMeanAr = ThroughputMean(ThroughputArray);
	    return ThroughputMeanAr;		
	}
	
	
	public Double[] ThroughputMean(Double[] ThroughputArray) {
		final int oneSimuSize = ThroughputArray.length/numOfSimulations;
		double[] simuThroughput = new double[numOfSimulations]; 
		ThroughputMeanArray = new Double[oneSimuSize];
		double ThroughputSum;
		int counter;
		
		for(int i = 0; i < oneSimuSize; i++) {
			counter = 0;
			while(counter < numOfSimulations) {
				simuThroughput[counter] = ThroughputArray[i + counter*oneSimuSize];
				counter++;
			}
			ThroughputSum = 0;
			for(int j = 0; j < numOfSimulations; j++) {
				ThroughputSum += simuThroughput[j];
			}
			ThroughputMeanArray[i] = ThroughputSum/numOfSimulations;
		}
		return ThroughputMeanArray;
	}
	
	private void writeDataToPlotFiles_thread(ArrayList<String> plotPathList, Double[] ThroughputMeanArray) {
		ListIterator<String> plotPathListIt = null;
		BufferedWriter bf = null;
		int ThreadShift = 0;
		int ChangeSet = 0;
		
		try {
			plotPathListIt = plotPathList.listIterator();
			while(plotPathListIt.hasNext()) {
				File file = new File(plotPathListIt.next());
				bf = new BufferedWriter( new FileWriter(file) );

					for(Integer n : ThreadNum) {                                                                
						bf.write(n + "\t" + ThroughputMeanArray[ChangeSet + ThreadShift]  				  
								   + "\t " + ThroughputMeanArray[ChangeSet + ThreadShift + threadOffset]   
								   + "\t" + ThroughputMeanArray[ChangeSet + ThreadShift + 2*threadOffset]
								   + "\t" + ThroughputMeanArray[ChangeSet + ThreadShift + 3*threadOffset]
								   + "\t" + ThroughputMeanArray[ChangeSet + ThreadShift + 4*threadOffset]);
						if(ThreadShift++ < threadOffset - 1)
							bf.newLine();
						else {
							ThreadShift = 0;
							bf.flush();
						}
					}
					ChangeSet += threadOffset*updateRatioNum;
			}
        }catch(IOException e){
            e.printStackTrace();
        }finally{
            
            try{
                //always close the writer
                bf.close();
                System.out.println("Plot files deployed");
            }catch(Exception e){}
		}
	}
}