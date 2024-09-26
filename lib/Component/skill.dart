import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import '../Styles/styles.dart';
import 'header.dart';

class Skill extends StatelessWidget {
  const Skill({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_,constraints){
      if(constraints.maxWidth >=755){
        return const SkillMax();
      } else {
      return const SkillMin();
      }
    });
  }
}


///Skill Min
class SkillMin extends StatelessWidget {
  const SkillMin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: skillKey,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 45),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 650,
                    minWidth: 300,
                  ),
                  child:  FadeInLeft(
                    repeat: true,
                    globalKey: GlobalKey(),
                    duration: const Duration(milliseconds: 800),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Experience',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 15),
                          Text(
                              style: TextStyle(fontSize: 18),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              maxLines: 20,
                              "Hi, I'm NIL, a Flutter developer with a deep love for creating apps that solve real-world problems. With 3 years of experience and expertise in technologies like Hive, Firebase, and REST APIs, I’ve built apps ranging from e-commerce solutions to travel guides. I thrive on turning creative ideas into functional, visually appealing apps that users love. In my free time, I enjoy traveling and drawing inspiration from new cultures for my projects. Let’s connect and create something amazing!"),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                FadeInRight(
                  globalKey: GlobalKey(),
                  repeat: true,
                  duration: const Duration(milliseconds: 400),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 650,
                      minWidth: 300,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 40),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'My Skill',
                            style: TextStyle(
                                fontSize: 25,
                                color: MyColors.main,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20), // Add spacing
                          /// Mobile Application
                          const RankSkill(
                              skill: 'Mobile App Development', percent: 0.7,text: '70%'),

                          /// Web Static
                          const RankSkill(skill: 'Web Static', percent: 0.9,text: '90%'),

                          /// Web Development
                          const RankSkill(skill: 'Web Development', percent: 0.6,text: '60%'),

                          /// System
                          const RankSkill(skill: 'Web System', percent: 0.5,text: '50%'),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
///Skill Max
class SkillMax extends StatelessWidget {
  const SkillMax({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: skillKey,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 45),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                FadeInLeft(
                  globalKey: GlobalKey(),
                  repeat: true,
                  duration: const Duration(milliseconds: 800),
                   child: Container(
                     width: MediaQuery.of(context).size.width / 2.2,
                    padding:const EdgeInsets.symmetric(horizontal: 20),
                    child:const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Experience',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 15),
                        Text(
                            style: TextStyle(fontSize: 18),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            maxLines: 20,
                            "Hi, I'm NIL, a Flutter developer with a deep love for creating apps that solve real-world problems. With 3 years of experience and expertise in technologies like Hive, Firebase, and REST APIs, I’ve built apps ranging from e-commerce solutions to travel guides. I thrive on turning creative ideas into functional, visually appealing apps that users love. In my free time, I enjoy traveling and drawing inspiration from new cultures for my projects. Let’s connect and create something amazing!"),
                      ],
                    ),
                                   ),
                 ),
                const SizedBox(height: 35),
                FadeInRight(
                  globalKey: GlobalKey(),
                  repeat: true,
                  duration: const Duration(milliseconds: 400),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 40),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'My Skill',
                          style: TextStyle(
                              fontSize: 25,
                              color: MyColors.main,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20), // Add spacing
                        /// Mobile Application
                        const RankSkill(
                            skill: 'Mobile App Development', percent: 0.7,text: '70%'),
                  
                        /// Web Static
                        const RankSkill(skill: 'Web Static', percent: 0.9,text: '90%'),
                  
                        /// Web Development
                        const RankSkill(skill: 'Web Development', percent: 0.6,text: '60%'),
                  
                        /// System
                        const RankSkill(skill: 'Web System', percent: 0.5,text: '50%'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}

class RankSkill extends StatelessWidget {
  const RankSkill({
    super.key,
    required this.skill,
    required this.text,
    required this.percent,
  });
  final String skill,text;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skill,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                  color: MyColors.xMain.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: FractionallySizedBox(
                    widthFactor: percent,
                    child: Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: MyColors.main,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
            ),
             Padding(
              padding:const EdgeInsets.symmetric(horizontal: 20),
              child: Text(text),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
