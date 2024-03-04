import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:touchworld_machine_test/utils/color_constants.dart';
import 'package:touchworld_machine_test/utils/image_constants.dart';
import 'package:touchworld_machine_test/utils/style_constants.dart';

class AdCard extends StatelessWidget {
  const AdCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageConstants.adImage,
          width: double.infinity,
        ),
        Positioned(
          top: 35,
          left: 30,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("20%", style: StyleConstants.adTitle1),
              Column(children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "  OFF",
                  style: StyleConstants.adTitle2,
                ),
              ]),
            ],
          ),
        ),
        Positioned(
          left: 30,
          top: 80,
          child: Text("on your first purchase",
              style: StyleConstants.adDescription),
        ),
        Positioned(
            left: 30,
            top: 120,
            child: DottedBorder(
              dashPattern: const [5, 5],
              radius: const Radius.circular(5),
              borderType: BorderType.RRect,
              strokeWidth: 1,
              color: ColorConstants.colorWhite,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                child: Text("Use code : FIRSTORDER",
                    style: StyleConstants.adDescription),
              ),
            )),
      ],
    );
  }
}
