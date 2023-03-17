import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sidemenu extends StatefulWidget {
  const Sidemenu({
    Key? key,
  }) : super(key: key);

  @override
  _SidemenuState createState() => _SidemenuState();
}

class _SidemenuState extends State<Sidemenu> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    //return LayoutBuilder(
     // BuildContext context, BoxConstraints Constraints)
    // pour que le drawer deffile on doit ajouter return scaffold et drawer:Drawer
    return Drawer(
      child: SingleChildScrollView(
        child: Column(  
          children: [
            DrawerHeader(
              child: Image.asset("./assets/images/datamasterlogo.png",
              width:100,
              height:100,),

            ),
            DrawerListTile(
              title: "Dashboard",
              svgSrc: "./assets/icons/home.svg",
              press: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              selected: _selectedIndex == 0,
            ),
            DrawerListTile(
              title: "Produits",
              svgSrc: "./assets/icons/product.svg",
              press: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              selected: _selectedIndex == 1,
            ),
            DrawerListTile(
              title: "Commandes",
              svgSrc: "./assets/icons/order.svg",
              press: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              selected: _selectedIndex == 2,
            ),
            DrawerListTile(
              title: "Clients",
              svgSrc: "./assets/icons/useravatar.svg",
              press: () {
                setState(() {
                  _selectedIndex = 3;
                });
              },
              selected: _selectedIndex == 3,
            ),
            DrawerListTile(
              title: "Stock",
              svgSrc: "./assets/icons/icons8-box-128.svg",
              press: () {
                setState(() {
                  _selectedIndex = 4;
                });
              },
              selected: _selectedIndex == 4,
            ),
            DrawerListTile(
              title: "Historique",
              svgSrc: "./assets/icons/menu_dashbord.svg",
              press: () {
                setState(() {
                  _selectedIndex = 5;
                });
              },
              selected: _selectedIndex == 5,
            ),
            SizedBox(height: 180),
            DrawerListTile(
              title: "Paramètres",
              svgSrc: "./assets/icons/menu_dashbord.svg",
              press: () {
                setState(() {
                  _selectedIndex = 6;
                });
              },
              selected: _selectedIndex == 6,

            ),
            DrawerListTile(
              title: "Déconnexion",
              svgSrc: "./assets/icons/menu_dashbord.svg",
              press: () {
                setState(() {
                  _selectedIndex = 7;
                });
              },
              selected: _selectedIndex == 7,

            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
    this.selected = false,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        color: selected ? Colors.white : null,
        child: ListTile(
          horizontalTitleGap: 0.0,
          leading: SvgPicture.asset(
            svgSrc,
            color: selected ? Colors.blue : Colors.white,
            height: 20,
          ),
          title: Text(
            title,
            style: TextStyle(
              color: selected ? Colors.blue : Colors.white,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}