import 'package:find_your_cluster/constants/routing_constants.dart';
import 'package:find_your_cluster/styles/text_field_decorator.dart';
import 'package:find_your_cluster/styles/text_style.dart';
import 'package:flutter/material.dart';

class OnboardUser extends StatefulWidget {
  const OnboardUser({super.key});
  @override
  State<OnboardUser> createState() => _OnboardUserState();
}

class _OnboardUserState extends State<OnboardUser> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50, right: 20, left: 20),
                  child: Text(
                    'Tell us about yourself',
                    textAlign: TextAlign.left,
                    style: headingStyle(),
                  ),
                ),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextField(
                              decoration: textFieldDecorator(label: "Name")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextField(
                              decoration:
                                  textFieldDecorator(label: "email address")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextField(
                              decoration: textFieldDecorator(label: "Github")),
                        ),
                      ],
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).pushNamed(userPreferencesRoute);
                    }
                  },
                  child: Text(
                    'Create Profile !',
                    style: buttonTextStyle(),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
