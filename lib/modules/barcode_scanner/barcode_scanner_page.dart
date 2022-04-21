import 'package:flowpay/shared/themes/app_colors.dart';
import 'package:flowpay/shared/themes/app_text_styles.dart';
import 'package:flowpay/shared/widgets/bottom_sheet/bottom_seet_widget.dart';
import 'package:flowpay/shared/widgets/set_label_buttons/set_label_buttons.dart';
import 'package:flutter/material.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  State<BarcodeScannerPage> createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      title: "Não foi possivel identificar um código de barras.",
      subtitle: "Tente escanear novamnete ou digite o codigo do seu boleto.",
      primaryLabel: "Escanear novamente",
      primaryOnPressed: () {},
      secondaryLabel: "Digitar código",
      secondaryOnPressed: () {},
    );

    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                "Escaneie o código de barras do boleto",
                style: TextStyles.buttonBackground,
              ),
              centerTitle: true,
              leading: BackButton(
                color: AppColors.background,
              ),
            ),
            body: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.black.withOpacity(0.7),
                )),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.transparent,
                    )),
                Expanded(
                    child: Container(
                  color: Colors.black.withOpacity(0.7),
                ))
              ],
            ),
            bottomNavigationBar: SetLabelButtons(
                primaryLabel: "Inserir código com boleto",
                primaryOnPressed: () {},
                secondaryLabel: "Adicionar da galeria",
                secondaryOnPressed: () {})),
      ),
    );
  }
}
