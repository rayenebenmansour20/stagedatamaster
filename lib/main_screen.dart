import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child:Row(
          children: [
            Expanded(
              // par default le flex c'est 1 et ca prend 1/6 de l'écran
              child: Column(
                children: [
                  DrawerHeader(
                    child: Image.asset("./assets/images/logo.png") ,
                    ),
                  DrawerListTile(
                  title: "Dashboard",
                  svgSrc: "./assets/icons/menu_dashbord.svg",
                  press:(){},
                  ),
                  DrawerListTile(
                  title: "Produits",
                  svgSrc: "./assets/icons/menu_dashbord.svg",
                  press:(){},
                  ),
                  DrawerListTile(
                  title: "Commandes",
                  svgSrc: "./assets/icons/menu_dashbord.svg",
                  press:(){},
                  ),
                  DrawerListTile(
                  title: "Clients",
                  svgSrc: "./assets/icons/menu_dashbord.svg",
                  press:(){},
                  ),
                  DrawerListTile(
                  title: "Stock",
                  svgSrc: "./assets/icons/menu_dashbord.svg",
                  press:(){},
                  ),
                  DrawerListTile(
                  title: "Historique",
                  svgSrc: "./assets/icons/menu_dashbord.svg",
                  press:(){},
                  ),
                  
                ],
              ),
                ),
            Expanded(
              flex:5,
              child: Container(
                color:Colors.blue,
              ),)    
          ],
        )
      ),
    );
        }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title, required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title,svgSrc;
  final VoidCallback press;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading:SvgPicture.asset(
        svgSrc ,
      color:Colors.yellow,
      height:16,),
      title:Text(
        title,
        style:TextStyle(color:Colors.white54),
      ),
      );

  }
}