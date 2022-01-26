import 'package:buzz_bee/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: componentsColor,
          padding: EdgeInsets.symmetric(horizontal: size.width <=768 ? 20 : 50, vertical: 10),
          child: Row(
            children:  [
              const Text('India',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              ),
              const SizedBox(width: 10,),
              Container(
                height: 20,
                width: 0.5,
                color:Colors.black
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.circle, color: componentsColor, size: 12,),
              const SizedBox(width: 10,),
              const Text('560103', style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400,),),
            ],
          ),
        ),
        const Divider(thickness: 0, height: 9, color:Colors.black ,),
        Container(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: const [
              Text('Help', style: TextStyle(color:componentsColor, fontSize: 15),),
             SizedBox(width: 20,),
              Text('Send Feedback', style: TextStyle(color:componentsColor, fontSize: 15),),
              SizedBox(width: 20,),
              Text('Privacy', style: TextStyle(color:componentsColor, fontSize: 15),),
              SizedBox(width: 20,),
              Text('Terms', style: TextStyle(color:componentsColor, fontSize: 15),),
            ],
          ),
        ),
      ],
    );
  }
}
