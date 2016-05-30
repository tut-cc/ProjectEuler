import java.util.*;
//4179871
class Main{
	public static void main(String[] args){
		HashSet<Integer> list = new HashSet<Integer>();
		for(int i=1;i<=28123;i++){
			int d = div(i);
			if(d > i){
				list.add(i);
//				System.out.println(i);
			}
		}
		int ans = 0;
		for(int i=1;i<=28123;i++){
			boolean f = false;
			for(int a : list){
				int b = i - a;
				if(list.contains(b)){
					f = true;
					break;
				}
			}
			if(!f){
				ans += i;
			}
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