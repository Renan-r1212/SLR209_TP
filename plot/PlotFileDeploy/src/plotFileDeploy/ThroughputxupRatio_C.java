package plotFileDeploy;

import java.util.ArrayList;

public class ThroughputxupRatio_C {
	
	private Integer[] iterations;
	private Integer[] updateRatio;
	private Integer[] threds;
	private static Integer[] listSize;
	
	public ThroughputxupRatio_C() {
		iterations = new Integer[] {1, 2, 3, 4, 5};
		threds = new Integer[] {1, 2, 4, 8, 16, 32};
		listSize = new Integer[] {100, 1000, 8000};
		updateRatio = new Integer[] {0 , 5,  10, 15, 20,
									 25, 30, 35, 40, 45,
									 50, 55, 60, 65, 70,
								     75, 80, 85, 90, 95,
								     100};
		

	}
	public static void main(String[] args) {
		ThroughputxupRatio_C a = new ThroughputxupRatio_C();
		ThroughputxThread_C b = new ThroughputxThread_C();
		ThroughputXupRatio c = new ThroughputXupRatio();
		PlotFileDeploy d = new PlotFileDeploy();	
		Double [] pub;
		ArrayList<String> plotPath;
		
		plotPath = d.getFilePath("C_plotDataPath_throughputXupRatio.txt");
		pub = b.getCThroughputArray(b.getLogFilePath("clog_throughputXupRatio", a.iterations, a.updateRatio, a.threds, a.listSize));
		c.writeDataToPlotFiles_upratio(plotPath, pub);
	}

}
