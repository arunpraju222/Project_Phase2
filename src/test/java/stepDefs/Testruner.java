package stepDefs;



import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
		
		monochrome=true,
		plugin= {"pretty","html:target/cucumber-html","json:target/cucumber.json"},
		features= "src/test/java/feature",
		tags= {"@PositiveLogin or @NegativeLogin or @MultipleProductAdd or @SingleProductAdd"},
		glue= {"stepDefs"}
		
		)
public class Testruner {

}
