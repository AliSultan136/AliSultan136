import 'package:flutter/material.dart';
class SignUpscreen extends StatelessWidget {
  const SignUpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,

        ), body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/download.jpeg"),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(22))

                ),
                child: TextFormField(
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    border:InputBorder.none,
                    hintText:"First Name",



                  ),
                ),

              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(22))

                ),

                child: TextFormField(
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    border:InputBorder.none,
                    hintText:"Last Name",


                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(22))

                ),

                child: TextFormField(
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                   //   icon:Icon(Icons.remove_red_eye_outlined)
                  ),
                ),
              ),

            ),
            RichText(
              text: TextSpan(
                  children: [
                    TextSpan(
                      text: "do you already have account?",
                    ),
                    TextSpan(
                      text: "signup?",
                    )
                  ]
              ),
            ),

          ],


        ),
      ),
      ),

    );

  }
}

