package org.springframework.samples.petclinic;

import org.jetbrains.annotations.NotNull;
import org.junit.jupiter.api.extension.RegisterExtension;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.util.TestPropertyValues;
import org.springframework.context.ApplicationContextInitializer;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.aot.DisabledInAotMode;
import tech.ydb.test.junit5.YdbHelperExtension;

@ActiveProfiles("ydb")
@AutoConfigureMockMvc
@SpringBootTest(classes = {PetClinicApplication.class})
@ContextConfiguration(initializers = YdbDockerBaseTest.Initializer.class)
@DisabledInAotMode
@DirtiesContext
public class YdbDockerBaseTest {

	@RegisterExtension
	public static final YdbHelperExtension YDB_HELPER_EXTENSION = new YdbHelperExtension();

	@Component
	static class Initializer implements ApplicationContextInitializer<ConfigurableApplicationContext> {

		@Override
		public void initialize(@NotNull ConfigurableApplicationContext applicationContext) {
			StringBuilder jdbc = new StringBuilder("jdbc:ydb:")
				.append(YDB_HELPER_EXTENSION.useTls() ? "grpcs://" : "grpc://")
				.append(YDB_HELPER_EXTENSION.endpoint())
				.append(YDB_HELPER_EXTENSION.database());

			if (YDB_HELPER_EXTENSION.authToken() != null) {
				jdbc.append("?").append("token=").append(YDB_HELPER_EXTENSION.authToken());
			}

			TestPropertyValues.of("spring.datasource.url=" + jdbc)
				.applyTo(applicationContext.getEnvironment());
		}
	}
}
