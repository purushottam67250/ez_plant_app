import 'package:ez_plant_app/widgets/custom_bottom_nav_bar.dart';
import 'package:ez_plant_app/widgets/recent_horizontal_widget.dart';
import 'package:ez_plant_app/widgets/recommended_horizontal_widget.dart';
import 'package:ez_plant_app/widgets/styled_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const CustomBottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: InkWell(
                      onTap: () {
                        ZoomDrawer.of(context)?.open();
                      },
                      child: const CircleAvatar(
                        foregroundImage: NetworkImage(
                          'https://flxt.tmsimg.com/assets/71364_v9_bb.jpg',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      right: 20,
                    ),
                    child: InkWell(
                      onTap: () {
                        // ZoomDrawer.of(context)?.open();
                      },
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        child: const FaIcon(
                          Icons.shopping_cart_outlined,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                  bottom: 20,
                ),
                child: Text(
                  'Let\'s find your\nplants!',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.headline3?.copyWith(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              const StyledTextInput(
                hint: 'Search Plants',
                prefixIcon: Icon(
                  Icons.search_rounded,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Chip(
                      label: Text(
                        'Recommended',
                        textAlign: TextAlign.start,
                        style:
                            Theme.of(context).textTheme.bodyText1?.copyWith(),
                      ),
                    ),
                    Chip(
                      backgroundColor: Colors.grey[100],
                      label: Text(
                        'Top',
                        textAlign: TextAlign.start,
                        style:
                            Theme.of(context).textTheme.bodyText2?.copyWith(),
                      ),
                    ),
                    Chip(
                      backgroundColor: Colors.grey[100],
                      label: Text(
                        'Indoor',
                        textAlign: TextAlign.start,
                        style:
                            Theme.of(context).textTheme.bodyText2?.copyWith(),
                      ),
                    ),
                    Chip(
                      backgroundColor: Colors.grey[100],
                      label: Text(
                        'Outdoor',
                        textAlign: TextAlign.start,
                        style:
                            Theme.of(context).textTheme.bodyText2?.copyWith(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: screenSize.height / 3.5 + 75,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: false,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  separatorBuilder: (context, index) {
                    return const VerticalDivider(
                      color: Colors.transparent,
                    );
                  },
                  itemBuilder: (context, index) {
                    return RecommendedHorizontalWidget(
                      index: index,
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                  bottom: 20,
                ),
                child: Text(
                  'Recent Viewed',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.headline3?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              SizedBox(
                height: 60,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: false,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  separatorBuilder: (context, index) {
                    return const VerticalDivider(
                      color: Colors.transparent,
                    );
                  },
                  itemBuilder: (context, index) {
                    return RecentViewedWidget(
                      index: index,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
