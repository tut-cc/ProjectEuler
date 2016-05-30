import java.util.*;
import java.math.*;

//4782
class Main{
	static BigDecimal phi;
	static BigDecimal r5;
	static BigDecimal t;
	public static void main(String[] args){
		phi = new BigDecimal((1 + Math.sqrt(5)) / 2);
		r5 = new BigDecimal(Math.sqrt(5));
		t = new BigDecimal(10);
		t = t.pow(1000);
/*		
		for(int i=0;i<10;i++){
			System.out.println(fibDigit(i + 1));
		}
		*/
		int l = 1;
		int r = 5000;
		while(l < r){
			int mid = (l + r) / 2;
			if(fibDigit(mid)){
				if(!fibDigit(mid-1)){
					r = mid;
					break;
				}
				r = mid;
			}else{
				l = mid;
				
			}
		}
		System.out.println(r);
		
		
	}
	
	static boolean fibDigit(int n){
		
		BigDecimal p = new BigDecimal((1 + Math.sqrt(5)) / 2);
		
		p = p.pow(n);
		p = p.divide(r5, 1001, BigDecimal.ROUND_HALF_UP);
		p = p.add(BigDecimal.valueOf(0.5));
		p = p.divideToIntegralValue(BigDecimal.ONE).stripTrailingZeros();
		return p.toString().length() >= 1000;
	}
}