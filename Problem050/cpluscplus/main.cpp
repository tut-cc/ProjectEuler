#include <iostream>
#include <vector>
using namespace std;

#define MAX 1000000

vector< bool > p(MAX, true);

int main() {

    p[0] = p[1] = false;
    for(int i = 2; i * i < MAX; i++)
        for(int j = i + i; j < MAX; j += i)
            p[j] = false;

    vector< int > v;
    for(int i = 2; i < MAX; i++)
        if(p[i]) v.push_back(i);

    vector< long long > sum(v.size() + 1, 0);
    for(int i = 1; i <= v.size(); i++)
        sum[i] += sum[i - 1] + v[i - 1];

    for(int i = sum.size() - 1; i > 0; i--) {
        for(int j = 0; j < sum.size() - i; j++) {
            if(sum[i + j] - sum[j] >= MAX) continue;
            if(p[sum[i + j] - sum[j]]) {
                cout << sum[i + j] - sum[j] << endl;
                exit(0);
            }
        }
    }
}
