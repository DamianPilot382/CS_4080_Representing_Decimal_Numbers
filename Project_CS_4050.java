// You, Jin Young 
//Group Project CS4080
// 5/2/2020

/*
    This program is going to test out Java BigDecimal class by using different
    test data types.  
*/

package project_cs_4050;

import java.math.BigDecimal; 

public class Project_CS_4050 {

    public static void main(String[] args) {
        
        // Testing Double in java. 
        double intput_1 = 0.04; 
        double input_2 = 0.05;
        
        double results = input_2 - intput_1; 
        
        System.out.println(results);
        
        //Testing out BigDecimal class. 
        
        BigDecimal input_BD_1 = new BigDecimal(0.04);
        BigDecimal input_BD_2 = new BigDecimal(0.05);
        
        BigDecimal input_BD_3 = input_BD_2.subtract(input_BD_1);
        
        System.out.println(input_BD_3);
        
        
        //Now it is going to compare to using BigDecimal. 
        
        BigDecimal input_BD_4 = new BigDecimal("0.04");
        BigDecimal input_BD_5 = new BigDecimal("0.05");
        
        BigDecimal input_BD_6 = input_BD_5.subtract(input_BD_4);
        
        System.out.println(input_BD_6);
        
        // Why is this not working? 
        // Not every decimal can be exactly represnted in a float variable. 
        // It is because of scaling not same as each other. 
        
        BigDecimal input_BD_7 = new BigDecimal(".3456");
        BigDecimal input_BD_8 = new BigDecimal(.3456);
        
        if(input_BD_7 == input_BD_8)
            System.out.println("Equal to each other!");
        else 
            System.out.println("NOT Equal to each other!");
        
        System.out.println(input_BD_7);
        System.out.println(input_BD_8);
        
        // Is it same? No, because the scale is different that is why not equal to each other. 
        
        BigDecimal input_BD_9 = new BigDecimal("1.00");
        BigDecimal input_BD_10 = new BigDecimal("1.0");
        
        if(input_BD_9 == input_BD_10)
            System.out.println("Equal to each other!");
        else 
            System.out.println("NOT Equal to each other!");
        
        System.out.println(input_BD_9);
        System.out.println(input_BD_10);
    }
    
}
