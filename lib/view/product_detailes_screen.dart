import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:touchworld_machine_test/model/product_model.dart';
import 'package:touchworld_machine_test/utils/color_constants.dart';
import 'package:touchworld_machine_test/utils/icon_constants.dart';
import 'package:touchworld_machine_test/utils/image_constants.dart';
import 'package:touchworld_machine_test/utils/style_constants.dart';

class ProductDetailesScreen extends StatelessWidget {
  const ProductDetailesScreen({super.key, required this.product});
  final Datum product;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: product.id.toString(),
      child: Scaffold(
        backgroundColor: ColorConstants.primaryColor,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  radius: 23,
                  backgroundColor: ColorConstants.colorWhite.withOpacity(0.3),
                  child:
                      const Icon(Icons.arrow_back_ios_new, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                product.name.toString(),
                style: StyleConstants.detailesName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                product.description.toString(),
                style: StyleConstants.adDescription,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 65,
              width: 170,
              decoration: BoxDecoration(
                  color: ColorConstants.colorWhite.withOpacity(0.3),
                  borderRadius: const BorderRadius.horizontal(
                      right: Radius.circular(50))),
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  SvgPicture.asset(IconConstants.dollerIcon),
                  Text(
                    "${product.price}.00",
                    style: StyleConstants.detailesPrice,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor:
                            ColorConstants.colorWhite.withOpacity(0.3),
                        child: const Icon(Icons.add, color: Colors.white),
                      ),
                      Text(
                        "09",
                        style: StyleConstants.detailesQuanity,
                      ),
                      CircleAvatar(
                        radius: 26,
                        backgroundColor:
                            ColorConstants.colorWhite.withOpacity(0.3),
                        child: const Icon(Icons.remove, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  width: 250,
                  child: product.image == null
                      ? Image.asset(ImageConstants.productImage)
                      : Image.network(product.image!),
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
