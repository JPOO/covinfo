import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart' as color;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color.AppColor.pageBackgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(
                  top: 20, right: 40, bottom: 20, left: 40),
              child: Column(children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/img_logo.png"),
                    ))),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(bottom: 3),
                      primary: Colors.transparent,
                      elevation: 2,
                      shadowColor: Colors.black.withOpacity(0.8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))),
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(colors: [
                        color.AppColor.colorBlue,
                        color.AppColor.colorPurple
                      ]),
                    ),
                    child: Container(
                      height: 60,
                      alignment: Alignment.center,
                      child: Text(
                        'RESPONDER QUESTIONÁRIO',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/accept_policy');
                  },
                ),
                SizedBox(height: 30),
                Container(
                    height: 20,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/img_section.png"),
                    ))),
                SizedBox(height: 30),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 20,
                                spreadRadius: 5,
                                color: Colors.black.withOpacity(0.05))
                          ]),
                      child: (Row(
                        children: [
                          Container(
                              width: 70,
                              height: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage("assets/img_help.png"),
                              ))),
                          Container(
                            width: MediaQuery.of(context).size.width - 200,
                            margin: const EdgeInsets.only(left: 15),
                            child: Column(
                              children: [
                                Text(
                                    "Sua participação é importante! Entenda como colaborar com a nossa pesquisa.",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: color.AppColor.colorPurple)),
                              ],
                            ),
                          )
                        ],
                      )),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                    height: 20,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/img_section.png"),
                    ))),
                SizedBox(height: 10),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width:
                                (MediaQuery.of(context).size.width - 110) / 2,
                            height: 150,
                            margin: const EdgeInsets.only(top: 20),
                            child: GestureDetector(
                              child: Stack(
                                children: [
                                  Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  90) /
                                              2,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          boxShadow: [
                                            BoxShadow(
                                                offset: Offset(0, 0),
                                                blurRadius: 15,
                                                spreadRadius: 10,
                                                color: Colors.black
                                                    .withOpacity(0.05))
                                          ])),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 10,
                                          right: 28,
                                          bottom: 35,
                                          left: 28),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/img_manual.png")),
                                      )),
                                  Container(
                                      margin: const EdgeInsets.only(bottom: 20),
                                      child: Center(
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text("Manual",
                                              style: TextStyle(
                                                  height: 1.2,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  color: color
                                                      .AppColor.colorPurple)),
                                        ),
                                      ))
                                ],
                              ),
                              // onTap: () =>
                              //     Navigator.pushNamed(context, '/manual'),
                            ),
                          ),
                          Container(
                            width:
                                (MediaQuery.of(context).size.width - 110) / 2,
                            height: 150,
                            margin: EdgeInsets.only(top: 20, left: 30),
                            child: GestureDetector(
                              child: Stack(
                                children: [
                                  Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          boxShadow: [
                                            BoxShadow(
                                                offset: Offset(0, 0),
                                                blurRadius: 15,
                                                spreadRadius: 10,
                                                color: Colors.black
                                                    .withOpacity(0.05))
                                          ])),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 5,
                                          right: 30,
                                          bottom: 45,
                                          left: 30),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/img_policy.png")),
                                      )),
                                  Container(
                                      margin: const EdgeInsets.only(bottom: 15),
                                      child: Center(
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                              "Política de \nPrivacidade",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  height: 1.2,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  color: color
                                                      .AppColor.colorPurple)),
                                        ),
                                      ))
                                ],
                              ),
                              onTap: () =>
                                  Navigator.pushNamed(context, '/policy'),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Container(
                            width:
                                (MediaQuery.of(context).size.width - 110) / 2,
                            height: 150,
                            child: GestureDetector(
                              child: Stack(
                                children: [
                                  Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  90) /
                                              2,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          boxShadow: [
                                            BoxShadow(
                                                offset: Offset(0, 0),
                                                blurRadius: 15,
                                                spreadRadius: 10,
                                                color: Colors.black
                                                    .withOpacity(0.05))
                                          ])),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 9,
                                          right: 26,
                                          bottom: 35,
                                          left: 26),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/img_term.png")),
                                      )),
                                  Container(
                                      margin: const EdgeInsets.only(bottom: 15),
                                      child: Center(
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text("Termos de Uso",
                                              style: TextStyle(
                                                  height: 1.2,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  color: color
                                                      .AppColor.colorPurple)),
                                        ),
                                      ))
                                ],
                              ),
                              // onTap: () =>
                              //     Navigator.pushNamed(context, '/terms'),
                            ),
                          ),
                          Container(
                            width:
                                (MediaQuery.of(context).size.width - 110) / 2,
                            height: 150,
                            margin: EdgeInsets.only(left: 30),
                            child: GestureDetector(
                              child: Stack(
                                children: [
                                  Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          boxShadow: [
                                            BoxShadow(
                                                offset: Offset(0, 0),
                                                blurRadius: 15,
                                                spreadRadius: 10,
                                                color: Colors.black
                                                    .withOpacity(0.05))
                                          ])),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 5,
                                          right: 30,
                                          bottom: 45,
                                          left: 30),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/img_covid.png")),
                                      )),
                                  Container(
                                      margin: const EdgeInsets.only(bottom: 12),
                                      child: Center(
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text("Sobre a \nCOVID-19",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  height: 1.2,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  color: color
                                                      .AppColor.colorPurple)),
                                        ),
                                      ))
                                ],
                              ),
                              onTap: () =>
                                  Navigator.pushNamed(context, '/about'),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}
