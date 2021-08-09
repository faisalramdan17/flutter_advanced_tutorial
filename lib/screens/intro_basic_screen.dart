import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroBasicScreen extends StatelessWidget {
  const IntroBasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PageViewModel> listPagesViewModel = <PageViewModel>[
      PageViewModel(
        title: "Title of first page",
        body:
            "Here you can write the description of the page, to explain someting...",
        image: Center(
          child: Image.asset("assets/intro-screen/img1.jpg", height: 175.0),
        ),
      ),
      PageViewModel(
        title: "Title of first page",
        body:
            "Here you can write the description of the page, to explain someting...",
        image: Center(
            child: Image.asset("assets/intro-screen/img2.jpg", height: 175.0)),
        decoration: const PageDecoration(
          pageColor: Colors.blue,
        ),
      ),
      PageViewModel(
        title: "Title of first page",
        body:
            "Here you can write the description of the page, to explain someting...",
        image: const Center(child: Icon(Icons.android)),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(color: Colors.orange),
          bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
        ),
      ),
      PageViewModel(
        title: "Title of first page",
        body:
            "Here you can write the description of the page, to explain someting...",
        image: const Center(child: Icon(Icons.android)),
        footer: ElevatedButton(
          onPressed: () {
            // On button presed
          },
          child: const Text("Let's Go !"),
        ),
      ),
      PageViewModel(
        title: "Title of first page",
        bodyWidget: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Click on "),
            Icon(Icons.edit),
            Text(" to edit a post"),
          ],
        ),
        image: const Center(child: Icon(Icons.android)),
      ),
    ];

    return IntroductionScreen(
      pages: listPagesViewModel,
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () {
        // When done button is press
      },
      // onSkip: () {
      //   // You can also override onSkip callback
      // },
      next: Icon(Icons.navigate_next),
      showSkipButton: true,
      skip: const Text("Skip"),
      color: Colors.orange,
      skipColor: Colors.red,
      doneColor: Colors.green,
      nextColor: Colors.blue,
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: Theme.of(context).accentColor,
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    ); //Material App;
  }
}
