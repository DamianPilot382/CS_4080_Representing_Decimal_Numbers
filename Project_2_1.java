/*
    You, Jin Young 
    Professor,  Rahul Talari
    CS 4080, California State Polytechnic University, Pomona

    Due: May 15, 2020
*/


/*
    This program going to test double vs Java class BigDecimal. It will compare how much both can hold floating-point numbers, BigDecimal double vs string and it proves that 
    the string BigDecimal constructor.  
*/


import java.math.BigDecimal;

public class Project_2_1 {

    public static void main(String[] args) 
    {

        // This part of code going to compare size double vs BigDecimal with same values and math equation.
        //It proves that BigDecimal can store even more digits compare to double data type. 

        System.out.println("Part 1");

        double x = 0.4;
        double z = 0.6; 
        double t = z-x;

       System.out.println("Answer for double = " + t);

       BigDecimal BigDec_x = new BigDecimal(0.4);
       BigDecimal BigDec_z = new BigDecimal(0.6);
       BigDecimal BigDec_t = new BigDecimal(0.0);

       BigDec_t = BigDec_z.subtract(BigDec_x);
       System.out.println("Answer for BigDecimal = " + BigDec_t);

       System.out.println("================================================================");


       // Another ways to store floating number into Computer's memory is to use string. This part of program would show  
       // passing value by double vs string into BigDecimal constructor. It will print out resluts. 

       System.out.println("Part 2");

       String numForString = "0.19999999999999995559107901499373838305473327636718750";
       System.out.println("Answer for numForString = " + numForString);

       double numForDouble = 0.19999999999999995559107901499373838305473327636718750;
       System.out.println("Answer for numForDouble = " + numForDouble);

       BigDecimal  BigDeCompString = new BigDecimal(numForString);
       System.out.println("Answer for BigDeCompString = " + BigDeCompString);

       BigDecimal  BigDeCompDouble = new BigDecimal(numForDouble);
       System.out.println("Answer for BigDeCompDouble = " + BigDeCompDouble);

       System.out.println("================================================================");


       // In this part, it is going show Bigdecimal can even hold smaller floating point number by using string. 

       System.out.println("Part 3");

       BigDecimal  BigDecDouble_3= new BigDecimal(.1999999999999999555910790149937383830547332763671875019999999999999995559107901499373838305473327636718750);
       System.out.println("Answer for BigDeTest = " + BigDecDouble_3);

       BigDecimal  BigDecString_3= new BigDecimal(".1999999999999999555910790149937383830547332763671875019999999999999995559107901499373838305473327636718750");
       System.out.println("Answer for BigDeTest = " + BigDecString_3);

       System.out.println("================================================================");

    }

}

