import 'package:ez_plant_app/constants.dart';
import 'package:flutter/material.dart';

class RecommendedHorizontalWidget extends StatelessWidget {
  const RecommendedHorizontalWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width / 2,
      height: (screenSize.height / 3.5) + 75,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 75,
            child: Container(
              width: screenSize.width / 2,
              height: screenSize.height / 3.5,
              decoration: const BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: (screenSize.height / 3.5) / 1.35,
                    width: screenSize.width / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(
                          20,
                        ),
                        topRight: const Radius.circular(
                          20,
                        ),
                        bottomLeft: Radius.elliptical(
                          75,
                          ((screenSize.height / 3.5) / 1.35) / 3.5,
                        ),
                        bottomRight: Radius.elliptical(
                          125,
                          ((screenSize.height / 3.5) / 1.35) / 1.5,
                        ),
                      ),
                      color: AppColors.overlayColor,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                      left: 10,
                      bottom: 2,
                    ),
                    child: Text(
                      'Indoor',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          'Peace Lily',
                          textAlign: TextAlign.start,
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                  // fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 2,
                        ),
                        margin: const EdgeInsets.only(
                          right: 15,
                        ),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          ),
                          color: Colors.white,
                        ),
                        child: Text(
                          '\$31.00',
                          textAlign: TextAlign.start,
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: SizedBox(
              width: screenSize.width / 2,
              child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  index == 0
                      ? 'assets/images/plant_1.png'
                      : 'assets/images/plant_2.png',
                  alignment: Alignment.topLeft,
                  height: screenSize.height / 3.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}