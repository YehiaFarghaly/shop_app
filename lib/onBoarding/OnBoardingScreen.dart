import 'package:flutter/material.dart';
import 'package:shop_app/LogIn/LoginScreen.dart';
import 'package:shop_app/Shared/components.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel(this.image, this.title, this.body);
}

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var pageViewController= PageController();
  bool isLast = false;
  List<BoardingModel> boardingPages = [
    BoardingModel('assets/images/onboard.jpg', 'OnBoarding 1', 'Body 1'),
    BoardingModel('assets/images/onboard.jpg', 'OnBoarding 2', 'Body 2'),
    BoardingModel('assets/images/onboard.jpg', 'OnBoarding 3', 'Body 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(onPressed: (){
            navigateRemove(context, Login_Screen());
          },
            child: Text(
            'SKIP',
              style: TextStyle(
                color: Colors.black,
              ),
          ),
            style: ButtonStyle(

            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageViewController,
                onPageChanged: (int index){
                  if(index==boardingPages.length-1){
                   setState(() {
                     isLast=true;
                   });
                  }
                  else {
                    setState(() {
                      isLast=false;
                    });
                  }
                },
                itemBuilder: (context, index) =>
                    buildBoardingItem(boardingPages[index]),
                itemCount: boardingPages.length,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SmoothPageIndicator(
                    controller: pageViewController,
                    effect: ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: Colors.orange,
                      dotHeight: 10,
                      expansionFactor: 4,
                      dotWidth: 10,
                      spacing: 5
                    ),
                    count: boardingPages.length),
                Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    if(!isLast) {
                      pageViewController.nextPage(
                          duration: Duration(
                            milliseconds: 400,
                          ),
                          curve: Curves.linear
                      );
                    }
                    else{
                     navigateRemove(context, Login_Screen());
                    }
                  },
                  child: Icon(Icons.arrow_forward,color: Colors.black,),
                  backgroundColor: Colors.orange,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image(image: AssetImage(model.image)),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            model.title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            model.body,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      );
}
