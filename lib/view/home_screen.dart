import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:touchworld_machine_test/controller/controller.dart';
import 'package:touchworld_machine_test/utils/color_constants.dart';
import 'package:touchworld_machine_test/widgets/ad_card.dart';
import 'package:touchworld_machine_test/widgets/home_appbar.dart';
import 'package:touchworld_machine_test/widgets/profile_card.dart';

import '../widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  fetchData() {
    Provider.of<ProductController>(context, listen: false).fetchProducts();
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.colorWhite,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: HomeAppbar(),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: ProfileCard(),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: AdCard(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Arrivals",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: ColorConstants.colorBlack),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert_outlined,
                      color: ColorConstants.colorBlack,
                    ),
                  ),
                ],
              ),
            ),
            Consumer<ProductController>(
              builder: (context, value, child) => value.products.isEmpty
                  ? const Center(
                      child: Text("Products not available !"),
                    )
                  : CarouselSlider(
                      items: List.generate(
                          value.products.length,
                          (index) => ProductCard(
                                product: value.products[index],
                              )),
                      options: CarouselOptions(
                        initialPage: 10,
                        enlargeCenterPage: true,
                        viewportFraction: 0.8,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
