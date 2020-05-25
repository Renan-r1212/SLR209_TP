package plotFileDeploy;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.ListIterator;

public class ThroughputXupRatio {

	private final int numOfSimulations = 5;
	private final int upRatioOffset =51;
	private final int threadNum = 3;
	
	private Integer[] upRatioNum;

	public ThroughputXupRatio() {
		upRatioNum = new Integer[51];
		int count = 0;
			for(int j = 0; j <= 100; j= j+2) {
				upRatioNum[count] = j;
				count++;
			}
	}

	public static void main(String[] args) {
		ArrayList<String> plotPath;
		ArrayList<String> simuPath;
		ThroughputXupRatio a = new ThroughputXupRatio();
		PlotFileDeploy 	   d = new PlotFileDeploy();
		
		plotPath = d.getFilePath("plotDataPath_throughputXupRatio.txt");
		simuPath = d.getFilePath("simuDataPath_throughputXupRatio.txt");
		
		Double[] pub = d.getThroughputArray(simuPath);
		
		System.out.println(pub.length);
		
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

					for(Integer n : upRatioNum) { 
						//     Thread                                                                     // Update Ratio
						bf.write(n + "\t" + ThroughputMeanArray[ChangeSet + upRatioShift]  				  // 0 
								   + "\t " + ThroughputMeanArray[ChangeSet + upRatioShift + upRatioOffset]    // 10
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
