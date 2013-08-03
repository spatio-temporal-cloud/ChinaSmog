import java.io.IOException;
import java.net.URI;
import java.util.Iterator;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FSDataInputStream;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapred.MapReduceBase;
import org.apache.hadoop.mapred.OutputCollector;
import org.apache.hadoop.mapred.Reducer;
import org.apache.hadoop.mapred.Reporter;
import Jama.Matrix;
//@SuppressWarnings("deprecation")
public class PM2p5_3Reducer extends MapReduceBase implements
		Reducer<Text, Text, Text, Text> {

	@Override
	public void reduce(Text key, Iterator<Text> value,
			OutputCollector<Text, Text> output, Reporter reporter)
			throws IOException {

		String Line,AF="sig";
		String values_factor = " ",test=" ";
		double[][] inputweight = new double[20][4];
		double[][] outputweight = new double[20][1];
		double[][] BiasofHiddenNeurons = new double[20][1];
		while (value.hasNext()) {
			Line = values_factor + value.next().toString();
			String[] parameterList = Line.split(":");
			String[] inputweight_itemlist = parameterList[0].split(";");
			for (int i = 0; i < inputweight_itemlist.length; i++) {
				String[] inputweight_item = inputweight_itemlist[i].split(" ");
				for (int j = 2; j < inputweight_item.length; j++) {
				inputweight[i][j-2] = Double.parseDouble(inputweight_item[j].toString());
				}
			}

			String[] outputweight_itemlist = parameterList[1].split(";");
			for (int i = 0; i < outputweight_itemlist.length; i++) {
				String[] outputweight_item = outputweight_itemlist[i]
						.split(" ");
				for (int j = 0; j < outputweight_item.length; j++) {
					outputweight[i][j] = Double
							.parseDouble(outputweight_item[j]);
				}
			}

			String[] BiasofHiddenNeurons_itemlist = parameterList[2].split(";");
			for (int i = 0; i < BiasofHiddenNeurons_itemlist.length; i++) {
				String[] BiasofHiddenNeurons_item = BiasofHiddenNeurons_itemlist[i]
						.split(" ");
				for (int j = 0; j < BiasofHiddenNeurons_item.length; j++) {
					BiasofHiddenNeurons[i][j] = Double
							.parseDouble(BiasofHiddenNeurons_item[j]);
				}
			}

			String[] itemlist = parameterList[3].split(";");
			double[][] test_matrix=new double[itemlist.length][5];
			double[]  predic_true=new double[itemlist.length];
			for (int i = 0; i < itemlist.length; i++) {
				String[] item = itemlist[i].split(" ");
				for (int j = 0; j < item.length; j++) {
					if(j==0){
						predic_true[i]= Double.parseDouble(item[j]);
					}
					test_matrix[i][j] = Double.parseDouble(item[j]);
				}
			}
			ELM_Regression elm_test=new ELM_Regression();
			elm_test.setActivationFunction(AF);
			elm_test.setBiasofHiddenNeurons(new Matrix(BiasofHiddenNeurons));
			elm_test.setInputWeight(new Matrix(inputweight));
			elm_test.setOutputWeight(new Matrix(outputweight));
			double[]  predic=elm_test.ELM_Predict(new Matrix(test_matrix));
			for(int i=0;i<predic.length;i++){
				values_factor=values_factor+predic_true[i]+":"+predic[i]+" ";
				}	
					}

		output.collect(key, new Text(values_factor));
	}

}
