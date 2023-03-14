import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:venteassister/composants/Sidemenu.dart';
import 'package:venteassister/dashboard/dashboard_screen.dart';

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child:Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              // par default le flex c'est 1 et ca prend 1/6 de l'écran
              child: Sidemenu(),
                ),
            Expanded(
              flex:5,
              child:DashboardScreen() )    
          ],
        )
      ),
    );
        }
}