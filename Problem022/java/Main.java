import java.util.*;
import java.io.*;
//871198282
class Main{
	public static void main(String[] args) throws Exception{
		Scanner sc = new Scanner(new File("names.txt"));
		String[] list = sc.next().split(",");
		for(int i=0;i<list.length;i++){
			list[i] = list[i].substring(1, list[i].length()-1);
		}
		Arrays.sort(list);
		
		long score = 0;
		for(int i=0;i<list.length;i++){
			long tmp = 0;
			
			for(int j=0;j<list[i].length();j++){
				tmp += (long)(list[i].charAt(j) - 'A' + 1);
			}
			
			score += (i + 1) * tmp;
			
		}
		System.out.println(score);
		
		
	}
}