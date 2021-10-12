import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart' as color;

class Terms extends StatefulWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
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
                    Row(
                      children: [
                        Icon(Icons.check_circle_outline_outlined,
                            color: Colors.white, size: 30),
                        SizedBox(width: 10),
                        Text("Termos de uso",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                                color: color.AppColor.colorWhite)),
                        SizedBox(height: 5),
                      ],
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 45,
                        child: Text("Leia os Termos de uso.",
                            style: TextStyle(
                                fontSize: 16,
                                color: color.AppColor.colorWhite)),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                        height: MediaQuery.of(context).size.height - 235,
                        child: Stack(
                          children: [
                            Container(
                              // height: 500,
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
                          ],
                        )),
                    SizedBox(height: 20),
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
