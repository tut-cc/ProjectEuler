#include <iostream>
using namespace std;

int dp[4000000] = {0};

int main() {

    int sum = 0;
    dp[0] = dp[1] = 1;
    for(int i = 2; ; i++) {
        dp[i] = dp[i - 1] + dp[i - 2];
        if(dp[i] > 4000000) break;
        if(!(dp[i] % 2))sum += dp[i];
    }
    cout << sum << endl;
}
