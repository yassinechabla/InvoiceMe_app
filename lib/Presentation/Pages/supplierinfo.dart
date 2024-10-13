import 'package:flutter/material.dart';
import 'package:invoiceme/Presentation/Pages/customer_info.dart';
import 'package:invoiceme/Presentation/Widgets/custom_button.dart';
import 'package:invoiceme/Presentation/Widgets/custom_text_field.dart';

class SupplierInfo extends StatelessWidget {
  final TextEditingController _supplierNameController = TextEditingController();
  final TextEditingController _supplierAdressController =
      TextEditingController();
  final TextEditingController _supplierIBANController = TextEditingController();
  SupplierInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              textAlign: TextAlign.start,
              "Fournisseur",
              style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextFormField(
                controller: _supplierNameController, labelText: 'Nom'),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormField(
                controller: _supplierAdressController, labelText: 'Adresse'),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormField(
                controller: _supplierIBANController, labelText: 'IBAN'),
            const SizedBox(
              height: 60,
            ),
            CustomButton(
              fontWeight: FontWeight.w600,
              text: "Suivant",
              padding: 2,
              function: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CustomerInfo()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
