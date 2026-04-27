void main() {
	group('Prime Checker Tests', (){
		late PrimeChecker checker;

		setup(() {
			checker = PrimeChecker();
		});

		test('2 is a prime', () {
			expect(checker.isPrime(2), true);
		});

		..
		..
	});
}
