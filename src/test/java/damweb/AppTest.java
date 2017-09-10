package damweb;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

import com.cts.mindbenders.config.BatchConfig;

public class AppTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AbstractApplicationContext  context = new AnnotationConfigApplicationContext(BatchConfig.class);
	}

}
