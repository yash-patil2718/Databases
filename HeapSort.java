package HeapSort;

import java.util.Arrays;

public class HeapSort {

	public static void main(String[] args) {

		int[] arr = { 21, 54, 22, 76, 43, 73, 41 };
		System.out.println("Before sort");
		System.out.println(Arrays.toString(arr));
		heapSort(arr);
		System.out.println("After sort");
		System.out.println(Arrays.toString(arr));
	}

	private static void heapSort(int[] arr) {
		int len = arr.length;
		while (len != 0) {
			//System.out.println("@@@@@");
			for (int i = (len / 2) - 1; i >= 0; i--) {
				//System.out.println("%%%%%");
				if ((2 * i + 1) < len && arr[i] < arr[2 * i + 1]) {
					//System.out.println("#####");
					int temp = arr[i];
					arr[i] = arr[2 * i + 1];
					arr[2 * i + 1] = temp;
				}

				if ((2 * i + 2) < len && arr[i] < arr[2 * i + 2]) {
					//System.out.println("****");
					int temp = arr[i];
					arr[i] = arr[2 * i + 2];
					arr[2 * i + 2] = temp;
				}
			}
			int temp = arr[0];
			arr[0] = arr[len - 1];
			arr[len - 1] = temp;
			//System.out.println(len - 1);
			//System.out.println(arr[len - 1]);
			len--;			
			System.out.println(Arrays.toString(arr));
		}

	}

}
