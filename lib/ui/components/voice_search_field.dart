import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;


class SearchTextFieldWidget extends StatefulWidget {
  SearchTextFieldWidget({super.key});

  @override
  State<SearchTextFieldWidget> createState() => _SearchTextFieldWidgetState();
}

class _SearchTextFieldWidgetState extends State<SearchTextFieldWidget> {
  TextEditingController _searchController = TextEditingController();
  late stt.SpeechToText _speech;
  bool _isListening = false;

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  void _toggleListening() async {
    if (_isListening) {
      setState(() {
        _isListening = false;
      });
      _speech.stop();
    } else {
      bool available = await _speech.initialize();
      if (available) {
        setState(() {
          _isListening = true;
        });
        _speech.listen(onResult: (result) {
          setState(() {
            _searchController.text = result.recognizedWords;
          });
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      obscureText: false,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(_isListening ? Icons.mic : Icons.mic_none),
          onPressed: _toggleListening,
        ),
        filled: true,
        fillColor: const Color.fromRGBO(247, 247, 247, 1),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        prefixIcon: const Icon(Icons.search),
        prefixIconColor: const Color.fromRGBO(124, 124, 124, 1),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: Color.fromRGBO(247, 247, 247, 1),
        )),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: Color.fromRGBO(230, 230, 230, 1),
        )),
        hintText: "Search",
        hintStyle: TextStyle(
          fontWeight: FontWeight.w600,
        ),
        contentPadding: const EdgeInsets.all(15),
      ),
    );
  }
}