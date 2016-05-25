import java.util.*;

//76576500
class Main{
	public static void main(String[] args){
		long n = 0;
		long i = 1;
		while(count(n) <= 500){
			n += i;
			i++;
		}
		System.out.println(n);
	}
	
	static int count(long n){
		HashMap<Integer, Integer> map = new HashMap<Integer, Integer>();
		while(n > 1){
			int i;
			for(i=2;i<=n&&n%i!=0;i++);
				n /= i;
				if(map.containsKey(i)){
					map.put(i, map.get(i) + 1);
				}else{
					map.put(i, 1);
				}
		}
		int ans = 1;
		for(Map.Entry<Integer, Integer> e : map.entrySet()){
			ans *= e.getValue()+1;
		}
		return ans;
	}
}