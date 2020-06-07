package plotFileDeploy;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.ListIterator;


public class ThroughputAndUpRatio {

	private final int numOfSimulations = 5;
	private final int upRatioOffset = 21;
	private final int threadNum = 3;
	
	private String[]  algoList;
	private Integer[] listSizeList;
	private Integer[] updateRatio;
	private Integer[] ThreadNum;
	
	public ThroughputAndUpRatio() {
		
		algoList = new String[] {"CoarseGrainedListBasedSet",
								 "HandsOverHandsSet"};
		
		listSizeList = new Integer[] {1000 , 8000};
		
		updateRatio  = new Integer[] {0, 10, 100 };
		
		ThreadNum    = new Integer[] {0,  5,  10, 15, 20,
									  25, 30, 35, 40, 45,
									  50, 55, 60, 65, 70,
									  75, 80, 85, 90, 95,
									  100};	
	}
	
	
	public static void main(String[] args) {
		ThroughputAndUpRatio a = new ThroughputAndUpRatio();
		PlotFileDeploy d = new PlotFileDeploy();
		
		ArrayList<String> plotPath;
		ArrayList<String> simuPath;
		
		plotPath = d.getFilePath("plotDataPath_throughputXupRatio.txt");
		simuPath = d.getFilePath("simuDataPath_throughputXupRatio.txt");
		
		Double[] pub = d.getThroughputArray(simuPath);
		a.writeDataToPlotFiles(plotPath, pub);

	}
	
	private void writeDataToPlotFiles(ArrayList<String> plotPathList, Double[] ThroughputMeanArray) {
		ListIterator<String> plotPathListIt = null;
		BufferedWriter bf = null;
		int upRatioShift = 0;
		int ChangeSet = 0;
		
		try {
			plotPathListIt = plotPathList.listIterator();
			while(plotPathListIt.hasNext()) {
				File file = new File(plotPathListIt.next());
				bf = new BufferedWriter( new FileWriter(file) );

					for(Integer n : ThreadNum) { 
						//     Thread                                                                    	 // Update Ratio
						bf.write(n + "\t" + ThroughputMeanArray[ChangeSet + upRatioShift]  				  	 // 0 
								   + "\t " + ThroughputMeanArray[ChangeSet + upRatioShift + upRatioOffset]   // 10
								   + "\t" + ThroughputMeanArray[ChangeSet + upRatioShift + 2*upRatioOffset]);// 100
						if(upRatioShift++ < upRatioOffset - 1)
							bf.newLine();
						else {
							upRatioShift = 0;
							bf.flush();
						}
					}
					ChangeSet += upRatioOffset*threadNum;
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
