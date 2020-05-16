package plotFileDeploy;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.Scanner;
import java.util.*; 
import java.util.stream.*; 

public class PlotFileDeploy {
	private final int numOfSimulations = 5;
	
	private ProcessBuilder pb;
	private Process process;
	private ListIterator<String> filePathIt;
	private ListIterator<String> algoIt;
	private String[] algoList;
	private ListIterator<Integer> listSizeIt;
	private Integer[] listSizeList;
	private ListIterator<Integer> updateRatioIt;
	private Integer[] updateRatio;
	private ListIterator<Integer> ThreadNumIt;
	private Integer[] ThreadNum;
	private ArrayList<String> simuResultList;
	private ArrayList<Double> ThroughputList;
	private ListIterator<String> ContainerIt;
	private String[] Container;
	private ArrayList<String> plotPathList;

	
	public PlotFileDeploy() {
		simuResultList = new ArrayList<String>();
		ThroughputList = new ArrayList<Double>();
		plotPathList   = new ArrayList<String>();
				
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
			pb = new ProcessBuilder("bash deployPathEnvironment.sh", "&& echo Environment deployed");
			try {
				pb.start();
			} catch (IOException e) {
				e.printStackTrace();
			}
	}

	public double getThroughputLine(String file) {
		File simuData = new File(file);
	    String line = "";
		try {
			Scanner scanner = new Scanner(simuData);
		    
		    while (scanner.hasNextLine()) {
		        line = scanner.nextLine();
		        if(line.contains("Throughput")) {
		        	line = line.replaceAll("\\s","");
		        	return Double.parseDouble(line.substring(18));	    		
		        }
		    }
		} catch(FileNotFoundException e) { 
			e.printStackTrace();
		}
		return 0;
	}
	
	public ArrayList<String> getFilePath() {
		String[] path = new String[4];
		for(int i = 1; i <= 5; i++) {
			path[0] = "../updateResult/update_compare_" + i + "/";
			algoIt = Arrays.asList(algoList).listIterator();
			while(algoIt.hasNext()) {
				path[1] = path[0] + algoIt.next() + "/";	
				listSizeIt = Arrays.asList(listSizeList).listIterator();
				while(listSizeIt.hasNext()) {
					path[2] = path[1] + listSizeIt.next() + "/";
					updateRatioIt = Arrays.asList(updateRatio).listIterator();
					while(updateRatioIt.hasNext()) {
						String file;
						path[3] = path[2] + updateRatioIt.next() + "/";
						ThreadNumIt = Arrays.asList(ThreadNum).listIterator();
						while(ThreadNumIt.hasNext()) {
							file = path[3].substring(33).replaceAll("/", "_") + ThreadNumIt.next() + ".txt";
							simuResultList.add(path[3] + file);		
						}
					}
				}
			}
		}
		return simuResultList;
	}
	
	public void writeDataPlot(ArrayList<String> simuResultList) {
		
	}
	
	public void generatePlotFiles(ArrayList<String> filePathList) {
		filePathIt = filePathList.listIterator();
		while(filePathIt.hasNext()) {
			ThroughputList.add(getThroughputLine(filePathIt.next()));
		}
		
		System.out.println(ThroughputList);
		String[] plotPath = new String[4];
		for(int i = 0; i < ThroughputList.size(); i++) {
			plotPath[0] = "../plots/";
			ContainerIt = Arrays.asList(Container).listIterator();
			while(ContainerIt.hasNext()) {
				plotPath[1] = plotPath[0] + ContainerIt.next() + "/";
				algoIt = Arrays.asList(algoList).listIterator();
				while(algoIt.hasNext()) {
					plotPath[2] = plotPath[1] + algoIt.next() + "/";
					while(listSizeIt.hasNext()) {
						plotPath[3] = plotPath[2] + "plot_LISTSIZE_" + listSizeIt.next() + "/plot.txt";
						plotPathList.add(plotPath[3]);
					}
				}
			}
		}
		System.out.println(plotPathList);
		writeDataPlot(plotPathList);
	}
	
	public static void main(String[] args) {
		PlotFileDeploy d = new PlotFileDeploy();
		String a = "../updateResult/update_compare_1/CoarseGrainedListBasedSet/1000/10/";
		String b = a.substring(33).replaceAll("/", "_") + 12 + ".txt";
		
		/*
		System.out.println(a);
		System.out.println(a.substring(33).replaceAll("/", "_") + 12 + ".txt");
		System.out.println(a + b);
		*/
	}
}
