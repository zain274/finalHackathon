import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:taskcytrackerapp/views/Signin.dart';



class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
  
}

class _SliderScreenState extends State<SliderScreen> {
    final introKey = GlobalKey<IntroductionScreenState>();
void _onIntroEnd(context) {
    // // Navigator.of(context).pushReplacement(
    // //   MaterialPageRoute(builder: (_) => const HomePage()),
    // );
  }


  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);


  }
  @override
  Widget build(BuildContext context) {
  const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      infiniteAutoScroll: true,
     

      pages: [
        PageViewModel(
          title: "Task Managment" ,
          body:
              "Work more Stucterd and Organizated",
          image:   Image.asset("assets/images/Firstpage.png",height: Get.height *.3,  ),
          decoration: pageDecoration,
        ),

         PageViewModel(
          title: "Task Managment" ,
          body:
              "Manage Your Tasks quicky for Results",
          image:   Image.asset("assets/images/Secondpage.png",height: Get.height *.3, ),
          decoration: pageDecoration,
        ),


          PageViewModel(
          title: "Task Managment" ,
          body:
              "Lets create a space for your workflows",
          image:   Image.asset("assets/images/Thirdpage.png",height: Get.height *.3,  ),
          decoration: pageDecoration,
        ),
      ],
onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      // done: ElevatedButton(
        
      //   child: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600))),

      done: ElevatedButton(onPressed: () {
        Get.to(Signin());
      }, child: Text("Done",style: TextStyle(fontWeight: FontWeight.w600),)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}

  