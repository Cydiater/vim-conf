#include <bits/stdc++.h>

#define up(__i,__start,__end) for (int __i = (__start); __i <= (__end); __i++)
#define down(__i, __start,__end) for (int __i = (__start); __i >= (__end); __i--)
#define fi first
#define se second
#define bin(__o) (1 << (__o))
#define bug(x) std::cerr<<"[ "<<(#x)<<":  "<<x<<" ]"<<std::endl
#define bugline std::cerr<<"Passing:  "<<__LINE__<<std::endl
#define bugm(...) fprintf(stderr, __VA_ARGS__)

typedef long long ll;
typedef unsigned long long ull;
typedef double db;

template<typename T> inline T max(T a, T b) {return a > b ? a : b;}
template<typename T> inline T min(T a, T b) {return a < b ? a : b;}
template<typename T> inline bool cmax(T &a, T b) {return a < b ? a = b, 1 : 0;}
template<typename T> inline bool cmin(T &a, T b) {return a > b ? a = b, 1 : 0;}

#define cadd(_x,_y) _x = add(_x, _y)
#define cpop(_x,_y) _x = pop(_x, _y)
#define cmul(_x,_y) _x = mul(_x, _y)

const int mod = ;

inline int add(int a, int b) {a += b; return a >= mod ? a - mod : a;}
inline int pop(int a, int b) {a -= b; return a < 0 ? a + mod : a;}
inline int mul(int a, int b) {return (ll)a * b % mod;}

int qpow(int a, int b)  {
	int c = 1;
	while (b) {
		if (b & 1) cmul(c, a);	
		b >>= 1; cmul(a, a);
	}
	return c;
}

int main() {

#ifdef cydiater_build

	freopen("in", "r", stdin);
	freopen("out", "w", stdout);

#endif
	
	
	
	return 0;

}

