import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:venteassister/constants.dart';
import 'composants/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding:EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
          ],
        ),
      ),
    );
  }
}
