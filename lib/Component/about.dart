import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'header.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_,constrains){
      if(constrains.maxWidth >=755) {
        return const AboutMax();
      } else {
        return const AboutMin();
      }
    });
  }
}

///Max About
class AboutMax extends StatelessWidget {
  const AboutMax({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: aboutKey,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const SizedBox(height: 20),
          FadeInUp(
            globalKey: GlobalKey(),
            duration: const Duration(milliseconds: 400),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(1, 1),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(1),
                      child: const Image(
                        image: AssetImage(
                            'assets/images/photo_2023-09-01_07-37-35.jpg'),
                        width: double.infinity,
                        height: 400,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.2,

                    child: Container(
                      padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'About Me',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 15),
                          Text(
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.start,
                              " Hi, I'm NIL, a Flutter developer with a deep love for creating apps that solve real-world problems. With 3 years of experience and expertise in technologies like Hive, Firebase, and REST APIs, I’ve built apps ranging from e-commerce solutions to travel guides. I thrive on turning creative ideas into functional, visually appealing apps that users love. In my free time, I enjoy traveling and drawing inspiration from new cultures for my projects. Let’s connect and create something amazing!"),
                          SizedBox(height: 35),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

///Min About
class AboutMin extends StatelessWidget {
  const AboutMin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: aboutKey,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const SizedBox(height: 20),
          FadeInUp(
            globalKey: GlobalKey(),
            duration: const Duration(milliseconds: 400),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(1, 1),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(1),
                      child: const Image(
                        image: AssetImage(
                            'assets/images/photo_2023-09-01_07-37-35.jpg'),
                        width: double.infinity,
                        height: 400,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  FadeInUp(
                    globalKey: GlobalKey(),
                    duration: const Duration(milliseconds: 800),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'About Me',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 15),
                            Text(
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.start,
                                " Hi, I'm NIL, a Flutter developer with a deep love for creating apps that solve real-world problems. With 3 years of experience and expertise in technologies like Hive, Firebase, and REST APIs, I’ve built apps ranging from e-commerce solutions to travel guides. I thrive on turning creative ideas into functional, visually appealing apps that users love. In my free time, I enjoy traveling and drawing inspiration from new cultures for my projects. Let’s connect and create something amazing!"),
                            SizedBox(height: 35),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
