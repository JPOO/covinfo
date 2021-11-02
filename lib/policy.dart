import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart' as color;

class Policy extends StatefulWidget {
  const Policy({Key? key}) : super(key: key);

  @override
  _PolicyState createState() => _PolicyState();
}

class _PolicyState extends State<Policy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color.AppColor.colorBlue,
        body: SafeArea(
          child: Container(
              child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 250,
                margin: const EdgeInsets.only(top: 250),
                decoration:
                    BoxDecoration(color: color.AppColor.pageBackgroundColor),
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check_circle_outline_outlined,
                              color: Colors.white, size: 30),
                          SizedBox(width: 10),
                          Text("Política de privacidade",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white)),
                          SizedBox(height: 5),
                        ],
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 45,
                          child: Text(
                              "Leia e entenda a Política de privacidade.",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: color.AppColor.colorWhite)),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                          height: MediaQuery.of(context).size.height - 266,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 0),
                                          blurRadius: 20,
                                          spreadRadius: 5,
                                          color: Colors.black.withOpacity(0.05))
                                    ]),
                              ),
                              Scrollbar(
                                child: ListView.builder(
                                  padding: EdgeInsets.all(25),
                                  shrinkWrap: true,
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return Container(
                                        child: Column(
                                      children: [
                                        Text(
                                            "1. Como responder ao Questinário? ",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w900,
                                                color:
                                                    color.AppColor.colorText)),
                                        SizedBox(height: 20),
                                        Text(
                                            "A Política de privacidade está separada em sessões para um melhor entendi-mento. Você pode reler quantas vezes quiser na seção \"POLÍTICA DE PRIVA-CIDADE\" na tela inicial do aplicativo.",
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color:
                                                    color.AppColor.colorText)),
                                        SizedBox(height: 20),
                                      ],
                                    ));
                                  },
                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          child: Text(
                            "VOLTAR",
                            style: TextStyle(
                                fontSize: 15, color: color.AppColor.colorBlue),
                          ),
                          onPressed: () => Navigator.pop(context, false),
                        ),
                      )
                    ],
                  )),
            ],
          )),
        ));
  }
}
