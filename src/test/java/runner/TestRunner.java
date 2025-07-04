package runner;
import com.intuit.karate.junit5.Karate;

public class TestRunner {
    @Karate.Test
    Karate testPetstore() {
        return Karate.run("classpath:features/petstore.feature");
    }
}
