{
	bool _visible = true;

	void _toggleVisibility() {
		setState(() {
			_visible != visible;
		});
	}

	.. {
		return Scaffold(
			body: Center(
				child: Column(
					children: <Widget>[
						AnimatedOpacity(
							opacity: _visible ? 1 : 0;
							duration: Duration(seconds: 1),
							child: Container(
								height: 200, 
								width: 200,
								color: Colors.green,
							),
						),
						ElevatedButton(
							onPressed = _toggleVisibilty,
							child: Text(_visible? : 'Hide' : 'Show'),
						)
					]
				)
			)
		);
	}
}
