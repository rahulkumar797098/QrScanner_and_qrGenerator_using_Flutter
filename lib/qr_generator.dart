import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGenerator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QrGeneratorState();
}

class _QrGeneratorState extends State<QrGenerator> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Generate QR Code"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.tealAccent.shade100,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),

                ///////////// QR Code Show First
                if (textController.text.isNotEmpty)
                  Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.redAccent.shade100,
                          boxShadow: [
                            BoxShadow(color: Colors.deepPurple, blurRadius: 20)
                          ],
                          borderRadius: BorderRadius.circular(15)),
                      child: QrImageView(
                        data: textController.text,
                        size: 200,
                        padding: EdgeInsets.all(12),
                        gapless: false,
                      )),

                const SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    controller: textController,
                    style: const TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.format_color_text_rounded,
                          color: Colors.deepPurple,
                          size: 25,
                        ),
                        label: Text(
                          "Enter Your Text",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Colors.red.shade400),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(
                                color: Colors.deepPurple, width: 2)),
                        disabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 2, color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide:
                                const BorderSide(width: 2, color: Colors.red))),
                  ),
                ),

                SizedBox(
                  width: 300,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {});
                    },
                    splashColor: Colors.amber,
                    backgroundColor: Colors.yellowAccent.shade400,
                    child: const Text(
                      "Generate QR Code",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Colors.red),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// final check
