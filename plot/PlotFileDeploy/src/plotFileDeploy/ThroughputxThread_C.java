package plotFileDeploy;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.ListIterator;
import java.util.Scanner;

public class ThroughputxThread_C {
	private static Integer[] iterations;
	private static Integer[] updateRatio;
	private static Integer[] threds;
	private static Double[] ThroughputArray;
	
	public ThroughputxThread_C() {
		
		
		iterations = new Integer[] {1, 2, 3, 4, 5};
		updateRatio = new Integer[] {0, 10, 25, 75, 100};
		threds = new Integer[] {1, 2, 4, 8, 16, 32};
		
		
	}

	public static void main(String[] args) {
		ThroughputxThread_C b = new ThroughputxThread_C();
		PlotFileDeploy d = new PlotFileDeploy();
		Double [] pub;
		ArrayList<String> plotPath;
		
		plotPath = d.getFilePath("C_plotDataPath_throughputXthreads.txt");
		pub = b.getCThroughputArray(b.getLogFilePath("clog_throughputXthread", iterations, updateRatio, threds));
		d.writeDataToPlotFiles_thread(plotPath, pub);
	}
	
	//CASO FOR MUDAR LIST SIZE MUDAR 1000
	public ArrayList<String> getLogFilePath(String dir, Integer[] iterations, Integer[] updateRatio, Integer[] threds) {
		ArrayList<String> cLogPath = new ArrayList<String>(); 
		for(Integer i : iterations)
			for(Integer j : updateRatio)
				for(Integer k : threds) {
					cLogPath.add(dir + "/MUTEX-hoh-list-n" + k + "-i1000-u" + j + "." + i + ".log");
					//MUTEX-hoh-list-n{threads}-i{list_size}-u{update_ratio}.{iteration}.log
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
	

}
