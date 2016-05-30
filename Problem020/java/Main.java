import java.math.*;

//648
class Main{
	public static void main(String[] args){
		BigInteger n = BigInteger.ONE;
		BigInteger m = BigInteger.ZERO;
		for(int i=0;i<100;i++){
			m = m.add(BigInteger.ONE);
			n = n.multiply(m);
		}
//		System.out.println(n);
		int ans = 0;
		String str = n.toString();
		for(int i=0;i<str.length();i++){
			ans += (int)(str.charAt(i) - '0');
		}
		System.out.println(ans);
	}
}