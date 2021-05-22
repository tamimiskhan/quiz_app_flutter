import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app_flutter/screens/quiz/components/body.dart';

class QuizSceen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(
            onPressed: () {},
            child: Text('Skip'),
          )
        ],
      ),
      body: Body(),
    );
  }
}


