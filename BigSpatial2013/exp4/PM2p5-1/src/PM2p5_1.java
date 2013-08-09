import java.io.IOException;

import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapred.FileInputFormat;
import org.apache.hadoop.mapred.FileOutputFormat;
import org.apache.hadoop.mapred.JobClient;
import org.apache.hadoop.mapred.JobConf;

public class PM2p5_1{

//@SuppressWarnings("deprecation")
public static void main(String[] args) throws IOException{
	if(args.length != 2){
		System.err.println("Usage : MaxTemperature <input path><output path>");
		System.exit(-1);
	}
	
	JobConf conf = new JobConf(PM2p5_1.class);
	conf.setJobName("max temperature");
	
	FileInputFormat.addInputPath(conf, new Path(args[0]));
	FileOutputFormat.setOutputPath(conf, new Path(args[1]));
	
	conf.setMapperClass(PM2p5_1Mapper.class);
	conf.setReducerClass(PM2p5_1Reducer.class);
	
	conf.setOutputKeyClass(Text.class);
	conf.setOutputValueClass(Text.class);
	
	JobClient.runJob(conf);
	
}


}