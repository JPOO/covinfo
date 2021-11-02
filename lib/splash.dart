import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart' as color;

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                gradient: new LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [color.AppColor.colorBlue, color.AppColor.colorPurple],
            )),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(bottom: 80),
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage("assets/img_splash.png"),
                        ))),
                  ],
                ),
                Container(
                    margin: const EdgeInsets.only(bottom: 60),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 5,
                                    spreadRadius: 0,
                                    color: color.AppColor.colorBlack
                                        .withOpacity(0.2)),
                              ],
                              borderRadius: const BorderRadius.all(
                                Radius.circular(100),
                              ),
                            ),
                            child: TextButton(
                                onPressed: () {},
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 20, right: 20, top: 0),
                                      child: Text(
                                        'Iniciar',
                                        style: TextStyle(
                                            fontSize: 21,
                                            fontWeight: FontWeight.w900,
                                            color: color.AppColor.colorPurple),
                                      ),
                                    ),
                                  ],
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    )))),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  "Curso de Sistemas de Informação",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Text(
                                  "UNOCHAPECÓ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
