import 'package:speech_to_text/speech_to_text.dart' as stt;

..STT..{
	stt.SpeechToText _speech = stt.SpeechToText();
	bool _isListening = false;
	String text = 'Press the button and start speaking';

	void _listen async () {
		if (!isListening) {
			bool available = await _speech.initialize();
			if (available) {
				setState(() => _isListening = true);
				_speech.listen(
					onResult: (result) {
						setState(() => _text = result.recognizedWords);
					}
				);
			}
		}
		else {
			setState(() => isListening = false);
			_speech.stop();
		}
	}

	..build..{
		return Scaffold(
			body: Center(
				child: Column(
					children: [
						Text(_text),
						SizedBox(20),
						IconButton(
							icon: Icon(_isListening? Icons.mic : Icons.mic_none),
							onPressed: _listen,
						)
					]
				)
			)
		);
	}
}
