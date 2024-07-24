import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_textfield.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});

  static String id = 'update product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'UpdateProduct',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFormTextfield(
              hintText: 'Product Name',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFormTextfield(
              hintText: 'Description',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFormTextfield(
              hintText: 'Price',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFormTextfield(
              hintText: 'Image',
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(title: 'Update')
          ],
        ),
      ),
    );
  }
}
