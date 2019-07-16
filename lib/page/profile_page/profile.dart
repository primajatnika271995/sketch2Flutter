import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 251, 252, 254),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 140,
                  height: 140,
                  margin: EdgeInsets.only(top: 40.0),
                  child: Image.asset(
                    "assets/images/profile.png",
                    fit: BoxFit.none,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Opacity(
                    opacity: 0.9,
                    child: Text(
                      "Mason Moreno",
                      style: TextStyle(
                        color: Color.fromARGB(255, 22, 31, 61),
                        fontSize: 16,
                        fontFamily: "",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 7),
                  child: Opacity(
                    opacity: 0.5,
                    child: Text(
                      "New York",
                      style: TextStyle(
                        color: Color.fromARGB(255, 22, 31, 61),
                        fontSize: 13,
                        fontFamily: "",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Container(
                height: 38,
                margin: EdgeInsets.only(top: 30),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      left: 55,
                      top: 0,
                      right: 35,
                      bottom: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 18,
                            margin: EdgeInsets.only(left: 6, right: 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Opacity(
                                    opacity: 0.8,
                                    child: Text(
                                      "21",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 22, 31, 61),
                                        fontSize: 16,
                                        fontFamily: "",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Opacity(
                                    opacity: 0.8,
                                    child: Text(
                                      "63",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 22, 31, 61),
                                        fontSize: 16,
                                        fontFamily: "",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 13,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Opacity(
                                    opacity: 0.3,
                                    child: Text(
                                      "Posts",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 22, 31, 61),
                                        fontSize: 11,
                                        fontFamily: "",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Opacity(
                                    opacity: 0.3,
                                    child: Text(
                                      "Following",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 22, 31, 61),
                                        fontSize: 11,
                                        fontFamily: "",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      bottom: 1,
                      child: Container(
                        width: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Opacity(
                                opacity: 0.8,
                                child: Text(
                                  "981",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 22, 31, 61),
                                    fontSize: 16,
                                    fontFamily: "",
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Spacer(),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Opacity(
                                opacity: 0.3,
                                child: Text(
                                  "Followers",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 22, 31, 61),
                                    fontSize: 11,
                                    fontFamily: "",
                                  ),
                                  textAlign: TextAlign.center,
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
              TabBar(
                indicatorColor: Colors.red,
                unselectedLabelStyle: TextStyle(color: Color.fromARGB(255, 22, 31, 61)),
                
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      'Posts',
                      style: TextStyle(
                        color: Color.fromARGB(255, 22, 31, 61),
                        fontSize: 14,
                        fontFamily: "",
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Likes',
                      style: TextStyle(
                        color: Color.fromARGB(255, 22, 31, 61),
                        fontSize: 14,
                        fontFamily: "",
                      ),
                    ),
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
