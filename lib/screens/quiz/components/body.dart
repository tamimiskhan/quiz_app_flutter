import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app_flutter/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          SvgPicture.asset(
            'assets/icons/bg.svg',
            fit: BoxFit.fitWidth,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 35,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF3F4738), width: 3),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Stack(
                    children: [
                      LayoutBuilder(
                        builder: (context, constraints) => Container(
                          width: constraints.maxWidth * 0.5,
                          decoration: BoxDecoration(
                            gradient: kPrimaryGradient,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      Positioned.fill(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Text('18 sec'),
                            SvgPicture.asset('assets/icons/clock.svg')
                        ],
                      ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
