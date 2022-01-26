import 'package:buzz_bee/colors.dart';
import 'package:buzz_bee/web/search_buttons.dart';
import 'package:buzz_bee/web/translation_buttons.dart';
import 'package:buzz_bee/web/web_footer.dart';
import 'package:buzz_bee/widgets/mobile_footer.dart';
import 'package:buzz_bee/widgets/search.dart';
import 'package:flutter/material.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(onPressed: (){}, icon:const Icon(Icons.segment, color:componentsColor),),
        title: SizedBox(
          width: size.width*0.34,
          child: const DefaultTabController(
              length: 2,
              child: TabBar(
                labelColor: contrastColor ,
                  unselectedLabelColor:componentsColor,
                  indicatorColor:componentsColor,
                  tabs:[
                    Tab(text: 'ALL',),
                    Tab(text: 'IMAGES',),

                  ],
              ),
          ),
        ),
        actions: [

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
            const SizedBox(
              height:50,
            ),
            Expanded(
              child:  SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                          Search(),
                          SizedBox(height: 300,),
                        ],
                      ),

                      const MobileFooter(),

                    ],
                ),
              ),
            ),
          ],
        ),
      ),




    );
  }
}
