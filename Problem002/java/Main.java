import java.math.BigInteger;
class Main{
	public static void main(String[] args){
		int bn = 1;
		int n = 2;
		BigInteger ans = BigInteger.ZERO;
		while(n <= 4000000){
//			System.out.println(n);
			if(n % 2 == 0){
				ans = ans.add(BigInteger.valueOf(n));
			}
			int tmp = n;
			n = bn + n;
			bn = tmp;
		}
		System.out.println(ans);
	}
}