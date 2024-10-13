import 'package:flutter/material.dart';
import 'package:invoiceme/Data/Colors/mycolors.dart';
import 'package:invoiceme/Presentation/Pages/supplierinfo.dart';
import 'package:invoiceme/Presentation/Widgets/custom_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundLightPink,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "Avec",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 36),
                ),
                Text(
                  " InvoiceMe",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: MyColors.buttonViolet,
                      fontSize: 36),
                ),
              ],
            ),
            Text(
              "créer vos factures complexes avec un seul clic !",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 36),
            ),
            SizedBox(
              height: 100,
            ),
            CustomButton(
              fontWeight: FontWeight.w700,
              text: "Commencer",
              padding: 5,
              function: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => SupplierInfo()),
                    (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
