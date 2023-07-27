import 'package:ai_med_scribble/responsiveLayout.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import '../../uitilities/colors.dart';

class LiveStreamWidget extends StatefulWidget {
  const LiveStreamWidget({super.key});

  @override
  State<LiveStreamWidget> createState() => _LiveStreamWidgetState();
}

class _LiveStreamWidgetState extends State<LiveStreamWidget> {
  stt.SpeechToText? speech;
  bool isListening = false;
  String recognizedText = '';
  String previousRecognizedText = '';
  Color iconColor = Colors.black;
  Icon playIcon = const Icon(Icons.play_arrow);

  @override
  void initState() {
    super.initState();
    speech = stt.SpeechToText();
  }

  void startListening() async {
    recognizedText = '';
    if (!isListening) {
      bool available = await speech!.initialize(
        onStatus: (status) {
          print('Speech recognition status: $status');
          if (status == stt.SpeechToText.listeningStatus) {
            setState(() {
              isListening = true;
            });
          } else {
            print('Speech recognition status: $status');
            setState(() {
              isListening = false;
            });
            print('Speech listenContinuously start: $status');
            // startListening();
          }
        },
        onError: (error) {
          print('Speech recognition error: ${error}');
          showErrorSnackbar(error.errorMsg);
          setState(() {
            isListening = false;
          });
          Future.delayed(Duration(seconds: 1), () {
            if (!isListening) {
              startListening();
            }
          });
        },
      );

      if (available) {
        print('Listening started...');
        setState(() {
          isListening = true;
        });

        speech!.listen(
          listenFor: Duration(minutes: 10),
          onResult: (result) {
            setState(() {
              recognizedText = "";
              for (final alternate in result.alternates) {
                recognizedText += alternate.recognizedWords + ' ';
              }
            });
          },
        );
      }
    }
  }

  void stopListening() {
    if (isListening) {
      print('Listening stopped.');
      setState(() {
        isListening = false;
        previousRecognizedText += recognizedText;
        // textEditingController.text = previousRecognizedText;
      });
      speech!.stop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: 1100,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
                elevation: 20,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                    width: 1100,
                    height: 450,
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: screenWidth,
                          decoration: const BoxDecoration(
                              color: blueColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.02),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/video.png"),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Text(
                                      "Live Stream",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                Image.asset("assets/arrow _down.png"),
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: 12,
                        // ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 400,
                                height: 275,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/bgImage.png'),
                                        // fit: BoxFit.cover
                                        fit: BoxFit.fill)),
                              )
                            ]),
                        Container(
                          height: 80,
                          width: screenWidth,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: const Text(
                            "Live Stream",
                            style: TextStyle(
                              color: text2Color,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ))),
            const SizedBox(
              height: 10,
            ),
            Card(
              elevation: 20,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                  width: 1100,
                  height: 200,
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: screenWidth,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.02),
                          child: Row(
                            children: [
                              Image.asset("assets/message.png"),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "Messenger",
                                style: TextStyle(
                                  color: text2Color,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Send Doctor a message....",
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 25,
                            ),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              elevation: 20,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                width: 1100,
                height: screenHeight,
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: screenWidth,
                      decoration: const BoxDecoration(
                          color: blueColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                    child: Image.asset("assets/voice.png")),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text(
                                  "Speech to Text",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                AvatarGlow(
                                  animate: isListening,
                                  glowColor: Colors.blue.shade200,
                                  duration: const Duration(milliseconds: 2000),
                                  repeatPauseDuration:
                                      const Duration(milliseconds: 100),
                                  repeat: true,
                                  endRadius: 25.0,
                                  child: IconButton(
                                      onPressed: isListening
                                          ? stopListening
                                          : startListening,
                                      icon: Icon(isListening
                                          ? Icons.mic
                                          : Icons.mic_off)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/solar_hambur.png"),
                              const SizedBox(
                                width: 20,
                              ),
                              Image.asset("assets/replayrounded.png"),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset("assets/play-arrow-rounded.png"),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset("assets/forwardrounded.png"),
                            ],
                          ),
                          Image.asset("assets/volume-up-fill.png"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 10),
                      child: Text(speech!.isListening == true
                          ? recognizedText
                          : isListening
                              ? recognizedText
                              : 'Tap the microphone to start listening...'),
                    ),
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 10),
                          child:
                              // Wrap(
                              //   spacing: 8.0,
                              //   runSpacing: 8.0,
                              //   children: previousRecognizedText
                              //       .map((item) =>
                              Text(
                            previousRecognizedText,
                            style: TextStyle(
                              color: Colors.blue.shade400,
                              fontSize: 15,
                              letterSpacing: 0.5,
                            ),
                          )
                          // )
                          // .toList(),
                          // ),
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showErrorSnackbar(String message) {
  Get.snackbar(
    'Error',
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.red,
    colorText: Colors.white,
    duration: Duration(seconds: 3),
  );
}
