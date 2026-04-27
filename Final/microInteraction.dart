return Scaffold(
	body: Center(
		child: InkWell(
			ontap: () {
				// handle onTap behaviour
			},
			child: Container(
				padding: EdgeInsets.all(16),
				decoration: BoxDecoration(
					color = Colors.blueAccent,
					borderRadius: BorderRadius.circular(12),
				),
				child: Text(
					'Press Me',
					style: TextStyle(
						color: Colors.white,
						fontSize: 16,
					)
				)
			)
		)
	)
);
