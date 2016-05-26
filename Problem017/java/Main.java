import java.math.BigInteger;
//21124
class Main{
	public static void main(String[] args){
		new Main();
	}
	
	public Main(){
		int ans = 0;
		for(int i=1;i<=1000;i++){
			ans += count(i);
		}
		System.out.println(ans);
	}
	
	static String[] num1 = {
		"one",
		"two",
		"three",
		"four",
		"five",
		"six",
		"seven",
		"eight",
		"nine",
		"ten",
		"eleven",
		"twelve",
		"thirteen",
		"fourteen",
		"fifteen",
		"sixteen",
		"seventeen",
		"eighteen",
		"nineteen",
		"twenty",
	};
	
	String[] num2 = {
		"twenty",
		"thirty",
		"forty",
		"fifty",
		"sixty",
		"seventy",
		"eighty",
		"ninety",
	};
	String h = "hundred";
	int count(int n){
		if(n == 1000){
//			System.out.println("one thousand");
			return "one".length() + "thousand".length();
			
		}
		
		int c = 0;
		if(n / 100 > 0){
//			System.out.print(num1[n / 100 - 1]);
//			System.out.print(" " + h);
			c += num1[n / 100 - 1].length() + h.length();
			if(n % 100 > 0){
//				System.out.print(" and");
				c += 3;
			}
		}
		
		if(n % 100 > 0){
			int s = n % 100;
			if(s >= 20){
//				System.out.print(" " + num2[s / 10 - 2]);
				c += num2[s / 10 - 2].length();
				if(s % 10 > 0){
//					System.out.print(" " + num1[s % 10 - 1]);
					c += num1[s % 10 - 1].length();
				}
			}else{
//				System.out.print(" " + num1[s-1]);
				c += num1[s-1].length();
			}
		}
//		System.out.println();
		return c;
	}
}