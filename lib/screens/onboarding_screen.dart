import 'package:flutter/material.dart';

class onboarding_screen extends StatefulWidget {
  const onboarding_screen({super.key});

  @override
  State<onboarding_screen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<onboarding_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF7A3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset(
              "assets/images/splash.png",
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 2,

            ),
            const SizedBox(height: 20), // Add some spacing
             Text(
              "Kisan Grocery Plus",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 50.0,),
            Container(
              margin: EdgeInsets.only(left: 20.0 , right: 20.0),
              height: 70,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffC26900), Color(0xffFFF7A3)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(30),
              ),

              child:  Center(
                child: Text(
                  "let's calculate",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,

                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
