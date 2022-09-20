import 'package:flutter/material.dart';

class DrawerSection extends StatelessWidget {
  const DrawerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      color: Theme.of(context).primaryColor,
      width: double.infinity,
      height: screenSize.height,
      // child: Container(
      //   width: 200,
      //   height: 500,
      //   color: Colors.amber,
      // ),
    );
  }
}
