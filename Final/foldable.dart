.. FoldableScreen.. {
	.. build .. {
		final screenWidth = MediaQuery.of(context).size.width;
		return Scaffold(
			body: screenWidth > 600
			? Row(
				children: [
					Expanded(child: LeftPanel()),
					Expaned(child: RightPanel()),
				]
			)
			: Center(child: SinglePanel())
		);
	}
}

.. LeftPanel .. {
	.. build .. {
		return Container(
			color: Colors.blue,
			child: Center(
				Text('Left panel'),
			)
		);
	}
}

.. RightPanel .. {
	.. build .. {
		return Container(
			color: Colors.blue,
			child: Center(
				Text('Right panel'),
			)
		);
	}
}

.. SinglePanel .. {
	.. build .. {
		return Container(
			color: Colors.blue,
			child: Center(
				Text('Single panel'),
			)
		);
	}
}

