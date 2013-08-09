import java.io.IOException;

import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapred.MapReduceBase;
import org.apache.hadoop.mapred.Mapper;
import org.apache.hadoop.mapred.OutputCollector;
import org.apache.hadoop.mapred.Reporter;

import com.sun.net.ssl.SSLContext;
import Jama.Matrix;

public class PM2p5_3Mapper extends MapReduceBase implements Mapper<LongWritable, Text, Text, Text> {



  @Override	
  public void map(LongWritable key, Text value, OutputCollector<Text, Text> output, Reporter reporter) throws IOException{
	  String line = value.toString();
	  String[] line_item=line.split(":");
	  String[] itemList = null,item;
	  double[][] train_matrix=new double[140][5];
	  String key_name = null,values=" ",ActivationFunction="sig";
	  for(int i=0;i<line_item.length;i++){
		  if(i==0){
			  key_name=line_item[i];
		  }
		  else{
			  itemList=line_item[i].split(";");
			  for(int j=0;j<140;j++){
				   item=itemList[j].split(" ");
				  for(int k=1;k<item.length;k++){
					  train_matrix[j][k-1]=Double.parseDouble(item[k].toString());
				  }
			  }
		  }
	  }
	  ELM_Regression elm=new ELM_Regression();
	  elm.ELM_Train(new Matrix(train_matrix), 20, ActivationFunction);
	  
	  for(int i=0;i<elm.getInputWeight().getRowDimension();i++){
		  for(int j=0;j<elm.getInputWeight().getColumnDimension();j++){
			  values=values+elm.getInputWeight().get(i, j)+" ";
		  }
		  
		  values=values+";";
	  }
	  values=values+":";
	  for(int i=0;i<elm.getOutputWeight().getRowDimension();i++){
		  for(int j=0;j<elm.getOutputWeight().getColumnDimension();j++){
			  values=values+elm.getOutputWeight().get(i, j)+" ";
		  		  }
		 		  values=values+";";
	  }
	  values=values+":";
	  for(int i=0;i<elm.getBiasofHiddenNeurons().getRowDimension();i++){
		  for(int j=0;j<elm.getBiasofHiddenNeurons().getColumnDimension();j++){
			  values=values+elm.getBiasofHiddenNeurons().get(i, j)+" ";
		  }
		  values=values+";";
	  }
	  values=values+":";
	  for(int j=140;j<itemList.length;j++){
		 item=itemList[j].split(" ");
		  for(int k=1;k<item.length;k++){
			  values=values+item[k]+" ";
		  }
		  values=values+";";
	  }
		  output.collect(new Text(key_name), new Text(values));
	 
  }
 
}