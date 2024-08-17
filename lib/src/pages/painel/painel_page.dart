import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:flutter/material.dart';

import 'widgets/painel_principal_widget.dart';
import 'widgets/password_tile.dart';

class PainelPage extends StatelessWidget {
  const PainelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LabClinicasAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .4,
                  child: const PainelPrincipalWidget(
                    passwordLabel: 'Senha anterior',
                    password: 'BG5898',
                    deskNumber: '03',
                    buttonColor: LabClinicasTheme.orangeColor,
                    labelColor: LabClinicasTheme.orangeColor,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .4,
                  child: const PainelPrincipalWidget(
                    passwordLabel: 'Chamando senha',
                    password: 'BG5898',
                    deskNumber: '03',
                    buttonColor: LabClinicasTheme.orangeColor,
                    labelColor: LabClinicasTheme.blueColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Divider(
              color: LabClinicasTheme.orangeColor,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Últimos chamados',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: LabClinicasTheme.orangeColor),
            ),
            const SizedBox(
              height: 16,
            ),
            const Wrap(
              runAlignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: [
                PasswordTile(),
                PasswordTile(),
                PasswordTile(),
                PasswordTile(),
                PasswordTile(),
                PasswordTile(),
                PasswordTile(),
                PasswordTile(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
