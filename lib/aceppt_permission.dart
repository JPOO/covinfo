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
    return Scaffold(
        backgroundColor: color.AppColor.pageBackgroundColor,
        body: SafeArea(
          child: Container(
              child: Stack(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(color: color.AppColor.colorBlue),
              ),
              Container(
                  padding: const EdgeInsets.only(
                      top: 0, left: 40, right: 40, bottom: 20),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.check_circle_outline_outlined,
                                color: Colors.white, size: 30),
                            SizedBox(width: 10),
                            Text("Permissões",
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
                        children: [
                          Text(
                              "Configure as permissões que o aplicativo Covinfo pode ter acesso.",
                              textAlign: TextAlign.left,
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
                            height: 460,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: color.AppColor.colorWhite,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25),
                                    topRight: Radius.circular(80)),
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
                                  left: 50, top: 40, right: 50, bottom: 40),
                              child: Stack(
                                children: [
                                  Container(
                                      child: Column(
                                    children: [
                                      Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 200,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                            image: AssetImage(
                                                "assets/img_location.png"),
                                          ))),
                                      SizedBox(height: 10),
                                      Text("Localização",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w900,
                                              color:
                                                  color.AppColor.colorBlack)),
                                      SizedBox(height: 10),
                                      Text(
                                          "Você pode autorizar a localização do seu dispositivo para uma experiência mais rica.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: color.AppColor.colorBlack))
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
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          child: Text(
                            "PULAR",
                            style: TextStyle(
                                fontSize: 15,
                                color: color.AppColor.colorPurple),
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  )),
            ],
          )),
        ));
  }
}
