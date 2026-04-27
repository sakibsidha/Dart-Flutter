{
	..
	return Scaffold(
		body: Center(
			child: InkWell(
				onTap: () {
					Navigator.push(context, MaterialPageRoute(builder: (_) {
						return DetailScreen();
					}));
				},
				child: Hero(
					tag: 'imageHero',
					child: Image.network(
						'url',
						width: 100,
						height: 100,
					)
				)
			)
		),
	);
}

..DetailScreen.. {
	..
	return Scaffold(
		appBar: AppBar(
			title: 'Detail Screen',
		),
		body: Center(
			child: Hero(
				tag: 'imageHero',
				child: ClipRRect(
					borderRadius: BorderRadius.circular(16.0),
					child: Image.network(
						'url',
						width: 300,
						height: 300,
					)
				)
			)
		)
	);
}
