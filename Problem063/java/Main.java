import java.util.*;
import java.math.*;

//49
class Main{
	public static void main(String[] args){
		int ans = 0;
		for(int i=1;i<=9;i++){
			for(int j=1;;j++){
				BigInteger d = BigInteger.valueOf(i).pow(j);
				int digit = d.toString().length();
				if(digit == j){
					ans++;
//					System.out.printf("%d %d %s %d\n", i, j, d.toString(), digit);
				}else if(digit < j){
					break;
				}
			}
		}
		System.out.println(ans);
	}
}
