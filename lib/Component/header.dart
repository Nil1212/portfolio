import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/Styles/styles.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constrains) {
        if (constrains.maxWidth >= 880) {
          return const HeaderMax();
        } else {
          return const HeaderMin();
        }
      },
    );
  }
}

///MaxWidth
class HeaderMax extends StatefulWidget {
  const HeaderMax({
    super.key,
  });

  @override
  State<HeaderMax> createState() => _HeaderMaxState();
}

final homeKey = GlobalKey();

final aboutKey = GlobalKey();

final contactKey = GlobalKey();

final serviceKey = GlobalKey();

final skillKey = GlobalKey();

class _HeaderMaxState extends State<HeaderMax> {
  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: MyColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child:   FadeInDown(
        globalKey: GlobalKey(),
        duration: const Duration(milliseconds: 600),
        child: Row(
          children: [
            Container(
              width: 300,
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
              ),
              child: Text(
                'CodeFluc',
                style: GoogleFonts.oswald(
                  textStyle: TextStyle(
                    color: MyColors.main,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Menu(name: 'Home',onTap: (){
                      scrollToSection(homeKey);
                    },),
                    Menu(name: 'About',onTap: (){
                      scrollToSection(aboutKey);
                    },),
                    Menu(name: 'Skill',onTap: (){
                      scrollToSection(skillKey);
                    },),
                    Menu(name: 'Contact',onTap: (){
                      scrollToSection(contactKey);
                    },),
                    Menu(name: 'Service',onTap: (){
                      scrollToSection(serviceKey);
                    },),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///MinWidth
class HeaderMin extends StatelessWidget {
  const HeaderMin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: MyColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
          right: MediaQuery.of(context).size.width * 0.05,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 300,
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
              ),
              child: GestureDetector(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    'CodeFluc',
                    style: GoogleFonts.oswald(
                      textStyle: TextStyle(
                        color: MyColors.main,
                        fontSize: 35,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 50,
              height: 50,
              child: IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: const Icon(Icons.menu_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Menu Bar
class Menu extends StatelessWidget {
  const Menu({
    super.key,
    required this.name,
    this.onTap,
  });
  final String name;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Text(
            name,
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: MyColors.main,
            ),
          ),
        ),
      ),
    );
  }
}

/// Drawer
class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut
    );
    Navigator.of(context).pop();
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Text(
              'CodeFluc',
              style: GoogleFonts.oswald(
                  textStyle: const TextStyle(
                    fontSize: 25,
                  )),
            ),
          ),
          DrawerMenu(name: 'Home', onPressed: () {
            scrollToSection(homeKey);
          }),
          DrawerMenu(name: 'About', onPressed: () {
            scrollToSection(aboutKey);
          }),
          DrawerMenu(name: 'Skill', onPressed: () {
            scrollToSection(skillKey);
          }),
          DrawerMenu(name: 'Contact', onPressed: () {
            scrollToSection(contactKey);
          }),
          DrawerMenu(name: 'Services', onPressed: () {
            scrollToSection(serviceKey);
          }),
        ],
      ),
    );
  }
}

/// Drawer Menu
class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    super.key,
    required this.name,
    required this.onPressed,
  });
  final String name;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
            bottom:
            BorderSide(color: Colors.grey.withOpacity(0.5), width: 0.5)),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          alignment: Alignment.centerLeft,
          foregroundColor: Colors.grey.withOpacity(0.1),
          padding: const EdgeInsets.symmetric(vertical: 30),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        onPressed: onPressed,
        child: Menu(name: name),
      ),
    );
  }
}
