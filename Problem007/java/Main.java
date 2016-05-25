//104743
class Main{
	public static void main(String[] args){
		int i = 0;
		int n = 1;
		while(i < 10001){
			n++;
			if(isPrime(n)){
				i++;
			}
		}
		System.out.println(n);
	}
	
	static boolean isPrime(int n){
		if(n < 2)return false;
		for(int i=2;i*i<=n;i++){
			if(n % i == 0)return false;
		}
		return true;
	}
}