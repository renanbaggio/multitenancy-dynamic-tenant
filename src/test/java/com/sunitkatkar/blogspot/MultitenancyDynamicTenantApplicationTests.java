package com.sunitkatkar.blogspot;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MultitenancyDynamicTenantApplicationTests {
	
	@Autowired
	private PasswordEncoder passwordEncoder;

	@Test
	public void contextLoads() {
		String encodedPassword = passwordEncoder.encode("admin");
		
		System.out.println(encodedPassword);
		Assert.assertNotNull(encodedPassword);
	}

}
