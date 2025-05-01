import 'package:flutter/material.dart';
import 'package:flutter_login_signup1/widget/textforms.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/download.png'),
                  ),
                  borderRadius: BorderRadius.circular(55),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 8,
                      color: Colors.white,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(220),
                    bottomLeft: Radius.circular(13),
                    bottomRight: Radius.circular(13),
                    topLeft: Radius.circular(13),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(right: 50, left: 10),
                  child: ListView(
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 80),
                      Form(
                        child: Column(
                          children: [
                            textforms(
                              obscureTexts: false,
                              hintTexts: 'Enter your email....',
                              suffixIcons: Icon(Icons.email),
                            ),
                            SizedBox(height: 15),
                            textforms(
                              obscureTexts: true,
                              hintTexts: 'Enter your password....',
                              suffixIcons: Icon(Icons.visibility_off),
                            ),
                            SizedBox(height: 10),
                            Container(
                              alignment: Alignment.bottomRight,
                              child: Text('Forgot Password'),
                            ),
                            SizedBox(height: 20),
                            Container(
                              alignment: Alignment.center,
                              width: 130,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 131, 10, 10),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(width: 150, height: 1, color: Colors.red),
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Text('OR', style: TextStyle(fontSize: 15)),
                  ),
                  Container(width: 150, height: 1, color: Colors.red),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Icon(Icons.facebook_rounded),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Icon(Icons.mark_email_read),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Icon(Icons.facebook_rounded),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
