import 'package:buzz_bee/web/search_buttons.dart';
import 'package:buzz_bee/web/translation_buttons.dart';
import 'package:buzz_bee/web/web_footer.dart';
import 'package:buzz_bee/widgets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          actions: [


            //buzzmail
            TextButton(
              onPressed: () {},
              child: const Text(
                'Buzzmail',
                style: TextStyle(
                  color: componentsColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),


            //images
            TextButton(
              onPressed: () {},
              child: const Text(
                'Images',
                style: TextStyle(
                  color: componentsColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),


            //menu
            IconButton(onPressed: (){},
                icon:const Icon(
                    Icons.menu,
                  color:componentsColor,
                ),
            ),
            const SizedBox(
              width: 10,
            ),



            //sign in
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0).copyWith(
                right: 15,
              ),
              child: MaterialButton(
                onPressed: (){},
                color:componentsColor,
              child: const Text(
                  'Sign in',
                style: TextStyle(
                  color:Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
              ),
            ),
          ],
        ),


        //BODY
        body:Padding(
          padding: const EdgeInsets.only(left:5, right: 5),
          child: Column(
            children: [
              SizedBox(
                height: size.height*0.25,
              ),
              Expanded(
                  child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                         Search(),
                          SizedBox(height: 20,),

                          SearchButtons(),
                          SizedBox(height: 20,),
                          TranslationButtons(),
                        ],
                      ),

                      const WebFooter(),

                    ],


                  ),
              ),
            ],
          ),
        ),




    );
  }
}
