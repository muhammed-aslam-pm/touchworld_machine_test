import 'package:flutter/material.dart';
import 'package:touchworld_machine_test/utils/color_constants.dart';
import 'package:touchworld_machine_test/utils/style_constants.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: ColorConstants.colorWhite,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 0)),
              ]),
          child: Center(
            child: Icon(
              Icons.menu,
              color: ColorConstants.primaryColor,
            ),
          ),
        ),
        Text("HOME", style: StyleConstants.homeTitle),
        SizedBox(
          height: 45,
          width: 45,
          child: Stack(children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: ColorConstants.colorWhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 0),
                    ),
                  ]),
              child: Center(
                child: Icon(
                  Icons.notifications_none,
                  color: ColorConstants.primaryColor,
                ),
              ),
            ),
            Positioned(
                right: 0,
                top: 0,
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: ColorConstants.colorRed,
                ))
          ]),
        )
      ],
    );
  }
}
