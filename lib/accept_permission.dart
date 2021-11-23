import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart' as color;

class AcceptPermission extends StatefulWidget {
  const AcceptPermission({Key? key}) : super(key: key);

  @override
  _AcceptPermissionState createState() => _AcceptPermissionState();
}

class _AcceptPermissionState extends State<AcceptPermission> {
  @override
  Widget build(BuildContext context) {
    var _safePadding = MediaQuery.of(context).padding.top +
        MediaQuery.of(context).padding.bottom;

    return Scaffold(
        backgroundColor: color.AppColor.colorBlue,
        body: SafeArea(
          child: Container(
              child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
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
                          Text("Permissões",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white)),
                          SizedBox(height: 5),
                        ],
                      ),
                      SizedBox(height: 5),
                      Container(
                          height: 45,
                          child: Column(
                            children: [
                              Text(
                                  "Configure as permissões que o aplicativo Covinfo pode ter acesso.",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white)),
                            ],
                          )),
                      SizedBox(height: 20),
                      Container(
                          height: MediaQuery.of(context).size.height -
                              _safePadding -
                              268,
                          child: Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                        topRight: Radius.circular(80)),
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 0),
                                          blurRadius: 20,
                                          spreadRadius: 5,
                                          color: Colors.black.withOpacity(0.05))
                                    ]),
                              ),
                              SingleChildScrollView(
                                child: Container(
                                    width: double.maxFinite,
                                    padding: EdgeInsets.all(25),
                                    child: Stack(
                                      children: [
                                        Container(
                                            child: Column(
                                          children: [
                                            Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 200,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/img_location.png"),
                                                ))),
                                            SizedBox(height: 20),
                                            Text("Localização",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w900,
                                                    color: Colors.black)),
                                            SizedBox(height: 10),
                                            Text(
                                                "Você pode autorizar a localização do seu dispositivo para facilitar o preenchimentos dos seus dados.",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black))
                                          ],
                                        ))
                                      ],
                                    )),
                              ),
                            ],
                          )),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 20,
                                  spreadRadius: 0,
                                  color: Colors.black.withOpacity(0.2))
                            ]),
                            width: 300,
                            height: 50,
                            child: TextButton(
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
                                    ))),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/user');
                                }),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            child: Text(
                              "PULAR",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: color.AppColor.colorBlue),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/user');
                            }),
                      )
                    ],
                  )),
            ],
          )),
        ));
  }
}
