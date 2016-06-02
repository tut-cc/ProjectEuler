import java.util.*;

//510510
class Main{
	static ArrayList<Integer> ps;
	public static void main(String[] args){
		ps = new ArrayList<Integer>();
		
		boolean[] fr = new boolean[1000000];
		for(int i=2;i<1000000;i++)fr[i] = true;
		for(int i=2;i<1000000;i++){
			if(!fr[i])continue;
			for(int j=i*2;j<1000000;j+=i)fr[j] = false;
		}
		for(int i=2;i<1000000;i++){
			if(fr[i]){
				ps.add(i);
			}
		}
		double max = 0;
		int mp = 0;
		for(int i=2;i<1000000;i++){
			if(fr[i])continue;
			double tmp = (double)i / phi(i);
			if(max < tmp){
				max = tmp;
				mp = i;
//				System.out.printf("%d %d %f\n", i, phi(i), max);
			}
		}
		System.out.println(mp);
	}
	
	static int phi(int n){
		int a = 1;
		for(int pk : ps){
			if(pk > n)break;
			if(n % pk == 0){
				int nk = 1;
//				int t = n / pk;
				n /= pk;
				while(n % pk == 0){
					n /= pk;
					nk *= pk;
				}
				a *= nk * (pk - 1);
			}
		}
		
		return a;
	}
}