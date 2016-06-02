import java.util.*;
import java.math.*;

//997651
//‚øçÏÇ¡ÇΩÇÁÇ‡Ç§ÇøÇÂÇ¢ë¨Ç≠Ç»ÇÈ
class Main{
	public static void main(String[] args){
		long[] p = new long[1000000];
		int np = 0;
		
		for(int i=2;i<1000000;i++){
			if(isPrime(i)){
				p[np] = i;
				np++;
			}
		}
		
		long[] sp = new long[np];
		sp[0] = p[0];
		for(int i=1;i<np;i++){
			sp[i] = p[i] + sp[i-1];
		}
		
		long ans = 0;
		long max_l = 0;
		for(int i=1;i<np;i++){
			for(int j=1;j<=i;j++){
				long t = sp[i] - sp[i - j];
				if(t < 1000000 && isPrime(t)){
					if(max_l < j){
						max_l = j;
						ans = t;
					}
				}
			}
		}
		System.out.println(ans);
		System.out.println(max_l);
	}
	
	static boolean isPrime(long n){
		if(n % 2 == 0 || n == 1 || n == 0)return false;
		for(int i=3;i*i<=n;i+=2){
			if(n % i == 0)return false;
		}
		return true;
	}
	
}