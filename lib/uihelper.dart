import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper{
  static CustomTextField(TextEditingController controller,String text,IconData iconData){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:12,horizontal: 20 ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: text,
          suffixIcon: Icon(iconData),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          )

        ),
      ),
    );
  }
  static CustomContainer(VoidCallback callback){
    return InkWell(
      onTap: (){
        callback();
      },
      child: Container(
        height: 40,
        width: 350,
        child: Center(child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 20),)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue
        ),
      ),
    );
  }
  static CustomContainer1(VoidCallback callback){
    return Container(
      height: 180,

      child: Center(child: Text('Login using fingerprint',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
    );
  }
}