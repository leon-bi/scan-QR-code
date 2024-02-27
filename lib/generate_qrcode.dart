import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRCode extends StatefulWidget {
  const GenerateQRCode({super.key});

  @override
  State<GenerateQRCode> createState() => _GenerateQRCodeState();
}

class _GenerateQRCodeState extends State<GenerateQRCode> {
  TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generate QR code'),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (urlController.text.isNotEmpty)
              QrImageView(
                data: urlController.text,
                version: QrVersions.auto,
                size: 200,
              )
            else
              const Text('The url controller is empty'),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: TextField(
                controller: urlController,
                decoration: InputDecoration(
                    hintText: 'Enter your data',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                        labelText: 'Enter Your Data'),
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, child: const Text('Generate Qr code'))
          ],
        ),
      )),
    );
  }
}
