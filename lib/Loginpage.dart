import 'package:flutter/material.dart';
import 'package:laexactlyproject/secondscreen.dart';
import 'package:laexactlyproject/uihelper.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  bool selected=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome',style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black),),
            Text('Enter your details to login',style: TextStyle(fontSize: 20,color: Colors.black),),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text('Mobile/Email')
              ],

            ),
            UiHelper.CustomTextField(emailcontroller, 'Enter mobile no or email', Icons.email),
            Row(
              children: [
                SizedBox(width: 20,),
                Text('Password')
              ],
            ),
            UiHelper.CustomTextField(passwordcontroller, 'Enter your password', Icons.remove_red_eye),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Checkbox(value: selected, onChanged: (value){setState(() {
                      selected=value!;
                    });}),
                    SizedBox(width: 1,),
                    Text('Remember me',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                  ],
                ),
                Text('Forgot Password?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)

              ],
            ),
            UiHelper.CustomContainer(() {showModalBottomSheet(context: context,
                builder: (context)=>UiHelper.CustomContainer1((){}));}),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?" ,style: TextStyle(color: Colors.black),),
                Text('Register',style: TextStyle(color: Colors.blue),)


              ],
            ),

            



          ],
        ),
      ),
    );
  }

}
