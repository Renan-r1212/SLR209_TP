package plotFileDeploy;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.ListIterator;
import java.util.Scanner;

public class ThroughputxThread_C {
	private final int numOfSimulations = 5;
	private final int threadOffset = 5;
	private final int updateRatioNum = 3;
		
	private static Integer[] iterations;
	private static Integer[] updateRatio;
	private static Integer[] threds;
	private static Integer[] listSize;
	private static Double[] ThroughputArray;
	
	public ThroughputxThread_C() {
		
		
		iterations = new Integer[] {1, 2, 3, 4, 5};
		updateRatio = new Integer[] {0, 10, 100};
		threds = new Integer[] {1, 2, 4, 8, 16};
		listSize = new Integer[] {100, 1000, 8000};
		
		
	}

	public static void main(String[] args) {
		ThroughputxThread_C b = new ThroughputxThread_C();
		PlotFileDeploy d = new PlotFileDeploy();
		Double [] pub;
		ArrayList<String> plotPath;
		
		plotPath = d.getFilePath("C_plotDataPath_throughputXthreads.txt");
		pub = b.getCThroughputArray(b.getLogFilePath("clog_throughputXthread", iterations, updateRatio, threds, listSize));
		b.writeDataToPlotFiles_thread(plotPath, pub);
	}
	
	//CASO FOR MUDAR LIST SIZE MUDAR 1000
	public ArrayList<String> getLogFilePath(String dir, Integer[] iterations, Integer[] updateRatio, Integer[] threds, Integer[] listSize) {
		ArrayList<String> cLogPath = new ArrayList<String>(); 
		for(Integer i : iterations)
			for(Integer y : listSize )
				for(Integer j : updateRatio)
					for(Integer k : threds) {
						cLogPath.add(dir + "/MUTEX-hoh-list-n" + k + "-i"+ y +"-u" + j + "." + i + ".log");
						//MUTEX-hoh-list-n{threads}-i{list_size}-u{update_ratio}.{iteration}.log
						//MUTEX-hoh-list-n1-i100-u0.1.log
					}
		return cLogPath;
	}
	
	public Double[] getCThroughputArray(ArrayList<String> simuPathList) {
		ArrayList<Double> ThroughputTempList = new ArrayList<Double>();
		PlotFileDeploy a = new PlotFileDeploy();; 
		ListIterator<String> simuPathListIt = null;
		Double [] ThroughputMeanAr;
	    String line = "";
	    String pfile = "";
	    int stringDivision;
	    
	    simuPathListIt = simuPathList.listIterator();
	    while(simuPathListIt.hasNext()) {
	    	pfile = simuPathListIt.next();
	    	//System.out.println(pfile);
	    	File simuData = new File(pfile);

			try {
				Scanner scanner = new Scanner(simuData);
			    
			    while (scanner.hasNextLine()) {
			        line = scanner.nextLine();
			        if(line.contains("#txs          : ")) {
			        	
			        	line = line.replaceAll("#txs          : ","");
			        	stringDivision = line.indexOf(" (");
			        	line = line.substring(0,stringDivision); 
			        	ThroughputTempList.add(Double.parseDouble(line));
			        }
			    }

				} catch(FileNotFoundException e) { 
					e.printStackTrace();
				}
			}
	    ThroughputArray = ThroughputTempList.toArray(new Double[ThroughputTempList.size()]);
	    ThroughputMeanAr = a.ThroughputMean(ThroughputArray);
	    return ThroughputMeanAr;
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

					for(Integer n : threds) {                                                                
						bf.write(n + "\t" + ThroughputMeanArray[ChangeSet + ThreadShift]  				  
								   + "\t" + ThroughputMeanArray[ChangeSet + ThreadShift + threadOffset]   
								   + "\t" + ThroughputMeanArray[ChangeSet + ThreadShift + 2*threadOffset]);
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
