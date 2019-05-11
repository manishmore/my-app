package com.mycompany.app;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Hello world!
 *
 */
public class App
{
    public static void main( String[] args )
    {
        //System.out.println( "Hello World!" );
        Logger logger = LoggerFactory.getLogger(App.class);
        logger.info("Welcome to the HelloWorld example of SLF4J");
    }
}
