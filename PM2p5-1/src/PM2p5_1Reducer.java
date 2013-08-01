import java.io.IOException;
import java.util.Iterator;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapred.MapReduceBase;
import org.apache.hadoop.mapred.OutputCollector;
import org.apache.hadoop.mapred.Reducer;
import org.apache.hadoop.mapred.Reporter;

//@SuppressWarnings("deprecation")
public class PM2p5_1Reducer extends MapReduceBase implements
		Reducer<Text, Text, Text, Text> {

	@Override
	public void reduce(Text key, Iterator<Text> value,
			OutputCollector<Text, Text> output, Reporter reporter)
			throws IOException {
		String values_factor=" ";
		while(value.hasNext()){
			values_factor=values_factor+value.next().toString();
		}
		output.collect(key, new Text(values_factor));
	}
}
