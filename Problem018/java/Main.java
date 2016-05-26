import java.math.BigInteger;
class Main{
	public static void main(String[] args){
		new Main();
	}
	
	public Main(){
		int[][] a = {
			{0,  0},
			{0, 75, 0},
			{0, 95,64, 0},
			{0, 17,47,82, 0},
			{0, 18,35,87,10, 0},
			{0, 20, 4,82,47,65, 0},
			{0, 19, 1,23,75, 3,34, 0},
			{0, 88, 2,77,73, 7,63,67, 0},
			{0, 99,65, 4,28, 6,16,70,92, 0},
			{0, 41,41,26,56,83,40,80,70,33, 0},
			{0, 41,48,72,33,47,32,37,16,94,29, 0},
			{0, 53,71,44,65,25,43,91,52,97,51,14, 0},
			{0, 70,11,33,28,77,73,17,78,39,68,17,57, 0},
			{0, 91,71,52,38,17,14,91,43,58,50,27,29,48, 0},
			{0, 63,66, 4,68,89,53,67,30,73,16,69,87,40,31, 0},
			{0,  4,62,98,27,23, 9,70,98,73,93,38,53,60, 4,23, 0},
		};
		
		int[][] memo = new int[a.length][a.length];
//		memo[i][j] = a[0][0];
		for(int i=1;i<a.length;i++){
			for(int j=1;j<=i;j++){
//				System.out.printf(" %2d", a[i][j]);
				memo[i][j] = a[i][j] + Math.max(memo[i-1][j-1], memo[i-1][j]);
			}
//			System.out.println();
		}
		/*
		for(int i=1;i<a.length;i++){
			for(int j=1;j<=i;j++){
				System.out.printf(" %4d", memo[i][j]);
			}
			System.out.println();
		}
		for(int i=1;i<a.length;i++){
			for(int j=1;j<=i;j++){
				System.out.printf(" %2d", a[i][j]);
			}
			System.out.println();
		}
		*/
		int ans = 0;
		for(int i=0;i<a.length;i++){
			ans = Math.max(memo[a.length-1][i], ans);
		}
		System.out.println(ans);
	}
}