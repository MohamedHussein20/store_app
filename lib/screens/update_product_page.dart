import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/helper/show_snack_bar.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_textfield.dart';

class UpdateProductPage extends StatefulWidget {
  const UpdateProductPage({super.key});

  static String id = 'update product';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, desc, image;

  String? price;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
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
              CustomTextfield(
                onChanged: (data) {
                  productName = data;
                },
                hintText: 'Product Name',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextfield(
                onChanged: (data) {
                  desc = data;
                },
                hintText: 'Description',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextfield(
                inputType: TextInputType.number,
                onChanged: (data) {
                  price = data;
                },
                hintText: 'Price',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextfield(
                onChanged: (data) {
                  image = data;
                },
                hintText: 'Image',
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                title: 'Update',
                onTap: () {
                  isLoading = true;
                  setState(() {});
                  try {
                    updateProduct(product);
                    showSnackBar(context, 'Success');
                  } catch (e) {
                    showSnackBar(context, e.toString());
                  }
                  isLoading = false;
                  setState(() {});
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void updateProduct(ProductModel product) {
    UpdateProductService().updateProduct(
      title: productName!,
      price: price!,
      desc: desc!,
      image: image!,
      category: product.category,
    );
    isLoading = false;
    setState(() {});
  }
}
