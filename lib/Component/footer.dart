import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/Styles/styles.dart';
class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      decoration: BoxDecoration(
        color: MyColors.main,
      ),
      child:   FadeInDown(
        repeat: true,
        globalKey: GlobalKey(),
        duration: const Duration(milliseconds: 600),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'VOEURN Nil',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(
                  '\u00a9CodeFluc',
                  style: GoogleFonts.oswald(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: 1,
                    height: 25,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'codefluc15@gmail.com',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 200,
              child: Divider(
                height: 1,
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Preah Netr Preah , BanteayMeanChey, Cambodia',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.facebook_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),const SizedBox(width: 15),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.tiktok_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                const SizedBox(width: 15),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.telegram_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),

           const SizedBox(height: 30),
          ],

        ),
      ),
    );
  }
}
