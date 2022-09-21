import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerSection extends StatelessWidget {
  const DrawerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: Theme.of(context).primaryColor,
        width: double.infinity,
        height: screenSize.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerLeft,
                  iconSize: 25,
                  icon: const FaIcon(FontAwesomeIcons.solidCircleXmark),
                  color: Colors.grey[300],
                  onPressed: () {
                    ZoomDrawer.of(context)?.close();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(2),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: Image.network(
                          'https://flxt.tmsimg.com/assets/71364_v9_bb.jpg',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Evelyn Luna',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.white.withAlpha(220),
                      ),
                ),
                Text(
                  'evelynluna@gmail.com',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white.withAlpha(180),
                      ),
                ),
              ],
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                DrawerItem(
                  icon: FontAwesomeIcons.house,
                  label: 'Home',
                ),
                SizedBox(
                  height: 20,
                ),
                DrawerItem(
                  icon: Icons.local_offer,
                  label: 'Promotions',
                ),
                SizedBox(
                  height: 20,
                ),
                DrawerItem(
                  icon: FontAwesomeIcons.creditCard,
                  label: 'Payment',
                ),
                SizedBox(
                  height: 20,
                ),
                DrawerItem(
                  icon: FontAwesomeIcons.userGear,
                  label: 'Invite a Friend',
                ),
                SizedBox(
                  height: 20,
                ),
                DrawerItem(
                  icon: FontAwesomeIcons.solidCircleQuestion,
                  label: 'Help & Support',
                ),
                SizedBox(
                  height: 20,
                ),
                DrawerItem(
                  icon: FontAwesomeIcons.gear,
                  label: 'Settings',
                ),
              ],
            ),
            const Expanded(
              flex: 2,
              child: SizedBox(),
            ),
            Column(
              children: const [
                DrawerItem(
                  icon: FontAwesomeIcons.arrowRightFromBracket,
                  label: 'Logout',
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FaIcon(
            icon,
            color: Colors.white,
            size: 15,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white.withAlpha(200),
                ),
          ),
        ],
      ),
    );
  }
}
