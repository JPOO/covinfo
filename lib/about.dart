import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart' as color;

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color.AppColor.pageBackgroundColor,
        body: Container(
            child: Stack(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(color: color.AppColor.colorBlue),
            ),
            Container(
                padding: const EdgeInsets.only(
                    top: 70, left: 40, right: 40, bottom: 20),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.check_circle_outline_outlined,
                              color: Colors.white, size: 30),
                          SizedBox(width: 10),
                          Text("Sobre a COVID-19",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: color.AppColor.colorWhite)),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Informações gerais sobre a doença, tratamento e vacina.",
                            style: TextStyle(
                                fontSize: 16,
                                color: color.AppColor.colorWhite)),
                      ],
                    )),
                    SizedBox(height: 20),
                    Container(
                        child: Stack(
                      children: [
                        Container(
                          height: 500,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: color.AppColor.colorWhite,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(25),
                                  topRight: Radius.circular(25)),
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
                            width: double.maxFinite,
                            margin: const EdgeInsets.only(
                                left: 40, top: 30, right: 40, bottom: 40),
                            child: Stack(
                              children: [
                                Container(
                                    child: Column(
                                  children: [
                                    Text("1. O que é a COVID-19?",
                                        style: TextStyle(
                                            fontSize: 21,
                                            fontWeight: FontWeight.w900,
                                            color: color.AppColor.colorBlack)),
                                    SizedBox(height: 20),
                                    Text(
                                        "A Política de privacidade está separada em sessões para um melhor entendi-mento. Você pode reler quantas vezes quiser na seção \"POLÍTICA DE PRIVA-CIDADE\" na tela inicial do aplicativo.",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: color.AppColor.colorBlack)),
                                    // SizedBox(height: 10),
                                    // Container(
                                    //   // height: 20,
                                    //   child: DefaultTabController(
                                    //     length: 3,
                                    //     child: TabBar(
                                    //       indicatorSize:
                                    //           TabBarIndicatorSize.tab,
                                    //       // indicator: CircleTabIndicator(color: Colors.green, radius: 4),
                                    //       isScrollable: true,
                                    //       labelColor: Colors.black,
                                    //       tabs: <Widget>[
                                    //         Tab(
                                    //           child: Column(
                                    //             children: <Widget>[
                                    //               // Text('Week 6'),
                                    //               Icon(
                                    //                 Icons.trip_origin,
                                    //                 color: Colors.green,
                                    //                 size: 20,
                                    //               )
                                    //             ],
                                    //           ),
                                    //         ),
                                    //         Tab(text: 'Week 2'),
                                    //         Tab(text: 'Week 3'),
                                    //       ],
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ))
                              ],
                            )),
                      ],
                    )),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 20,
                            spreadRadius: 0,
                            color: color.AppColor.colorBlack.withOpacity(0.2))
                      ]),
                      width: 250,
                      height: 50,
                      child: TextButton(
                          onPressed: () {},
                          child: Stack(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Próximo',
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                margin: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  color.AppColor.colorBlue),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              )))),
                    )
                  ],
                )),
          ],
        )));
  }
}
