import java.util.*;
//31626
class Main{
	public static void main(String[] args){
		HashSet<Integer> set = new HashSet<Integer>();
		for(int i=1;i<10000;i++){
			int a = i;
			int ad = div(a);
			int b = ad;
			int bd = div(b);
			if(a == bd && a != b){
//				System.out.println(a);
//				System.out.println(b);
				set.add(a);
				set.add(b);
			}
		}
//		System.out.println();
		int ans = 0;
		for(int n : set){
//			System.out.println(n);
			ans += n;
		}
		System.out.println(ans);
	}
	
	static int div(int n){
		int ans = 0;
		for(int i=1;i<n;i++){
			if(n % i == 0)ans += i;
		}
		return ans;
	}
}