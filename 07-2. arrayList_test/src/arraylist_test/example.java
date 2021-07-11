package arraylist_test;

import java.util.ArrayList;

public class example {

	public static void main(String[] args) {
		ArrayList<String> list1 = new ArrayList<String>();
		ArrayList<Integer> list2 = new ArrayList<Integer>();
		
		list1.add("바나나");
		list1.add("알러지");
		list1.add("원숭이");
		
		list2.add(98);
		list2.add(12);
		list2.add(21);
		
		for (int i = 0; i < list1.size(); i++)
			System.out.println(list1.get(i));
		
		for (int n : list2)
			System.out.println(n);
		
	}

}
