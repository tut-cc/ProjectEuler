import java.util.*;
//2783915460
class Main{
	static int i = 0;
	public static void main(String[] args){
		int n = 10;
		solve(n, new int[n], new boolean[10]);
	}
	
	static void solve(int n, int[] a, boolean[] c){
		if(n > 0){
			for(int i=0;i<10;i++){
				if(!c[i]){
					a[n-1] = i;
					c[i] = true;
					solve(n-1, a, c);
					c[i] = false;
				}
			}
			a[n-1] = 0;
		}else{
			i++;
			if(i == 1000000){
				for(int i=9;i>=0;i--){
					System.out.print(a[i]);
				}
				System.out.println();
			}
		}
	}
}