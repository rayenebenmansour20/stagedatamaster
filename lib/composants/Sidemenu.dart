import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sidemenu extends StatelessWidget {
  const Sidemenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("./assets/images/logo.png") ,
            ),
            DrawerListTile(
              title: "Dashboard",
              svgSrc: "./assets/icons/home.svg",
              press:(){},
            ),
            DrawerListTile(
              title: "Produits",
              svgSrc: "./assets/icons/product.svg",
              press:(){},
            ),
            DrawerListTile(
              title: "Commandes",
              svgSrc: "./assets/icons/order.svg",
              press:(){},
            ),
            DrawerListTile(
              title: "Clients",
              svgSrc: "./assets/icons/useravatar.svg",
              press:(){},
            ),
            DrawerListTile(
              title: "Stock",
              svgSrc: "./assets/icons/icons8-box-128.svg",
              press:(){},
            ),
            DrawerListTile(  
              title: "Historique",
              svgSrc: "./assets/icons/menu_dashbord.svg",
              press:(){},
            ),
            SizedBox(height:180),
            DrawerListTile(
              title: "Paramètres",
              svgSrc: "./assets/icons/menu_dashbord.svg",
              press:(){},
            ),
            DrawerListTile(
              title: "Déconnexion",
              svgSrc: "./assets/icons/menu_dashbord.svg",
              press:(){},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatefulWidget {
  const DrawerListTile({
    Key? key,
    required this.title, required this.svgSrc,
    required this.press, 
  }) : super(key: key);

  final String title,svgSrc;
  final VoidCallback press;

  @override
  _DrawerListTileState createState() => _DrawerListTileState();
}

class _DrawerListTileState extends State<DrawerListTile> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _hovering = true;
        });
      },
      onExit: (event) {
        setState(() {
          _hovering = false;
        });
      },
      child: Container(
        color: _hovering ? Colors.white : null,
        child: ListTile(
          onTap: widget.press,
          horizontalTitleGap: 0.0,
          leading: SvgPicture.asset(
            widget.svgSrc,
            color: _hovering ? Colors.blue : Colors.white,
            height: 20,
          ),
          title: Text(
            widget.title,
            style: TextStyle(
              color: _hovering ? Colors.blue : Colors.white,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}