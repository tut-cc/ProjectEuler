import java.util.*;
import java.math.*;

//-59231
class Main{
	static ArrayList<Integer> ps;
	public static void main(String[] args){
		int max = 0;
		int maxAB = 0;
		for(int a = 999;a>-1000;a--){
			for(int b = 2;b<1000;b++){
				if(!isPrime(b))continue;
				int n = 0;
				while(isPrime(f(a, b, n))){
					n++;
				}
				if(max < n){
//					System.out.printf("%d %d %d %d\n", a, b, a * b, n);
					max = n;
					maxAB = a * b;
				}
			}
		}
		System.out.println(maxAB);
	}
	
	static boolean isPrime(long n){
		if(n < 0 || n == 1 || n == 0)return false;
		if(n % 2 == 0)return false;
		for(int i=3;i*i<=n;i+=2){
			if(n % i == 0)return false;
		}
		return true;
	}
	
	static long f(int a, int b, int n){
		return (long)n * n + n * a + b;
	}
}