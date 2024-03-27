import 'package:flutter/material.dart';
import 'package:tap_battle/screen/screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        title: const Text(style: TextStyle(color: Colors.white),'Tap Battle'),
        elevation: 5,
        backgroundColor: Colors.lightGreenAccent.shade700,
        automaticallyImplyLeading: false,
      ),

      body: Container(margin: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height*.38,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                // border: Border.all(color: Colors.grey,width: 2)
                  color: Colors.blueAccent
              ),
              child: const Center(child: Text(style: TextStyle(fontSize: 30,color: Colors.white),'Player 1')),

            ),
            Container(
              height: MediaQuery.sizeOf(context).height*.15,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.redAccent.shade700
                  // border: Border.all(color: Colors.grey,width: 2
                  // )
              ),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TapBattle(),));
                },
                child: const Center(child: Text(style: TextStyle(fontSize: 30,color: Colors.white),'Tap Here To Start')),
              ),

            ),

            Container(
              height: MediaQuery.sizeOf(context).height*.38,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  // border: Border.all(color: Colors.grey,width: 2),
                color: Colors.orangeAccent
              ),
              child: const Center(child: Text(style: TextStyle(fontSize: 30,color: Colors.white),'Player 2')),

            )
          ],
        ),
      ),
    );
  }
}
