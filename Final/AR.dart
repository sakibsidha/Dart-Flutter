import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
..

..ARScreen.. {
	ArCoreController? arCoreController;

	void _onArCoreViewCreated() {
		arCoreController = controller;
		arCoreController!.addArCoreNode(
			ArCoreReferenceNode(
				name: 'earth',
				objectUrl: '..url.gltf',
				position: ArCoreVector(0, 0, -1),
			)
		)
	}

	@override
	void dispose() {
		arCoreController?.dispose();
		super.dispose();
	}

	.. {
		return Scaffold(
			appBar: AppBar(
				title: Text('AR Example'),
			),
			body: ArCoreView(
				onArCoreViewCreated: _onArCoreViewCreated,
			)
		);
	}	
}
