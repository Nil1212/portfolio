import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
class Telegram extends StatelessWidget {
  const Telegram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: context.scrollController,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 80),
          child: Column(
            children: [
              FadeIn(
                globalKey: GlobalKey(),
                child: const CustomInfo(name: 'Fade In' ,color: Colors.yellowAccent,),
              ),
              const SizedBox(height: 20),
              FadeInDown(
                globalKey: GlobalKey(),
                delay: 200.ms,
                child: const CustomInfo(name: 'Fade In Down',color: Colors.blue,),
              ),
              const SizedBox(height: 20),
              FadeInUp(
                globalKey: GlobalKey(),
                delay: 400.ms,
                child: const CustomInfo(name: 'Fade In Up',color: Colors.tealAccent,),
              ),
              const SizedBox(height: 20),
              FadeInLeft(
                globalKey: GlobalKey(),
                delay: 600.ms,
                child: const CustomInfo(name: 'Fade In Left',color: Colors.brown,),
              ),
              const SizedBox(height: 20),
              FadeInRight(
                globalKey: GlobalKey(),
                delay: 200.ms,
                child: const CustomInfo(name: 'Fade In Right',color: Colors.green,),
              ),
              const SizedBox(height: 20),
              const Divider(),
              FadeOut(
                globalKey: GlobalKey(),
                delay: 400.ms,
                child: const CustomInfo(name: 'Fade Out',color: Colors.yellowAccent,),
              ),
              const SizedBox(height: 20),
              FadeOutUp(
                globalKey: GlobalKey(),
                delay: 600.ms,
                child: const CustomInfo(name: 'Fade Out Up',color: Colors.yellowAccent,),
              ),
              const SizedBox(height: 20),
              FadeOutDown(
                globalKey: GlobalKey(),
                delay: 800.ms,
                child: const CustomInfo(name: 'Fade Out Down',color: Colors.yellowAccent,),
              ),
              const SizedBox(height: 20),
              FadeOutLeft(
                globalKey: GlobalKey(),
                delay: 400.ms,
                child: const CustomInfo(name: 'Fade Out Left',color: Colors.yellowAccent,),
              ),
              const SizedBox(height: 20),
              FadeOutRight(
                globalKey: GlobalKey(),
                delay: 600.ms,
                child: const CustomInfo(name: 'Fade Out Right',color: Colors.yellowAccent,),
              ),
              const SizedBox(height: 220),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomInfo extends StatelessWidget {
  const CustomInfo({super.key, required this.name,required this.color});

  final String name;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 600,
      color: color,
      child: Text(name),
    );
  }
}
