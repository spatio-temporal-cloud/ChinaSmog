import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.Date;
import java.text.SimpleDateFormat;

public class mapReduce {

	public static void main(String[] args)  {
		if (args.length != 3) {
			System.out.println("Three parameters needed!");
			System.exit(0);
		}

		String train_file = args[0];
		int n = Integer.parseInt(args[1]);
		String train_file1 = args[2];
		PrintWriter pw=null;
		try {
			File file = new File(train_file1 + "result.txt");
			pw = new PrintWriter(file);
		for (int i = 1; i < n + 1; i++) {
			Date date1 = new Date();
			String str1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
					.format(date1);
			pw.println(str1);
			String inputFile = train_file + i + ".txt";
			System.out.println(inputFile);
			pw.println(inputFile);
			String outputFile = train_file + i + "test.txt";
			System.out.println(outputFile);
			pw.println(outputFile);
			largeFileIO(inputFile, outputFile);
		
		}
		Date date3 = new Date();
		String str3 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
				.format(date3);
		pw.println(str3);
		} catch (IOException ex) {
			ex.printStackTrace();
		}
		pw.flush();
		pw.close();
	}

	static void largeFileIO(String inputFile, String outputFile) {
		int count = 0, printcount = 1;
		String[] item = new String[4];
		try {
			BufferedInputStream bis = new BufferedInputStream(
					new FileInputStream(new File(inputFile)));
			BufferedReader in = new BufferedReader(new InputStreamReader(bis,
					"utf-8"), 20 * 1024 * 1024);// 10M»º´æ
			FileWriter fw = new FileWriter(outputFile);
			while (in.ready()) {

				String line = in.readLine();
				item[count] = getLine(line);
				count++;
				if (count == 4) {
					count = 0;
					String[] key = item[0].split(" ");
					fw.append(key[0] + " ");
					for (int i = 0; i < 4; i++) {
						String[] values = item[i].split(" ");
						fw.append(values[1] + " ");
					}
					fw.append("\n");
				   if(printcount%1000==0){
						System.out.println(printcount);
				}
					printcount++;
				}

			}
			in.close();
			fw.flush();
			fw.close();
		} catch (IOException ex) {
			ex.printStackTrace();
		}
	}

	public static String getLine(String Line) {
		String result;
		String[] line_item = Line.split(" ");
		double[][] corr_item = new double[line_item.length - 2][2];
		String cityName = null, it_time = null, cityName_time = null, factor_corr;
		for (int i = 0; i < line_item.length; i++) {
			if (i == 0) {
				cityName = line_item[i];
			}
			if (i == 1) {
				it_time = line_item[i];
			}
			if (i >= 2) {
				String[] factor = line_item[i].split(":");
				for (int j = 0; j < factor.length; j++) {
					// System.out.println(factor[j]);
					corr_item[i - 2][j] = Double.parseDouble(factor[j]);
				}

			}
		}
		double corr = cor_coefficient(corr_item);
		factor_corr = corr + " ";
		cityName_time = cityName + "_" + it_time;
		result = cityName_time + " " + factor_corr;
		return result;

	}

	public static double cor_coefficient(double[][] arr2) {
		int n = arr2.length;
		double sum1 = 0;
		double sum2 = 0;
		int length = 0;
		double[][] cor1 = new double[n][2];
		double[][] cor2 = new double[n][2];
		for (int i = 0; i < n; i++) {
			sum1 = sum1 + arr2[i][0];
			sum2 = sum2 + arr2[i][1];
			length++;
		}
		double avg1 = sum1 / length;
		double avg2 = sum2 / length;
		for (int i = 0; i < n; i++) {
			cor1[i][0] = arr2[i][0] - avg1;
			cor1[i][1] = arr2[i][1] - avg2;
			cor2[i][0] = cor1[i][0] * cor1[i][0];
			cor2[i][1] = cor1[i][1] * cor1[i][1];

		}
		double sum3 = 0;
		double[] sum4 = { 0.0, 0.0 };
		for (int i = 0; i < n; i++) {
			sum3 = sum3 + cor1[i][1] * cor1[i][0];
			sum4[0] = cor2[i][0] + sum4[0];
			sum4[1] = cor2[i][1] + sum4[1];
		}
		double p = sum4[0] * sum4[1];
		double cor = sum3 / Math.sqrt(p);
		return cor;
	}

}