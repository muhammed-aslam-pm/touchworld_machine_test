import 'package:flutter/material.dart';
import 'package:touchworld_machine_test/model/product_model.dart';
import 'package:touchworld_machine_test/utils/color_constants.dart';
import 'package:touchworld_machine_test/utils/image_constants.dart';
import 'package:touchworld_machine_test/view/product_detailes_screen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
  });
  final Datum product;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailesScreen(product: product),
          )),
      child: Hero(
        tag: product.id.toString(),
        child: Container(
          height: 250,
          width: 250,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: product.image == null
                      ? AssetImage(ImageConstants.productImage)
                          as ImageProvider<Object>
                      : NetworkImage(product.image!),
                  fit: BoxFit.cover),
              color: ColorConstants.primaryColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 0)),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  color: ColorConstants.colorWhite,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name.toString(),
                        style: TextStyle(
                            color: ColorConstants.colorWhite,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: ColorConstants.colorWhite,
                      )
                    ],
                  ),
                  Text(
                    product.brand.toString(),
                    style: TextStyle(
                        color: ColorConstants.colorWhite, fontSize: 10),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
