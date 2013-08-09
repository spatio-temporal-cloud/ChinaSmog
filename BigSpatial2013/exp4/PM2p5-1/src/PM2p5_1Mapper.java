import java.io.IOException;

import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapred.MapReduceBase;
import org.apache.hadoop.mapred.Mapper;
import org.apache.hadoop.mapred.OutputCollector;
import org.apache.hadoop.mapred.Reporter;



public class PM2p5_1Mapper extends MapReduceBase implements Mapper<LongWritable, Text, Text, Text> {



  @Override	
  public void map(LongWritable key, Text value, OutputCollector<Text, Text> output, Reporter reporter) throws IOException{
	  String line = value.toString();
	  String[] line_item=line.split(" ");
	  double[][] corr_item=new double[line_item.length-2][2];
	  String cityName = null,it_time = null,cityName_time=null,factor_corr;
	  for(int i=0;i<line_item.length;i++ ){
		  if(i==0){
			  cityName=line_item[i];
		  }
		  if(i==1){
			  it_time=line_item[i];
		  }
		if(i>=2)
		  {
			 String[] factor=line_item[i].split(":");
			 for(int j=0;j<factor.length;j++){
				// System.out.println(factor[j]);
			 corr_item[i-2][j]=Double.parseDouble(factor[j]);}
			
		  }
	  }
	  double corr=cor_coefficient(corr_item);
	  factor_corr=corr+" ";
	     cityName_time=cityName+"_"+it_time;
		  output.collect(new Text(cityName_time), new Text(factor_corr));
	 
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