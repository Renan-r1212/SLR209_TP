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
	private final int threadOffset = 4;
	
	private ProcessBuilder pb;
	private Process process;
	private String[] Container;
	private String[] algoList;
	private Integer[] listSizeList;
	private Integer[] updateRatio;
	private Integer[] ThreadNum;
	private ArrayList<String> simuResultList;
	private Double[] ThroughputArray;
	private ListIterator<String> plotPathListIt;
	private ArrayList<String> plotPathList;
	private Double[] ThroughputMeanArray;

	
	public PlotFileDeploy() {
		simuResultList = new ArrayList<String>();
		plotPathList   = new ArrayList<String>();
		pb = new ProcessBuilder("echo Environment deployed");
				
		algoList = new String[] {"CoarseGrainedListBasedSet",
								 "HandsOverHandsSet",
								 "LazySkipList"};
		
		Container = new String[] {"linkedlist", "skiplists"};
		
		listSizeList = new Integer[] {1000 , 2000 , 5000 , 8000,
									  10000, 12000, 15000, 20000};
		
		updateRatio = new Integer[] {0, 10, 100 };
		
		ThreadNum 	= new Integer[] {1, 4, 8, 12};
	}
	
	public void generatePlotEnvironment() {
			
			try {
				//pb = new ProcessBuilder("echo hello");
				process = pb.start();
			} catch (IOException e) {
				e.printStackTrace();
			}
	}

	public Double[] getThroughputList(String file) {
		File simuData = new File(file);
	    String line = "";
	    ArrayList<Double> ThroughputTempList = new ArrayList<Double>();
	    
		try {
			Scanner scanner = new Scanner(simuData);
		    
		    while (scanner.hasNextLine()) {
		        line = scanner.nextLine();
		        if(line.contains("Throughput")) {
		        	line = line.replaceAll("\\s","");
		        	ThroughputTempList.add(Double.parseDouble(line.substring(18)));   		
		        }
		    }
		    ThroughputArray = ThroughputTempList.toArray(new Double[0]);
		    
		    return ThroughputMean(ThroughputArray);
		    
		} catch(FileNotFoundException e) { 
			e.printStackTrace();
		}
		return null;
	}
	
	public ArrayList<String> getFilePath(String file) {
		File filePath = new File(file);
	    String line = "";
	    
	    if(file == "simuDataPath.txt") {
			try {
				Scanner scanner = new Scanner(filePath);
			   
			    while (scanner.hasNextLine()) {
			        line = scanner.nextLine();
			        simuResultList.add(line);
			    }
			} catch(FileNotFoundException e) { 
				e.printStackTrace();
			}
			return simuResultList;
	    } else if(file == "plotDataPath.txt"){
			try {
				Scanner scanner = new Scanner(filePath);
			   
			    while (scanner.hasNextLine()) {
			        line = scanner.nextLine();
			        plotPathList.add(line);
			    }
			} catch(FileNotFoundException e) { 
				e.printStackTrace();
			}
			return plotPathList;
	    }
		return null;
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

	public void writeDataToPlotFiles(ArrayList<String> plotPathList, Double[] ThroughputMeanArray) {
		BufferedWriter bf = null;
		int ThreadShift = 0;
		
		try {
			plotPathListIt = plotPathList.listIterator();
			while(plotPathListIt.hasNext()) {
				File file = new File(plotPathListIt.next());
				bf = new BufferedWriter( new FileWriter(file) );
				
				for(int i = 0; i < ThroughputMeanArray.length/4; i = i + threadOffset) {
					for(Integer n : ThreadNum) { 
						//     Thread                                                             // Update Ratio
						bf.write(n + " " + ThroughputMeanArray[i + ThreadShift] 				  // 0 
								   + " " + ThroughputMeanArray[i + ThreadShift + threadOffset]    // 10
								   + " " + ThroughputMeanArray[i + ThreadShift + 2*threadOffset]);// 100
						if(ThreadShift < threadOffset - 1)
							bf.newLine();
						if(ThreadShift++ == threadOffset)
							ThreadShift = 0;
					}
					bf.flush();
				}	
			}
        }catch(IOException e){
            e.printStackTrace();
        }finally{
            
            try{
                //always close the writer
                bf.close();
            }catch(Exception e){}
		}
	}
	
	public static void main(String[] args) {
		PlotFileDeploy d = new PlotFileDeploy();
		
		ProcessBuilder pub = new ProcessBuilder("echo hello");
		try {
			pub.start();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//d.generatePlotEnvironment();
		
		System.out.print("hello");
		//System.out.print(d.getThroughputList("simuDataPath.txt"));
		
	}
}
