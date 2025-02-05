import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class QrScanner extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  String qrResultShow = "Result Show Here";

  Future<void> scanQR() async {

    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode("#ff7777","Cancel",true,ScanMode.QR,);
      if (!mounted) return;
      setState(() {
        qrResultShow = qrCode != "-1" ? qrCode : "Failed to read QR code";
      });
    } catch (e) {
      setState(() {
        qrResultShow = "Error occurred while scanning QR code";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QR Code Scanner"),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.tealAccent.shade100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                qrResultShow,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold , color: Colors.deepOrange),
              ),
              const SizedBox(height: 20),


              Card(
               elevation: 30,
                shadowColor: Colors.deepPurple,
                child: Column(
                  children: [
                    SizedBox(
                      height: 300,
                      width: 300,

                      child: FloatingActionButton(
                        onPressed: scanQR,backgroundColor: Colors.limeAccent.shade100,
                        child: Image.asset("assets/images/qr-scan.png" , ),
                      ) ,
                    ),

                    const Text("Scan" , style: TextStyle(fontWeight: FontWeight.w800 , fontSize: 20),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
