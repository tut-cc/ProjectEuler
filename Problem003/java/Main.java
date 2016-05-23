import java.math.BigInteger;
class Main{
	public static void main(String[] args){
		BigInteger n = new BigInteger("600851475143");
		BigInteger d = new BigInteger("2");
		BigInteger ans = new BigInteger("2");
		while(n.compareTo(BigInteger.ONE) > 0){
			//n % d == 0
			if(n.mod(d).compareTo(BigInteger.ZERO) == 0){
//				System.out.println("n:"+n);
//				System.out.println("d:"+d);
				n = n.divide(d);
				ans = ans.max(d);
				d = new BigInteger("2");
			}else{
				d = d.add(BigInteger.ONE);
			}
		}
		System.out.println(ans);
	}
}