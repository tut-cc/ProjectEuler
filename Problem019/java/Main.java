//171
class Main{
	public static void main(String[] args){
		int[] month = {
			0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
		};
		
		int a = 0;
		int ans = 0;
		for(int y = 1901;y<=2000;y++){
			for(int m = 1;m<=12;m++){
				for(int d = 1;d <= (month[m] + isLeap(y, m));d++){
					if(d == 1 && a % 7 == 0)ans++;
					
					a++;
				}
			}
		}
		System.out.println(ans);
	}
	
	static int isLeap(int y, int m){
		return m == 2 && y % 4 == 0 && !((y % 400 != 0) && (y % 100 == 0)) ? 1 : 0;
	}
}