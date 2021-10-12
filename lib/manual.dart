import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart' as color;

class Manual extends StatefulWidget {
  const Manual({Key? key}) : super(key: key);

  @override
  _ManualState createState() => _ManualState();
}

class _ManualState extends State<Manual> {
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
                    top: 40, left: 20, right: 20, bottom: 20),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.check_circle_outline_outlined,
                              color: Colors.white, size: 30),
                          SizedBox(width: 10),
                          Text("Manual de utilização",
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
                            "Entenda como utilizar o aplicativo Covinfo de forma intuitiva e eficiente.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 16,
                                color: color.AppColor.colorWhite)),
                      ],
                    )),
                    SizedBox(height: 20),
                    Container(
                        height: MediaQuery.of(context).size.height - 230,
                        child: Stack(
                          children: [
                            Container(
                              // height: 300,
                              // width: MediaQuery.of(context).size.width,
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
                            Scrollbar(
                              child: ListView.builder(
                                padding: EdgeInsets.all(30),
                                shrinkWrap: true,
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return Container(
                                      child: Column(
                                    children: [
                                      Text("1. Como responder ao Questinário? ",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900,
                                              color:
                                                  color.AppColor.colorBlack)),
                                      SizedBox(height: 20),
                                      Text(
                                          "A Política de privacidade está separada em sessões para um melhor entendi-mento. Você pode reler quantas vezes quiser na seção \"POLÍTICA DE PRIVA-CIDADE\" na tela inicial do aplicativo.",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color:
                                                  color.AppColor.colorBlack)),
                                      SizedBox(height: 20),
                                    ],
                                  ));
                                },
                              ),
                            ),
                            // ListView.builder(
                            //     //  shrinkWrap: true,
                            //     padding: EdgeInsets.all(15.0),
                            //     physics: NeverScrollableScrollPhysics(),
                            //     shrinkWrap: true,
                            //     itemCount: 40,
                            //     itemBuilder: (context, index) {
                            //       return Text('Some text');
                            //     }),
                            // Container(
                            //   margin: const EdgeInsets.only(
                            //       left: 20, top: 30, right: 20, bottom: 20),
                            //   child: SingleChildScrollView(
                            //     child: Column(
                            //       children: [
                            //         Container(
                            //             // width: double.maxFinite,

                            //             // margin: const EdgeInsets.only(
                            //             //     left: 40,
                            //             //     top: 30,
                            //             //     right: 40,
                            //             //     bottom: 20),
                            //             child: Stack(
                            //           children: [
                            //             Container(
                            //                 child: Column(
                            //               children: [
                            //                 Text(
                            //                     "1. Como responder ao Questinário? ",
                            //                     style: TextStyle(
                            //                         fontSize: 18,
                            //                         fontWeight: FontWeight.w900,
                            //                         color: color
                            //                             .AppColor.colorBlack)),
                            //                 SizedBox(height: 20),
                            //                 Text(
                            //                     "A Política de privacidade está separada em sessões para um melhor entendi-mento. Você pode reler quantas vezes quiser na seção \"POLÍTICA DE PRIVA-CIDADE\" na tela inicial do aplicativo.",
                            //                     textAlign: TextAlign.justify,
                            //                     style: TextStyle(
                            //                         fontSize: 14,
                            //                         color: color
                            //                             .AppColor.colorBlack)),
                            //                 Text(
                            //                     "A Política de privacidade está separada em sessões para um melhor entendi-mento. Você pode reler quantas vezes quiser na seção \"POLÍTICA DE PRIVA-CIDADE\" na tela inicial do aplicativo.",
                            //                     textAlign: TextAlign.justify,
                            //                     style: TextStyle(
                            //                         fontSize: 14,
                            //                         color: color
                            //                             .AppColor.colorBlack)),
                            //                 Text(
                            //                     "A Política de privacidade está separada em sessões para um melhor entendi-mento. Você pode reler quantas vezes quiser na seção \"POLÍTICA DE PRIVA-CIDADE\" na tela inicial do aplicativo.",
                            //                     textAlign: TextAlign.justify,
                            //                     style: TextStyle(
                            //                         fontSize: 14,
                            //                         color: color
                            //                             .AppColor.colorBlack)),
                            //                 Text(
                            //                     "A Política de privacidade está separada em sessões para um melhor entendi-mento. Você pode reler quantas vezes quiser na seção \"POLÍTICA DE PRIVA-CIDADE\" na tela inicial do aplicativo.",
                            //                     textAlign: TextAlign.justify,
                            //                     style: TextStyle(
                            //                         fontSize: 14,
                            //                         color: color
                            //                             .AppColor.colorBlack)),
                            //                 Text(
                            //                     "A Política de privacidade está separada em sessões para um melhor entendi-mento. Você pode reler quantas vezes quiser na seção \"POLÍTICA DE PRIVA-CIDADE\" na tela inicial do aplicativo.",
                            //                     textAlign: TextAlign.justify,
                            //                     style: TextStyle(
                            //                         fontSize: 14,
                            //                         color: color
                            //                             .AppColor.colorBlack)),
                            //                 Text(
                            //                     "A Política de privacidade está separada em sessões para um melhor entendi-mento. Você pode reler quantas vezes quiser na seção \"POLÍTICA DE PRIVA-CIDADE\" na tela inicial do aplicativo.",
                            //                     textAlign: TextAlign.justify,
                            //                     style: TextStyle(
                            //                         fontSize: 14,
                            //                         color: color
                            //                             .AppColor.colorBlack)),
                            //                 // SizedBox(height: 10),
                            //                 // Container(
                            //                 //   // height: 20,
                            //                 //   child: DefaultTabController(
                            //                 //     length: 3,
                            //                 //     child: TabBar(
                            //                 //       indicatorSize:
                            //                 //           TabBarIndicatorSize.tab,
                            //                 //       // indicator: CircleTabIndicator(color: Colors.green, radius: 4),
                            //                 //       isScrollable: true,
                            //                 //       labelColor: Colors.black,
                            //                 //       tabs: <Widget>[
                            //                 //         Tab(
                            //                 //           child: Column(
                            //                 //             children: <Widget>[
                            //                 //               // Text('Week 6'),
                            //                 //               Icon(
                            //                 //                 Icons.trip_origin,
                            //                 //                 color: Colors.green,
                            //                 //                 size: 20,
                            //                 //               )
                            //                 //             ],
                            //                 //           ),
                            //                 //         ),
                            //                 //         Tab(text: 'Week 2'),
                            //                 //         Tab(text: 'Week 3'),
                            //                 //       ],
                            //                 //     ),
                            //                 //   ),
                            //                 // ),
                            //               ],
                            //             ))
                            //           ],
                            //         )),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                          ],
                        )),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                color.AppColor.colorBlue)),
                        child: Text(
                          "VOLTAR",
                          style: TextStyle(
                              fontSize: 15, color: color.AppColor.colorWhite),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                )),
          ],
        )));
  }
}
