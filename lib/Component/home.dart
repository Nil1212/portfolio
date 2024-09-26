import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/Styles/styles.dart';
import 'header.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: homeKey,
      color: MyColors.main,
      width: double.infinity,
      height: MediaQuery.of(context).size.height - 80,
      child: Stack(
        children: [
          /// Image
           Positioned.fill(
            child: FadeIn(
              repeat: true,
              globalKey: GlobalKey(),
              duration: const Duration(milliseconds: 800),
              child: const Image(
                image: AssetImage('assets/images/IMG_6612.jpg'),
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          ///Text
          Positioned.fill(
            child: Container(
              color: MyColors.xMain.withOpacity(0.7),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: FadeInUp(
                globalKey: GlobalKey(),
                repeat: true,
                duration: const Duration(milliseconds: 800),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    whiteText("Hello", 43),
                    whiteText('I am VOEURN Nil', 43),
                    whiteText('Welcome to My Bloc', 43),
                    whiteText('You all can download my CV for see detail about me', 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: MyColors.white,
                          padding:const EdgeInsets.symmetric(horizontal: 25,vertical: 18),
                        ),
                        onPressed: () {},
                        child: Text('Download CV',
                          style: TextStyle(
                            color: MyColors.main,
                            fontSize: 18
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Text whiteText(String text, double fontSize) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: GoogleFonts.poppins(
        color: MyColors.white,
        fontSize: fontSize,
      ),
    );
  }
}
