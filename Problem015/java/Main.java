//137846528820
class Main{
	public static void main(String[] args){
		int size = 20;
		long[][] dp = new long[size + 2][size + 2];
		
		dp[1][0] = 1;
		for(int i=0;i<=size;i++){
			for(int j=0;j<=size;j++){
				dp[i+1][j+1] = dp[i+1][j] + dp[i][j+1];
			}
		}
		/*
		for(int i=0;i<dp.length;i++){
			System.out.println(java.util.Arrays.toString(dp[i]));
		}
		*/
		System.out.println(dp[size+1][size+1]);
	}
}