import 'package:flutter/material.dart';
import 'package:get/utils.dart';
class SplashViewBody extends StatefulWidget {
  @override
  _SplashViewBodyState createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  AnimationController? animationController ;
  Animation<double>? fadingAnimation;
  @override
  void initState() {super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 2000));
    fadingAnimation= Tween<double>(begin: .2, end: 1).animate(animationController!);
    animationController!.repeat(reverse: true);
    goToNextView();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController?.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Spacer(), 
          FadeTransition(
            opacity: fadingAnimation!,
            child: Text('Fruit Market',
        style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 51,
            fontWeight: FontWeight.bold,
            color: const Color(0xffffffff),
        ),
      ),
          ),
          Image.asset('assets/image/mix_fruit_png_11.png')
        ],
      ),
    );
  }
  void goToNextView(){
    Future.delayed(Duration(seconds: 3), (){
    });
  }
}
