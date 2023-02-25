import 'package:glory_apps/main_app/app/home_app/services/input_service_app/input_services_app.dart';
import 'package:glory_apps/main_app/app/home_app/services/data_service_app/data_service_app.dart';
import 'package:glory_apps/main_app/app/home_app/services/admin_panel_app/admin_panel_app.dart';
import 'package:glory_apps/main_app/main_app_theme.dart';
import 'package:glory_apps/main_app/models/menu_service_data.dart';
import 'package:glory_apps/main.dart';
import 'package:flutter/material.dart';

class MainMenuListView extends StatefulWidget {
  const MainMenuListView(
      {Key? key, this.mainScreenAnimationController, this.mainScreenAnimation})
      : super(key: key);

  final AnimationController? mainScreenAnimationController;
  final Animation<double>? mainScreenAnimation;

  @override
  // ignore: library_private_types_in_public_api
  _MainMenuListViewState createState() => _MainMenuListViewState();
}

class _MainMenuListViewState extends State<MainMenuListView>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  List<MenuServiceData> menuServiceData = MenuServiceData.tabIconsList;

  Widget tabBody = Container(
    color: MainAppTheme.background,
  );

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 10));
    return true;
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.mainScreenAnimationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: widget.mainScreenAnimation!,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 30 * (1.0 - widget.mainScreenAnimation!.value), 0.0),
            child: SizedBox(
              height: 216,
              width: double.infinity,
              child: ListView.builder(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 0, right: 16, left: 16),
                itemCount: menuServiceData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  final int count =
                      menuServiceData.length > 10 ? 10 : menuServiceData.length;
                  final Animation<double> animation =
                      Tween<double>(begin: 0.0, end: 1.0).animate(
                          CurvedAnimation(
                              parent: animationController!,
                              curve: Interval((1 / count) * index, 1.0,
                                  curve: Curves.fastOutSlowIn)));
                  animationController?.forward();
                  return InkWell(
                    onTap: () {
                      if (index == 0) {
                        animationController?.reverse().then<dynamic>((data) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InputServiceApp(
                                      animationController:
                                          animationController)));
                        });
                      } else if (index == 1) {
                        animationController?.reverse().then<dynamic>((data) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DataServiceApp(
                                      animationController:
                                          animationController)));
                        });
                      } else if (index == 2) {
                        animationController?.reverse().then<dynamic>((data) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdminPanelApp(
                                      animationController:
                                          animationController)));
                        });
                      }
                    },
                    child: MainMenu(
                      menuServiceData: menuServiceData[index],
                      animation: animation,
                      animationController: animationController!,
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu(
      {Key? key,
      this.menuServiceData,
      this.animationController,
      this.animation})
      : super(key: key);

  final MenuServiceData? menuServiceData;
  final AnimationController? animationController;
  final Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: Transform(
            transform: Matrix4.translationValues(
                100 * (1.0 - animation!.value), 0.0, 0.0),
            child: SizedBox(
              width: 130,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 32, left: 8, right: 8, bottom: 16),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: HexColor(menuServiceData!.endColor)
                                  .withOpacity(0.6),
                              offset: const Offset(1.1, 4.0),
                              blurRadius: 8.0),
                        ],
                        gradient: LinearGradient(
                          colors: <HexColor>[
                            HexColor(menuServiceData!.startColor),
                            HexColor(menuServiceData!.endColor),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(54.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 54, left: 16, right: 16, bottom: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              menuServiceData!.titleTxt,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontFamily: MainAppTheme.fontName,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                letterSpacing: 0.2,
                                color: MainAppTheme.white,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, bottom: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      menuServiceData!.ket!.join('\n'),
                                      style: const TextStyle(
                                        fontFamily: MainAppTheme.fontName,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        letterSpacing: 0.2,
                                        color: MainAppTheme.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: MainAppTheme.nearlyWhite,
                                shape: BoxShape.circle,
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: MainAppTheme.nearlyBlack
                                          .withOpacity(0.4),
                                      offset: const Offset(8.0, 8.0),
                                      blurRadius: 8.0),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Icon(
                                  Icons.add,
                                  color: HexColor(menuServiceData!.endColor),
                                  size: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 84,
                      height: 84,
                      decoration: BoxDecoration(
                        color: MainAppTheme.nearlyWhite.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 8,
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.asset(menuServiceData!.imagePath),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
