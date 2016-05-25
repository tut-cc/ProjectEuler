class Main{
	public static void main(String[] args){
		int max = 0;
		for(int i=100;i<=999;i++){
			for(int j=100;j<=999;j++){
				max = (isKaibun(i*j) && i*j > max) ? i*j : max;
			}
		}
		System.out.println(max);
	}
	
	public static boolean isKaibun(int n){
		String str = n+"";
		for(int i=0;i<str.length()/2;i++){
			if(str.charAt(i) != str.charAt(str.length() - i - 1))return false;
		}
		return true;
	}
}