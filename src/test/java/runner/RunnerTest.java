package runner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.CucumberOptions.SnippetType;

@RunWith(Cucumber.class)
@CucumberOptions(
		features = {"src/test/resources/features"},
		tags = "@usuario",
		glue = "steps",
		monochrome = true,
		plugin = {"junit:target/reports/cucumber.xml","json:target/reports/CucumberReports.json", "pretty"},
		snippets = SnippetType.CAMELCASE
			
		
		)



public class RunnerTest {

}
