

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/Shared/components.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'LOGIN',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'log in now to browse our hot offers',
            style: Theme.of(context).textTheme.bodyText1!.copyWith
              (
                color: Colors.grey
            ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              validator: (value){
                if(value!.isEmpty) return'Please Enter your Email address';
              },
              decoration: InputDecoration(
                label: Text('Email Address'),
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              validator: (value){
                if(value!.isEmpty) return'Please Enter your password';
              },
              decoration: InputDecoration(
                  label: Text('Password'),
                  prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(Icons.visibility_outlined),
                  onPressed: (){},
                ),
                border: OutlineInputBorder(),
              ),
            ),
             SizedBox(
               height: 30,
             ),
             defaultButton(text: 'LOGIN', function: (){})
          ],
        ),
      ),
    );
  }
}
