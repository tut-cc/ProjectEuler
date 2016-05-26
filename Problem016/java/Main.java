import java.math.BigInteger;
//1366
class Main{
	public static void main(String[] args){
		BigInteger n = new BigInteger("2");
		String str = n.pow(1000).toString();
		int ans = 0;
		for(int i=0;i<str.length();i++){
			ans += (int)(str.charAt(i) - '0');
		}
		System.out.println(str);
		System.out.println(ans);
	}
}