package plotFileDeploy;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.ListIterator;

public class ThroughputXupRatio {

	private final int numOfSimulations = 5;
	private final int upRatioOffset = 21;
	private final int threadNum = 6;
	
	private Integer[] upRatioNum;

	public ThroughputXupRatio() {
		upRatioNum = new Integer[21];
		int count = 0;
			for(int j = 0; j <= 100; j += 5) {
				upRatioNum[count] = j;
				count++;
			}
	}

	public static void main(String[] args) {
		ArrayList<String> plotPath;
		ArrayList<String> simuPath;
		ThroughputXupRatio a = new ThroughputXupRatio();
		PlotFileDeploy 	   d = new PlotFileDeploy();
		Double[] pub;
		
		plotPath = d.getFilePath("plotDataPath_throughputXupRatio_JIT-on.txt");
		simuPath = d.getFilePath("simuDataPath_throughputXupRatio_JIT-on.txt");
		pub = d.getThroughputArray(simuPath);
		System.out.println("JIT-ON");
		a.writeDataToPlotFiles_upratio(plotPath, pub);
		
		plotPath = d.getFilePath("plotDataPath_throughputXupRatio_JIT-off.txt");
		simuPath = d.getFilePath("simuDataPath_throughputXupRatio_JIT-off.txt");
		pub = d.getThroughputArray(simuPath);
		System.out.println("JIT-OFF");
		a.writeDataToPlotFiles_upratio(plotPath, pub);
	}
	
	
	void writeDataToPlotFiles_upratio(ArrayList<String> plotPathList, Double[] ThroughputMeanArray) {
		ListIterator<String> plotPathListIt = null;
		BufferedWriter bf = null;
		int upRatioShift = 0;
		int ChangeSet = 0;
		
		try {
			plotPathListIt = plotPathList.listIterator();
			while(plotPathListIt.hasNext()) {
				File file = new File(plotPathListIt.next());
				bf = new BufferedWriter( new FileWriter(file) );
				
					for(Integer n : upRatioNum) { 
						bf.write(n + "\t" + ThroughputMeanArray[ChangeSet + upRatioShift]  				 
								   + "\t" + ThroughputMeanArray[ChangeSet + upRatioShift + 1]
								   + "\t" + ThroughputMeanArray[ChangeSet + upRatioShift + 2]
								   + "\t" + ThroughputMeanArray[ChangeSet + upRatioShift + 3]	   
								   + "\t" + ThroughputMeanArray[ChangeSet + upRatioShift + 4]
								   + "\t" + ThroughputMeanArray[ChangeSet + upRatioShift + 5]);
						
						upRatioShift += threadNum;
						bf.newLine();
					}
					bf.flush();
					upRatioShift = 0;
					ChangeSet += upRatioOffset*threadNum;
			}
        }catch(IOException e){
            e.printStackTrace();
        }catch(Exception e) {
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
