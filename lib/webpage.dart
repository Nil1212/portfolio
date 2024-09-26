import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:web_portfolio/Component/footer.dart';
import 'package:web_portfolio/Component/home.dart';
import 'package:web_portfolio/Component/service.dart';
import 'package:web_portfolio/Component/skill.dart';
import 'package:web_portfolio/Styles/styles.dart';
import 'Component/about.dart';
import 'Component/contact.dart';
import 'Component/header.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.white,
        endDrawer: const MyDrawer(),
        body: Stack(
          children: [
            Positioned.fill(
              top: 80,
              child: SingleChildScrollView(
                controller: context.scrollController,
                child: const Column(
                  children: [
                    Home(),
                    SizedBox(height: 20),
                    About(),
                    SizedBox(height: 20),
                    Skill(),
                    SizedBox(height: 20),
                    Contact(),
                    SizedBox(height: 20),
                    Service(),
                    SizedBox(height: 80),
                    Footer(),
                  ],
                ),
              ),
            ),
            const Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Header(),
            ),
          ],
        ),
      ),
    );
  }
}


