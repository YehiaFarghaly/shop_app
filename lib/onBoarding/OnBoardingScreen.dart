import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
            child:PageView.builder(itemBuilder: (context,index)=>buildBoardingItem(),
              itemCount: 3,
            ),
            ),
              SizedBox(
                height: 40,
              ),
              Row(
              children: [
                Text("indicator"),
                Spacer(),
                FloatingActionButton(
                      onPressed: (){},
                      child: Icon(
                    Icons.arrow_forward
                  ),
                  backgroundColor: Colors.orange,
                )
              ],
            )
          ],
        ),
      ),

    );
  }
  Widget buildBoardingItem() => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Expanded(
  child: Image(
  image: AssetImage('assets/images/onboard.jpg')
  ),
  ),
  SizedBox(
  height: 30,
  ),
  Text(
  'Screen title',
  style: TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold
  ),
  ),
  SizedBox(height: 15,),
  Text(
  'Screen body',
  style: TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold
  ),
  )

  ],
  );
}
