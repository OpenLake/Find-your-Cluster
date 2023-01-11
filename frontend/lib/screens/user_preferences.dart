import 'package:flutter/material.dart';

class UserPreferences extends StatefulWidget {
  const UserPreferences({super.key});
  @override
  State<UserPreferences> createState() => _UserPreferencesState();
}

class _UserPreferencesState extends State<UserPreferences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('User'),
      ),
    );
  }
}
