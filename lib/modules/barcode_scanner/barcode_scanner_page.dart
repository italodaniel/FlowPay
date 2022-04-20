import 'package:flowpay/shared/themes/app_colors.dart';
import 'package:flowpay/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  State<BarcodeScannerPage> createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Escaneie o código de barras do boleto",
        style: TextStyles.buttonBackground,
        ),
        leading: BackButton(color: AppColors.background,),
      ),
    );
  }
}
