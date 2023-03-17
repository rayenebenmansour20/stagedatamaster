import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:venteassister/constants.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Container(
      /*decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
          color:Colors.grey.withOpacity(0.5),
          spreadRadius:5,
          blurRadius: 7,
          offset: Offset(0, 3)
          ),
        ],
        color:Colors.grey[200],        
      ),*/
      child: Row(
        children: [
          Expanded(
            child:SearchField()),
            notificationicon(),
            //Profilcard(),
        ],
    
      ),
      
    );
  }
}

class Profilcard extends StatelessWidget {
  const Profilcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding:EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding/2),
      decoration: BoxDecoration(color:Colors.white,borderRadius: const BorderRadius.all(Radius.circular(10)),
      border: Border.all(color:Colors.white10)
      ), 
      child: Row(children: [
        Image.asset("./assets/images/blackman.png",height: 46,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:defaultPadding/2),
          child: Text("Rayeneben",
          style:TextStyle(color:Colors.blue)), 
        ),
        Icon(Icons.keyboard_arrow_down,color:Colors.blue)
      ],),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration:InputDecoration(
      hintText: "Search",  
      hintStyle: TextStyle(color:Colors.blue),
      fillColor: Colors.white ,
      filled:true,
      border:OutlineInputBorder(borderSide: BorderSide.none,borderRadius: const BorderRadius.all(Radius.circular(10))),
    suffixIcon:InkWell(
       onTap:(){} ,
        child: Container(
        padding: EdgeInsets.all(defaultPadding*0.75),
        margin:EdgeInsets.symmetric(horizontal: defaultPadding/2),
      decoration: BoxDecoration(
        color:Colors.blue,
        borderRadius:const BorderRadius.all(Radius.circular(10)),
        ),
      child:SvgPicture.asset("./assets/icons/Search.svg")
        ),
    ),
      ),
    );
  }
}


class notificationicon extends StatelessWidget{
  const notificationicon({
    super.key,
    int counter =0,
  });


  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
      IconButton(
        onPressed: (){
          debugPrint('Notificationbar');
        } ,
        icon:Stack(
          children:<Widget>[
            CircleAvatar(
            radius:100,  
            backgroundColor:Colors.white,
            child:Icon(Icons.notifications,
            color:Colors.black)),
            Positioned(
              left:16,
              bottom: 15,
              child: Icon(Icons.brightness_1 ,
              color:Colors.red,
              size:9))
          ]
        ),), 


      ],
    );
  }
}
  
