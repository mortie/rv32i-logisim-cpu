// noinline to prevent clang from constant propagating
__attribute__((noinline))
int fib(int n) {
	int prev = 1;
	int prev2 = 0;
	int curr = 1;
	for (int i = 0; i < n; ++i) {
		curr = prev + prev2;
		prev = prev2;
		prev2 = curr;
	}

	return curr;
}

int main() {
	return fib(20); // fib(20) should be 6765
}
