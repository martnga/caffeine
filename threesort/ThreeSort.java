// THREESORT
// LANGUAGE: JAVA

// Create a ThreeSort class with a threeSort method and a main method.
// The threeSort method should contain the algorithm and the main method
// should be used for testing your algorithm. To make that easier, make the
// threeSort method static.

// Given three numbers as input, find the min, middle and max of the three.
// Return an array of the numbers in ascending order.
// Hint: to easily see your output, import java.util.Arrays
// and use the Arrays.toString(array) method to convert the Array to a string
// and then log it using System.out.println();

// Example:
// ThreeSort.threeSort(9,4,6); // [4,6,9]
// ThreeSort.threeSort(3,2,1); // [1,2,3]

import java.util.Arrays;

public class ThreeSort {

	/**
	 * @param args
	 */
	public static int[] threeSort(int num1, int num2, int num3){

		int max = Math.max(num1, num2);
		int maxfinal = Math.max(max, num3);
		int min = Math.min(num1, num2);
		int minfinal = Math.min(min, num3);
		int mid = (num1 + num2 + num3) - minfinal -maxfinal;


		int result[] = {minfinal, mid, maxfinal};
		return result;

	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int result[] = threeSort(15, 14, 13);
		System.out.println(Arrays.toString(result));
	}

}
