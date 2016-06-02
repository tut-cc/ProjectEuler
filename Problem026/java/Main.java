import java.util.*;
import java.math.*;

//983
class Main{
	public static void main(String[] args){
		int ans = 0;
		int max = 0;
		for(int i=3;i<1000;i++){
			//‘fˆö”‚É2‚Æ5ˆÈŠO‚Ì‘f”‚ðŠÜ‚Þ”‚Ì‚Ý’²‚×‚é
			//i‚»‚¤‚Å‚È‚¢”‚ÍzŠÂ¬”‚É‚È‚ç‚È‚¢j
			int t = div2and5(i);
			if(t == 1){
//				System.out.printf("%d %.20f\n", i, (double)1 / i);
				continue;
			}
			
			int x;
			BigInteger a = BigInteger.valueOf(9);
			for(x = 1;a.mod(BigInteger.valueOf(t)).compareTo(BigInteger.ZERO) != 0;x++){
				a = a.multiply(BigInteger.TEN).add(BigInteger.valueOf(9));
			}
//			System.out.printf("%d %d\n", i, x);
			if(max < x){
				max = x;
				ans = i;
			}
		}
		System.out.println(ans);
		
	}
	
	//
	static int div2and5(int n){
		while(n % 2 == 0)n /= 2;
		while(n % 5 == 0)n /= 5;
		return n;
	}
	
}