import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'header.dart';

class Service extends StatelessWidget {
  const Service({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      key: serviceKey,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('My Services',
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height:20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              FadeInUp(
                globalKey: GlobalKey(),
                repeat: true,
                duration: const Duration(milliseconds: 400),
                child:const ServicesWidgets(
                  image: 'assets/images/webDesign.png',
                      name: 'Web Design',
                  details: 'We create visually stunning, user-centric websites that represent your brand and engage your audience effectively',
                ),
              ),
              FadeInUp(
                globalKey: GlobalKey(),
                duration: const Duration(milliseconds: 600),
                repeat: true,
                child: const ServicesWidgets(
                  image: 'assets/images/webDevelop.png',
                      name: 'Web Development',
                  details: ' Our team builds dynamic, responsive websites using the latest technologies to ensure optimal performance across all devices.',
                ),
              ),
              FadeInUp(
                globalKey: GlobalKey(),
                duration: const Duration(milliseconds: 800),
                repeat: true,
                child: const ServicesWidgets(
                  image: 'assets/images/software_development.png',
                      name: 'System Development',
                  details: 'We design and develop custom systems that streamline processes and enhance the efficiency of your business operations.',
                ),
              ),
              FadeInUp(
                globalKey: GlobalKey(),
                repeat: true,
                duration: const Duration(milliseconds: 900),
                child: const ServicesWidgets(
                  image: 'assets/images/app.png',
                      name: 'MobileApp Development',
                  details: 'From concept to launch, we create intuitive and feature-rich mobile applications that offer seamless user experiences on Android and iOS',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ServicesWidgets extends StatelessWidget {
  const ServicesWidgets({
    super.key, required this.name, required this.details, required this.image,
  });
  final String name,details, image;

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(1),
              child: Image(
                image: AssetImage(image),
                width: double.infinity,
                fit: BoxFit.fill,
                height: 350,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Text(
              name,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all( 25),
            child: Text(
                details,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
