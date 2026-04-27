...
...

{
	late AnimationController _controller;
	late Animation<double> _animation;

	@override
	void initState() {
		super.initState();

		_controller = AnimationController(
			duration: Duration(seconds: 3),
			vsync: this,
		)..repeat(reverse: true);

		_animation = Tween<doube>(begin: 100, end: 300).animate(_controller);
	}


	...{

		return Scaffold(
			appBar: AppBar(
				title: Text('Animation Example'),
			),
			body: Center(
				child: AnimatedBuilder(
					animation = _animation,
					builder: (context, child) {
						return Container(
							width: _animation.value,
							height: _animation.value,
							color: Colors.blue,
						);
					},
				)
			),
		);
	}
}

