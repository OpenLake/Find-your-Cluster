import 'package:find_your_cluster/constants/routing_constants.dart';
import 'package:find_your_cluster/styles/text_style.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100),
              child: Text(
                'Find your cluster',
                textAlign: TextAlign.center,
                style: headingStyle(fontSize: 50),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Welcome!',
                      style: subHeadingStyle(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Ready to find your cluster ?',
                      style: bodyStyle(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(onBoardingRoute);
                    },
                    child: Text(
                      'Continue',
                      style: buttonTextStyle(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
