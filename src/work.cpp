/**
*    author:  Taichicchi
*    created: 29.04.2021 14:45:19
**/

#include <bits/stdc++.h>

#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

#define rep(i, n) for (int i = 0; i < (int)(n); i++)
typedef long long ll;

int main() {
    int H, W;
    cin >> H >> W;

    vector<vector<int>> A(H, vector<int>(W));
    rep(h, H) {
        rep(w, W) {
            cin >> A[h][w];
        }
    }

    rep(h, H) {
        rep(w, W) {
            cout << A[h][w] << " ";
        }
    }

    return 0;
}
