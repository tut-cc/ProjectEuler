import java.math.BigInteger;
//142913828922
class Main{
	public static void main(String[] args){
		BigInteger sum = BigInteger.ZERO;
		for(int i=2;i<2000000;i++){
			if(isPrime(i)){
				sum = sum.add(BigInteger.valueOf(i));
			}
		}
		System.out.println(sum);
	}
	static boolean isPrime(int n){
		if(n < 2)return false;
		for(int i=2;i*i<=n;i++){
			if(n % i == 0)return false;
		}
		return true;
	}
}