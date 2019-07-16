import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offset;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _offset = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, 0.20))
        .animate(_controller);

    switch (_controller.status) {
      case AnimationStatus.completed:
        _controller.reverse();
        break;
      case AnimationStatus.dismissed:
        _controller.forward();
        break;
      default:
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 190.0,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Positioned(
                    left: 0,
                    top: -100,
                    right: 0,
                    child: Container(
                      height: 279,
                      child: Image.asset(
                        "assets/images/3.0x/blob-bg.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 85,
                      height: 92,
                      margin: EdgeInsets.only(top: 99),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            left: 8,
                            top: 23,
                            right: 9,
                            child: Container(
                              height: 68,
                              child: Opacity(
                                opacity: 0.4,
                                child: Image.asset(
                                  "assets/images/mask-2.png",
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 1,
                            right: 0,
                            child: Container(
                              height: 85,
                              child: Image.asset(
                                "assets/images/logo.png",
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SlideTransition(
                position: _offset,
                child: Container(
                  margin: EdgeInsets.only(top: 21),
                  child: Opacity(
                    opacity: 0.7,
                    child: Text(
                      "Hello again.\nWelcome back.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 22, 31, 61),
                        fontSize: 18,
                        fontFamily: "",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            _formInput(),
            _submitButton(),
            _signUp(),
          ],
        ),
      ),
    );
  }

  Widget _formInput() {
    return Container(
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 315,
              height: 60,
              margin: EdgeInsets.only(top: 90),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Opacity(
                      opacity: 0.5,
                      child: Text(
                        "EMAIL ADDRESS",
                        style: TextStyle(
                          color: Color.fromARGB(255, 22, 31, 61),
                          fontSize: 10,
                          letterSpacing: 1,
                          fontFamily: "",
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: TextField(
                        autocorrect: false,
                        decoration: InputDecoration(
                          hintText: 'olson.minnie@ellen.biz',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 22, 31, 61),
                            fontSize: 15,
                            fontFamily: "",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(bottom: 1),
                    child: Opacity(
                      opacity: 0.1,
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 29, 29, 38),
                        ),
                        child: Container(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 315,
              height: 60,
              margin: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Opacity(
                      opacity: 0.5,
                      child: Text(
                        "PASSWORD",
                        style: TextStyle(
                          color: Color.fromARGB(255, 22, 31, 61),
                          fontSize: 10,
                          letterSpacing: 1,
                          fontFamily: "",
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: Stack(
                        children: <Widget>[
                          TextField(
                            autocorrect: false,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: '**********',
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 22, 31, 61),
                                fontSize: 15,
                                fontFamily: "",
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 0,
                            child: InkWell(
                              onTap: () {
                                print('Forgot Password');
                              },
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                    "Forgot Password",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 22, 31, 61),
                                      fontSize: 13,
                                      fontFamily: "",
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(bottom: 1),
                    child: Opacity(
                      opacity: 0.1,
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 29, 29, 38),
                        ),
                        child: Container(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _submitButton() {
    return Container(
      height: 52,
      margin: EdgeInsets.only(left: 30, top: 50, right: 30),
      child: RaisedButton(
        onPressed: () {
          print('_submited!');
        },
        child: Text(
          'Sign in',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 16,
            letterSpacing: 0.53,
            fontFamily: "",
          ),
        ),
        color: Color.fromARGB(255, 234, 69, 107),
      ),
    );
  }

  Widget _signUp() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 203,
        height: 16,
        margin: EdgeInsets.only(top: 20.0),
        child: Row(
          children: [
            Opacity(
              opacity: 0.5,
              child: Text(
                "New to Friendly Desi?",
                style: TextStyle(
                  color: Color.fromARGB(255, 29, 29, 38),
                  fontSize: 13,
                  letterSpacing: 0.4,
                  fontFamily: "",
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(right: 3),
              child: InkWell(
                onTap: () {
                  print("_signUp");
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    color: Color.fromARGB(255, 233, 68, 106),
                    fontSize: 13,
                    letterSpacing: 0.4,
                    fontFamily: "",
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}