#include <bits/stdc++.h>

#define up(__i,__start,__end) for (int __i = (__start); __i <= (__end); __i++)
#define down(__i, __start,__end) for (int __i = (__start); __i >= (__end); __i--)
#define fi first
#define se second
#define bin(__o) (1 << (__o))
#define bug(x) std::cerr<<"[ "<<(#x)<<":  "<<x<<" ]"<<std::endl
#define bugline std::cerr<<"Passing:  "<<__LINE__<<std::endl
#define chkloop assert(false)
#define bugm(__x) std::cerr<<(#__x)<<std::endl

typedef long long ll;
typedef unsigned long long ull;
typedef double db;

template<typename T> inline T max(T a, T b) {return a > b ? a : b;}
template<typename T> inline T min(T a, T b) {return a < b ? a : b;}
template<typename T> inline bool cmax(T &a, T b) {return a < b ? a = b, 1 : 0;}
template<typename T> inline bool cmin(T &a, T b) {return a > b ? a = b, 1 : 0;}

inline int lrand(int l, int r) {
	assert(l <= r);
	return l + (ll)rand() * rand() % (r - l + 1);
}

int main() {

#ifdef cydiater_build

	freopen("in", "w", stdout);

#endif
	
	srand(time(0) ^ (ull)(new char));
	
	return 0;

}

