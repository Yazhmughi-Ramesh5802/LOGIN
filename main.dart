import 'package:flutter/material.dart';
import 'package:hackathon/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Beautiful Registration Form',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //   // primarySwatch: Colors.green,
          //   accentColor: Colors.black,
          //   primaryColor: Colors.black,
          //   focusColor: Colors.black,
          //cursorColor: Colors.black
          ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}

// flutter login and registration ui design template
class _HomepageState extends State<Homepage> {
  bool isLoginSelected = true;
  bool maleSelected = true;
  bool femaleSelected = false;
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          color: c1,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(13),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(-3, -3),
                            blurRadius: 5,
                            spreadRadius: 0,
                            color: Colors.grey)
                      ],
                      borderRadius: BorderRadius.circular(50)
                          .copyWith(bottomRight: Radius.circular(0)),
                      gradient: LinearGradient(colors: [c2, c3])),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(-3, -3),
                              blurRadius: 3,
                              spreadRadius: 0,
                              color: Colors.grey)
                        ],
                        borderRadius: BorderRadius.circular(50)
                            .copyWith(bottomRight: Radius.circular(0)),
                        gradient: LinearGradient(colors: [c4, c2])),
                    child: Column(
                      children: [
                        toggleButton(),
                        isLoginSelected ? SizedBox() : usernameField(),
                        emailField(),
                        passwordField(),
                        isLoginSelected ? SizedBox() : confirmPasswordField(),
                        !isLoginSelected ? SizedBox() : forgotPassword(),
                        isLoginSelected
                            ? SizedBox()
                            : Container(
                                margin: EdgeInsets.symmetric(horizontal: 80)
                                    .copyWith(top: 20.0),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    //color: Colors.black,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(-4, -4),
                                          blurRadius: 5,
                                          spreadRadius: 0,
                                          color: Colors.grey)
                                    ],
                                    borderRadius: BorderRadius.circular(50)
                                        .copyWith(
                                            bottomRight: Radius.circular(0)),
                                    gradient: LinearGradient(colors: [c2, c4])),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 15, bottom: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            maleSelected = true;
                                            femaleSelected = false;
                                          });
                                        },
                                        child: Row(
                                          children: [
                                            Container(
                                                height: 17,
                                                width: 17,
                                                alignment: Alignment.center,
                                                margin:
                                                    EdgeInsets.only(right: 10),
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        color: Colors.black)),
                                                child: maleSelected
                                                    ? Container(
                                                        margin:
                                                            EdgeInsets.all(4),
                                                        decoration:
                                                            BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Colors
                                                                    .black),
                                                      )
                                                    : SizedBox()),
                                            Text('Male',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ],
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            femaleSelected = true;
                                            maleSelected = false;
                                          });
                                        },
                                        child: Row(
                                          children: [
                                            Container(
                                                height: 17,
                                                width: 17,
                                                alignment: Alignment.center,
                                                margin:
                                                    EdgeInsets.only(right: 10),
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        color: Colors.black)),
                                                child: femaleSelected
                                                    ? Container(
                                                        margin:
                                                            EdgeInsets.all(4),
                                                        decoration:
                                                            BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Colors
                                                                    .black),
                                                      )
                                                    : SizedBox()),
                                            Text('Female',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                        SizedBox(
                          height: 40.0,
                        ),
                        button(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // flutter login and registration ui design template
  Widget usernameField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 53,
          width: double.infinity,
          decoration: BoxDecoration(
              //color: c3,
              boxShadow: [
                BoxShadow(
                    offset: Offset(-4, -4),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: Colors.grey)
              ],
              borderRadius: BorderRadius.circular(50)
                  .copyWith(bottomRight: Radius.circular(0)),
              gradient: LinearGradient(colors: [Colors.white, Colors.white])),
          child: TextField(
            style: TextStyle(color: Colors.black, fontSize: 14),
            decoration: InputDecoration(
              //labelText: "Username",
              border: InputBorder.none,
              hintText: 'Enter username',
              hintStyle: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
        ));
  }

  Widget emailField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 53,
          width: double.infinity,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(-4, -4),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: Colors.grey)
              ],
              borderRadius: BorderRadius.circular(50)
                  .copyWith(bottomRight: Radius.circular(0)),
              gradient: LinearGradient(colors: [Colors.white, Colors.white])),
          child: TextField(
            style: TextStyle(color: Colors.black, fontSize: 15),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter email',
              hintStyle: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
        ));
  }

  // flutter login and registration ui design template
  Widget passwordField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 53,
          width: double.infinity,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(-4, -4),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: Colors.grey)
              ],
              borderRadius: BorderRadius.circular(50.0)
                  .copyWith(bottomRight: Radius.circular(0)),
              gradient: LinearGradient(colors: [Colors.white, Colors.white])),
          child: TextField(
            obscureText: isPasswordVisible ? false : true,
            style: TextStyle(color: Colors.black, fontSize: 15),
            decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon: Padding(
                padding: EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  child: Icon(
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
              hintText: 'Enter password',
              hintStyle: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
        ));
  }

  // amazing flutter login and registration ui design screen
  Widget confirmPasswordField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 53,
          width: double.infinity,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(-4, -4),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: Colors.grey)
              ],
              borderRadius: BorderRadius.circular(50)
                  .copyWith(bottomRight: Radius.circular(0)),
              gradient: LinearGradient(colors: [Colors.white, Colors.white])),
          child: TextField(
            obscureText: isConfirmPasswordVisible ? false : true,
            style: TextStyle(color: Colors.black, fontSize: 15),
            decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon: Padding(
                padding: EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isConfirmPasswordVisible = !isConfirmPasswordVisible;
                    });
                  },
                  child: Icon(
                    isConfirmPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
              hintText: 'Confirm password',
              hintStyle: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
        ));
  }

  Widget button() {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Clicked')));
      },
      child: Container(
        height: 53,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 4, color: Colors.grey, offset: Offset(-5, -5))
            ],
            borderRadius: BorderRadius.circular(100)
                .copyWith(bottomRight: Radius.circular(0)),
            gradient: LinearGradient(colors: [Colors.white, Colors.white])),
        child: Text(isLoginSelected ? 'Login' : 'Signup',
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  // astounding flutter login and registration ui design template
  Widget toggleButton() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        height: 40,
        width: 260,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: Offset(-4, -4),
                  blurRadius: 5,
                  spreadRadius: 0,
                  color: Colors.grey)
            ],
            borderRadius: BorderRadius.circular(50)
                .copyWith(bottomRight: Radius.circular(0)),
            gradient: LinearGradient(colors: [Colors.white, Colors.white])),
        child: Row(
          // amazing flutter login and registration ui design template source code
          children: [
            !isLoginSelected
                ? Expanded(
                    child: Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          print('tap');
                          isLoginSelected = true;
                        });
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ))
                : Expanded(
                    child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(-4, -4),
                              blurRadius: 5,
                              spreadRadius: 0,
                              color: Colors.grey)
                        ],
                        borderRadius: BorderRadius.circular(50).copyWith(
                          bottomRight: Radius.circular(0),
                        ),
                        gradient: LinearGradient(
                            colors: [Colors.white, Colors.white])),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            isLoginSelected
                ? Expanded(
                    child: Center(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          print('tap');
                          isLoginSelected = false;
                        });
                      },
                      child: Text(
                        'Signup',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ))
                : Expanded(
                    child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(-4, -4),
                              blurRadius: 5,
                              spreadRadius: 0,
                              color: Colors.grey)
                        ],
                        borderRadius: BorderRadius.circular(50).copyWith(
                          bottomRight: Radius.circular(0),
                        ),
                        gradient: LinearGradient(
                            colors: [Colors.white, Colors.white])),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ))
          ],
        ),
      ),
    );
  }

  // flutter login and registration UI design template
  Widget forgotPassword() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 30),
        child: InkWell(
          onTap: () {
            // navigate to other screen or perform some other actions
          },
          child: Text(
            'Forgot password?',
            style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
