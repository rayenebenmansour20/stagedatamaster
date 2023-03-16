import 'package:flutter/material.dart';
import 'package:venteassister/Loginpage/colors.dart';
import 'package:venteassister/Loginpage/app_style.dart';
import 'package:venteassister/responsive.dart';
import '../main_screen.dart';
import 'app_icons.dart';
import 'package:venteassister/constants.dart';


class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: appcolors.backColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ResponsiveWidget.isSmallScreen(context) ? const SizedBox() : Expanded(
              child: Container(
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:AssetImage("assets/images/shopping-box.jpg"),
                    fit:BoxFit.cover)
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding:EdgeInsets.all(0),
                height: height,
                margin: EdgeInsets.symmetric(horizontal: ResponsiveWidget.isSmallScreen(context)? height * 0.032 : height * 0.12),
                decoration: BoxDecoration(
                  color: appcolors.backColor,
                 borderRadius: BorderRadius.circular(20), // add border radius
                  ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: height/4,),
                      Positioned(
                        right:0,
                        top:100,
                      child:Center(
                     child: Image.asset(
                            'assets/images/datamasterlogo.png',
                            fit: BoxFit.contain,
                            
                            height: 100,
                            // Adjust the fit property as per your requirement
                                  ),),),
                      SizedBox(height: height * 0.02),
                      SizedBox(height: height * 0.064),

                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text('Email',
                          style: ralewayStyle.copyWith(
                            fontSize: 12.0,
                            color: appcolors.blueDarkColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      Container(
                        height: 50.0,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                          color: appcolors.whiteColor,
                        ),
                        child: TextFormField(
                          style: ralewayStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: appcolors.blueDarkColor,
                            fontSize: 12.0,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: Stack(
                             children: [
                              Positioned.fill(
                                child: Container(
                                decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(4),
                                ),
                                ),
                                 ),
                               IconButton(
                                onPressed: () {},
                                 icon: ColorFiltered(
                                 colorFilter: ColorFilter.mode(
                                  Colors.white, 
                                 BlendMode.srcIn
                                 ),
                                child: Image.asset(AppIcons.emailIcon),
                                 ),
                                ),
                                  ],
                                ) ,

                            contentPadding: const EdgeInsets.only(top: 16.0,left: 36),
                            hintText: 'Entrer votre email',
                            hintStyle: ralewayStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              color: appcolors.blueDarkColor.withOpacity(0.5),
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.014),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text('Motdepasse',
                          style: ralewayStyle.copyWith(
                            fontSize: 12.0,
                            color: appcolors.blueDarkColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      Container(
                        height: 50.0,
                        width:width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: appcolors.whiteColor,
                        ),
                        child: TextFormField(

                          style: ralewayStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: appcolors.blueDarkColor,
                            fontSize: 12.0,
                          ),
                          obscureText: true,

                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: ColorFiltered(
                             colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),
                                child: IconButton(
                                 onPressed: (){},
                                  icon: Image.asset(AppIcons.eyeIcon),
                             ),
                           ),
                           suffixIcon: Stack(
                             children: [
                              Positioned.fill(
                                child: Container(
                                decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  width: 10,
                                  color:Colors.blue,
                                )
                                ),
                                ),
                                 ),
                               IconButton(
                                onPressed: () {},
                                 icon: ColorFiltered(
                                 colorFilter: ColorFilter.mode(
                                  Colors.white, 
                                 BlendMode.srcIn
                                 ),
                                child: Image.asset(AppIcons.lockIcon),
                                 ),
                                ),
                                  ],
                                ) ,
                            contentPadding: const EdgeInsets.only(top: 16.0),
                            hintText: 'Enter Password',
                            hintStyle: ralewayStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              color: appcolors.blueDarkColor.withOpacity(0.5),
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        
                      ),
                      SizedBox(height: height * 0.03),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: (){},
                          child: Text('Forgot Password?',
                            style: ralewayStyle.copyWith(
                              fontSize: 12.0,
                              color: appcolors.mainBlueColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context
                            , MaterialPageRoute(builder: (context)=>MainScreen()));
                          },
                          borderRadius: BorderRadius.circular(16.0),
                          child: Ink(
                            padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 18.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: secondaryColor,
                            ),
                            child: Text('LOGIN',
                              style: ralewayStyle.copyWith(
                                fontWeight: FontWeight.w700,
                                color: appcolors.whiteColor,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),  
                    ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}