import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart' as color;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _controller.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color.AppColor.pageBackgroundColor,
        body: Container(
            padding:
                const EdgeInsets.only(top: 50, left: 40, right: 40, bottom: 50),
            child: Column(children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                      // color: Colors.redAccent.withOpacity(0.3),
                      image: DecorationImage(
                    image: AssetImage("assets/img_logo.png"),
                  ))),
              SizedBox(height: 20),
              Container(
                  // decoration: BoxDecoration(boxShadow: [
                  //   BoxShadow(
                  //       offset: Offset(0, 0),
                  //       blurRadius: 20,
                  //       spreadRadius: 0,
                  //       color: color.AppColor.colorBlack.withOpacity(0.2))
                  // ]),
                  // height: 50,

                  child: RaisedButton(
                onPressed: () {},
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      gradient: new LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          color.AppColor.colorBlue,
                          color.AppColor.colorPurple
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 0,
                            spreadRadius: 0,
                            color: color.AppColor.colorBlack.withOpacity(0.1))
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  padding: const EdgeInsets.fromLTRB(0, 17, 0, 17),
                  child: Center(
                    child: Text(
                      'RESPONDER QUESTIONÁRIO',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ),
                ),
              )),
              SizedBox(height: 20),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 20,
                  decoration: BoxDecoration(
                      // color: Colors.redAccent.withOpacity(0.3),
                      image: DecorationImage(
                    image: AssetImage("assets/img_section.png"),
                  ))),
              SizedBox(height: 30),
              Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(children: [
                    Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          children: [
                            Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: color.AppColor.colorWhite,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                      topRight: Radius.circular(50)),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 0),
                                        blurRadius: 20,
                                        spreadRadius: 5,
                                        color: color.AppColor.colorBlack
                                            .withOpacity(0.05))
                                  ]),
                            ),
                            Container(
                                margin: const EdgeInsets.only(
                                    right: 230, top: 10, bottom: 10, left: 10),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage("assets/img_help.png"),
                                ))),
                            Container(
                                width: double.maxFinite,
                                height: 100,
                                margin: const EdgeInsets.only(
                                    left: 100, top: 20, right: 20, bottom: 20),
                                child: Column(
                                  children: [
                                    Text(
                                        "Sua participação é impor-tante! Entenda como par-ticipar da nossa pesquisa.",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: color.AppColor.colorPurple))
                                  ],
                                ))
                          ],
                        )),
                  ])),
              SizedBox(height: 30),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 20,
                  decoration: BoxDecoration(
                      // color: Colors.redAccent.withOpacity(0.3),
                      image: DecorationImage(
                    image: AssetImage("assets/img_section.png"),
                  ))),
              SizedBox(height: 30),
              Expanded(
                  child: ListView(children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: (MediaQuery.of(context).size.width - 110) / 2,
                          height: 140,
                          // margin: EdgeInsets.only(left: 40),
                          child: Stack(
                            children: [
                              Container(
                                  child: Stack(
                                children: [
                                  Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  90) /
                                              2,
                                      decoration: BoxDecoration(
                                          color: color.AppColor.colorWhite,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          boxShadow: [
                                            BoxShadow(
                                                offset: Offset(0, 0),
                                                blurRadius: 20,
                                                spreadRadius: 5,
                                                color: color.AppColor.colorBlack
                                                    .withOpacity(0.05))
                                          ])),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          right: 28,
                                          top: 10,
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
                              ))
                            ],
                          ),
                        ),
                        Container(
                          width: (MediaQuery.of(context).size.width - 110) / 2,
                          height: 140,
                          margin: EdgeInsets.only(left: 30),
                          child: Stack(
                            children: [
                              Container(
                                  child: Stack(
                                children: [
                                  Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: color.AppColor.colorWhite,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          boxShadow: [
                                            BoxShadow(
                                                offset: Offset(0, 0),
                                                blurRadius: 20,
                                                spreadRadius: 5,
                                                color: color.AppColor.colorBlack
                                                    .withOpacity(0.05))
                                          ])),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          right: 30,
                                          top: 5,
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
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Container(
                          width: (MediaQuery.of(context).size.width - 110) / 2,
                          height: 140,
                          // margin: EdgeInsets.only(left: 40),
                          child: Stack(
                            children: [
                              Container(
                                  child: Stack(
                                children: [
                                  Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  90) /
                                              2,
                                      decoration: BoxDecoration(
                                          color: color.AppColor.colorWhite,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          boxShadow: [
                                            BoxShadow(
                                                offset: Offset(0, 0),
                                                blurRadius: 20,
                                                spreadRadius: 5,
                                                color: color.AppColor.colorBlack
                                                    .withOpacity(0.05))
                                          ])),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          right: 28,
                                          top: 10,
                                          bottom: 35,
                                          left: 28),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/img_term.png")),
                                      )),
                                  Container(
                                      margin: const EdgeInsets.only(bottom: 20),
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
                              ))
                            ],
                          ),
                        ),
                        Container(
                          width: (MediaQuery.of(context).size.width - 110) / 2,
                          height: 140,
                          margin: EdgeInsets.only(left: 30),
                          child: Stack(
                            children: [
                              Container(
                                  child: Stack(
                                children: [
                                  Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: color.AppColor.colorWhite,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          boxShadow: [
                                            BoxShadow(
                                                offset: Offset(0, 0),
                                                blurRadius: 20,
                                                spreadRadius: 5,
                                                color: color.AppColor.colorBlack
                                                    .withOpacity(0.05))
                                          ])),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          right: 30,
                                          top: 5,
                                          bottom: 45,
                                          left: 30),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/img_covid.png")),
                                      )),
                                  Container(
                                      margin: const EdgeInsets.only(bottom: 15),
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
                              ))
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ])),
              // Expanded(
              //     child: OverflowBox(
              //         maxWidth: MediaQuery.of(context).size.width,
              //         child: Column(
              //           children: [
              //             Row(
              //               children: [
              //                 Container(
              //                   width:
              //                       (MediaQuery.of(context).size.width - 110) /
              //                           2,
              //                   height: 140,
              //                   margin: EdgeInsets.only(left: 40),
              //                   child: Stack(
              //                     children: [
              //                       Container(
              //                           child: Stack(
              //                         children: [
              //                           Container(
              //                               width: (MediaQuery.of(context)
              //                                           .size
              //                                           .width -
              //                                       90) /
              //                                   2,
              //                               decoration: BoxDecoration(
              //                                   color:
              //                                       color.AppColor.colorWhite,
              //                                   borderRadius:
              //                                       BorderRadius.circular(12),
              //                                   boxShadow: [
              //                                     BoxShadow(
              //                                         offset: Offset(0, 0),
              //                                         blurRadius: 20,
              //                                         spreadRadius: 5,
              //                                         color: color
              //                                             .AppColor.colorBlack
              //                                             .withOpacity(0.05))
              //                                   ])),
              //                           Container(
              //                               margin: const EdgeInsets.only(
              //                                   right: 28,
              //                                   top: 10,
              //                                   bottom: 35,
              //                                   left: 28),
              //                               decoration: BoxDecoration(
              //                                 image: DecorationImage(
              //                                     image: AssetImage(
              //                                         "assets/img_manual.png")),
              //                               )),
              //                           Container(
              //                               margin: const EdgeInsets.only(
              //                                   bottom: 20),
              //                               child: Center(
              //                                 child: Align(
              //                                   alignment:
              //                                       Alignment.bottomCenter,
              //                                   child: Text("Manual",
              //                                       style: TextStyle(
              //                                           height: 1.2,
              //                                           fontSize: 15,
              //                                           fontWeight:
              //                                               FontWeight.w600,
              //                                           color: color.AppColor
              //                                               .colorPurple)),
              //                                 ),
              //                               ))
              //                         ],
              //                       ))
              //                     ],
              //                   ),
              //                 ),
              //                 Container(
              //                   width:
              //                       (MediaQuery.of(context).size.width - 110) /
              //                           2,
              //                   height: 140,
              //                   margin: EdgeInsets.only(left: 30),
              //                   child: Stack(
              //                     children: [
              //                       Container(
              //                           child: Stack(
              //                         children: [
              //                           Container(
              //                               width: MediaQuery.of(context)
              //                                   .size
              //                                   .width,
              //                               decoration: BoxDecoration(
              //                                   color:
              //                                       color.AppColor.colorWhite,
              //                                   borderRadius:
              //                                       BorderRadius.circular(12),
              //                                   boxShadow: [
              //                                     BoxShadow(
              //                                         offset: Offset(0, 0),
              //                                         blurRadius: 20,
              //                                         spreadRadius: 5,
              //                                         color: color
              //                                             .AppColor.colorBlack
              //                                             .withOpacity(0.05))
              //                                   ])),
              //                           Container(
              //                               margin: const EdgeInsets.only(
              //                                   right: 30,
              //                                   top: 5,
              //                                   bottom: 45,
              //                                   left: 30),
              //                               decoration: BoxDecoration(
              //                                 image: DecorationImage(
              //                                     image: AssetImage(
              //                                         "assets/img_policy.png")),
              //                               )),
              //                           Container(
              //                               margin: const EdgeInsets.only(
              //                                   bottom: 15),
              //                               child: Center(
              //                                 child: Align(
              //                                   alignment:
              //                                       Alignment.bottomCenter,
              //                                   child: Text(
              //                                       "Política de \nPrivacidade",
              //                                       textAlign: TextAlign.center,
              //                                       style: TextStyle(
              //                                           height: 1.2,
              //                                           fontSize: 15,
              //                                           fontWeight:
              //                                               FontWeight.w600,
              //                                           color: color.AppColor
              //                                               .colorPurple)),
              //                                 ),
              //                               ))
              //                         ],
              //                       ))
              //                     ],
              //                   ),
              //                 )
              //               ],
              //             ),
              //             SizedBox(height: 30),
              //             Row(
              //               children: [
              //                 Container(
              //                   width:
              //                       (MediaQuery.of(context).size.width - 110) /
              //                           2,
              //                   height: 140,
              //                   margin: EdgeInsets.only(left: 40),
              //                   child: Stack(
              //                     children: [
              //                       Container(
              //                           child: Stack(
              //                         children: [
              //                           Container(
              //                               width: (MediaQuery.of(context)
              //                                           .size
              //                                           .width -
              //                                       90) /
              //                                   2,
              //                               decoration: BoxDecoration(
              //                                   color:
              //                                       color.AppColor.colorWhite,
              //                                   borderRadius:
              //                                       BorderRadius.circular(12),
              //                                   boxShadow: [
              //                                     BoxShadow(
              //                                         offset: Offset(0, 0),
              //                                         blurRadius: 20,
              //                                         spreadRadius: 5,
              //                                         color: color
              //                                             .AppColor.colorBlack
              //                                             .withOpacity(0.05))
              //                                   ])),
              //                           Container(
              //                               margin: const EdgeInsets.only(
              //                                   right: 28,
              //                                   top: 10,
              //                                   bottom: 35,
              //                                   left: 28),
              //                               decoration: BoxDecoration(
              //                                 image: DecorationImage(
              //                                     image: AssetImage(
              //                                         "assets/img_term.png")),
              //                               )),
              //                           Container(
              //                               margin: const EdgeInsets.only(
              //                                   bottom: 20),
              //                               child: Center(
              //                                 child: Align(
              //                                   alignment:
              //                                       Alignment.bottomCenter,
              //                                   child: Text("Termos de Uso",
              //                                       style: TextStyle(
              //                                           height: 1.2,
              //                                           fontSize: 15,
              //                                           fontWeight:
              //                                               FontWeight.w600,
              //                                           color: color.AppColor
              //                                               .colorPurple)),
              //                                 ),
              //                               ))
              //                         ],
              //                       ))
              //                     ],
              //                   ),
              //                 ),
              //                 Container(
              //                   width:
              //                       (MediaQuery.of(context).size.width - 110) /
              //                           2,
              //                   height: 140,
              //                   margin: EdgeInsets.only(left: 30),
              //                   child: Stack(
              //                     children: [
              //                       Container(
              //                           child: Stack(
              //                         children: [
              //                           Container(
              //                               width: MediaQuery.of(context)
              //                                   .size
              //                                   .width,
              //                               decoration: BoxDecoration(
              //                                   color:
              //                                       color.AppColor.colorWhite,
              //                                   borderRadius:
              //                                       BorderRadius.circular(12),
              //                                   boxShadow: [
              //                                     BoxShadow(
              //                                         offset: Offset(0, 0),
              //                                         blurRadius: 20,
              //                                         spreadRadius: 5,
              //                                         color: color
              //                                             .AppColor.colorBlack
              //                                             .withOpacity(0.05))
              //                                   ])),
              //                           Container(
              //                               margin: const EdgeInsets.only(
              //                                   right: 30,
              //                                   top: 5,
              //                                   bottom: 45,
              //                                   left: 30),
              //                               decoration: BoxDecoration(
              //                                 image: DecorationImage(
              //                                     image: AssetImage(
              //                                         "assets/img_covid.png")),
              //                               )),
              //                           Container(
              //                               margin: const EdgeInsets.only(
              //                                   bottom: 15),
              //                               child: Center(
              //                                 child: Align(
              //                                   alignment:
              //                                       Alignment.bottomCenter,
              //                                   child: Text(
              //                                       "Sobre a \nCOVID-19",
              //                                       textAlign: TextAlign.center,
              //                                       style: TextStyle(
              //                                           height: 1.2,
              //                                           fontSize: 15,
              //                                           fontWeight:
              //                                               FontWeight.w600,
              //                                           color: color.AppColor
              //                                               .colorPurple)),
              //                                 ),
              //                               ))
              //                         ],
              //                       ))
              //                     ],
              //                   ),
              //                 )
              //               ],
              //             )
              //           ],
              //         )
              //         // child: ,
              //         )

              //     // ],
              //     )
            ])));
  }
}
