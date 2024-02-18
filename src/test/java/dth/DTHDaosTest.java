package dth;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Arrays;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
/*import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.context.WebApplicationContext;*/
import org.springframework.mock.http.MockHttpOutputMessage;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;


import daos.CustomerDAO;
import entities.Customer;
import persistence.config.AppPersistenceConfig;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = AppPersistenceConfig.class)
//@SpringApplicationConfiguration(classes = AppPersistenceConfig.class) //required in Spring boot
public class DTHDaosTest {

    private Customer customer;
    @Autowired
    private CustomerDAO customerDAO;

    @Test
    public void testCustomerDAO_getCustomerById() {
    	
    	System.out.println(customerDAO.getCustomerById(1));
    }
}
