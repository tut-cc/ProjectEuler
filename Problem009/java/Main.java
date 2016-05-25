//31875000
class Main{
	public static void main(String[] args){
		for(int a=1;a<=999;a++){
			int b_plus_c = 1000 - a;
			for(int b=1;b<=b_plus_c-1;b++){
				int c = b_plus_c - b;
				if(a*a + b*b == c*c){
					System.out.println(a);
					System.out.println(b);
					System.out.println(c);
					System.out.println(a*b*c);
					return;
				}
			}
		}
	}
}