import java.math.BigInteger;
//25164150
class Main{
	public static void main(String[] args){
		BigInteger n = BigInteger.ZERO;
		BigInteger m = BigInteger.ZERO;
		for(int i=1;i<=100;i++){
			n = n.add(BigInteger.valueOf(i).pow(2));
			m = m.add(BigInteger.valueOf(i));
		}
		System.out.println(m.pow(2).subtract(n));
	}
}