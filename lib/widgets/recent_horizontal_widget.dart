import 'package:ez_plant_app/constants.dart';
import 'package:ez_plant_app/shapes_clippers/dual_color_painter.dart';
import 'package:flutter/material.dart';

class RecentViewedWidget extends StatelessWidget {
  const RecentViewedWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: 50,
      width: screenSize.width / 1.75,
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CustomPaint(
              size: const Size(50, 50),
              painter: DualColorPainter(
                color: index == 0 ? AppColors.orange : AppColors.blue,
              ),
              child: Container(
                padding: const EdgeInsets.all(5),
                width: 50,
                height: 50,
                child: Image.asset(
                  index == 0
                      ? 'assets/images/rect_pot_1.png'
                      : 'assets/images/rect_pot_2.png',
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Calathea',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
              ),
              Text(
                'Its spines don\'t grow',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
