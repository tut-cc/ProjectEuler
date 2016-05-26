import java.math.BigInteger;
import java.util.*;
import java.io.*;
//7273
class Main{
	public static void main(String[] args) throws Exception{
		new Main();
	}
	
	public Main() throws Exception{
		Scanner sc = new Scanner(new File("../p067_triangle.txt"));
		int size = 100;
		int[][] a = new int[size + 2][size + 2];
		int[][] memo = new int[size + 2][size + 2];
		for(int i=1;i<=size;i++){
			for(int j=1;j<=i;j++){
				a[i][j] = sc.nextInt();
//				System.out.printf(" %2d", a[i][j]);
				
			}
//			System.out.println();
		}
		for(int i=1;i<=size;i++){
			for(int j=1;j<=i;j++){
				memo[i][j] = a[i][j] + Math.max(memo[i-1][j-1], memo[i-1][j]);
			}
		}
		int ans = 0;
		for(int i=0;i<size;i++){
			ans = Math.max(memo[size][i], ans);
		}
		System.out.println(ans);
	}
}