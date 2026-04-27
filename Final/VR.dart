import 'package:flutter_unity_widget/flutter_unity_widget.dart';

..

..VRScreen..{
	UnityWidgetController? _unityWidgetController;

	void _onUnityCreated(UnityWidgetController controlller) {
		_unityWidgetController = controller;
	}	

	@override
	void dispose() {
		_unityWidgetController.dispose();
		super.dispose();
	}

	.. build .. {
		return Scaffold(
			body: UnityWidget(
				onUnityCreated = _onUnityCreated,
			)
		);
	}
}
