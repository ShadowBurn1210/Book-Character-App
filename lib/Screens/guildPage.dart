import 'package:apartment_housting/Models/app_constants.dart';
import 'package:flutter/material.dart';

class AppartmentPage extends StatefulWidget {

  AppartmentPage({super.key, required this.title});

  final String title;

  @override
  State<AppartmentPage> createState() => _AppartmentPageState();
}

class _AppartmentPageState extends State<AppartmentPage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          "Appartment Page"
      ),
    );
  }
}