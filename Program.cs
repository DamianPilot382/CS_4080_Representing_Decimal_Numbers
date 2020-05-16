/**
 * @author Damian Ugalde
 * @date 2020-05-07
 * @version 1.0
 *
 * Representing Decimal Numbers
 * CS 4080 - Concepts of Programming Languages
 * California State Polytechnic University, Pomona
 * Computer Science Department
 *
 * Instructor: Rahul Talari
 *
 */
using System;

/**
* This simple project will show the differences in precision for 
* different floating point data types available in C#.
*/
namespace Decimals
{
    class Program
    {
        /**
        * Main Method used to call the methods for each test.
        */
        static void Main(string[] args)
        {
            //Call the three examples
            DivideExample();
            OnePlusTwoDecimal();
            OneDivideThree();
        }
        
        /*
        * Shows the basic example of 0.1 + 0.2 = 0.3
        */
        static void OnePlusTwoDecimal(){

            //Calculate 0.1 + 0.2 on each data type
            float float2 = 0.1f + 0.2f;
            double double2 = 0.1d + 0.2d;
            decimal decimal2 = 0.1m + 0.2m;

            //Print the results.
            Console.WriteLine("0.1 + 0.2 = 0.3");
            Console.WriteLine("float: " + float2);
            Console.WriteLine("double: " + double2);
            Console.WriteLine("decimal: " + decimal2);
        }

        /*
        * Shows the example of a recurring decimal.
        * This is caused by dividing 823 over 110.
        */
        static void DivideExample(){

            //Perform the divisions
            float float3 = 823f/110f;
            double double3 = 823d/110d;
            decimal decimal3 = 823m/110m;

            //Print out the results.
            Console.WriteLine("823 / 110 = 7.48181818...");
            Console.WriteLine("float: " + float3);
            Console.WriteLine("double: " + double3);
            Console.WriteLine("decimal: " + decimal3);
        }



        /*
        * Shows the example of dividing 1 over 3.
        * This produces a round-off error at the end of the recurring number.
        */
        static void OneDivideThree(){

            //Perform the divisions.
            float float1 = 1f/3;
            double double1 = 1d/3;
            decimal decimal1 = 1m/3;

            //Print out the results.
            Console.WriteLine("1 / 3 = 0.3333333...");
            Console.WriteLine("float: " + float1);
            Console.WriteLine("double: " + double1);
            Console.WriteLine("decimal: " + decimal1);
        }
    }
}
