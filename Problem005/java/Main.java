//nlog(logn)‚ÌƒI[ƒ_‚Å‰ğ‚¢‚½
//232792560
class Main{
	public static void main(String[] args){
		System.out.println(gcd(12, 10));
		int max = 20;
		long n = 1;
		for(int i=2;i<=max;i++){
			n = (n * i) / gcd(n, i);
		}
		System.out.println(n);
	}
	
	static long gcd(long a, long b){
		if(a *b == 0)return Math.max(a, b);
		if(a > b){
			return gcd(a%b, b);
		}else{
			return gcd(a, b%a);
		}
	}
}