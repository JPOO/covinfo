import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart' as color;

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

enum SingingCharacter { male, female }

SingingCharacter? _character = SingingCharacter.male;

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color.AppColor.pageBackgroundColor,
        body: Container(
            child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 40, left: 20, right: 20, bottom: 20),
              decoration: BoxDecoration(color: color.AppColor.colorBlue),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.account_circle_outlined,
                              color: Colors.white, size: 30),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 9,
                          child: Text("Informações do diagnóstico positivo",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: color.AppColor.colorWhite)),
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Suas informações são importantes para mantermos a base de dados atualizada.",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16, color: color.AppColor.colorWhite)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.only(
                    top: 40, left: 20, right: 20, bottom: 20),
                child: Column(
                  children: [
                    // Scrollbar(child: Container()),
                    Scrollbar(
                      child: Container(
                          height: MediaQuery.of(context).size.height - 300,
                          child: Scrollbar(
                            child: Form(
                                // key: this._formKey,
                                child: Column(
                              children: [
                                Container(
                                    child: Column(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.only(
                                            top: 5,
                                            left: 7,
                                            right: 7,
                                            bottom: 5),
                                        decoration: BoxDecoration(
                                            color: color.AppColor.colorWhite,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                bottomLeft: Radius.circular(5),
                                                bottomRight: Radius.circular(5),
                                                topRight: Radius.circular(5)),
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: Offset(0, 0),
                                                  blurRadius: 5,
                                                  spreadRadius: 0,
                                                  color: color
                                                      .AppColor.colorBlack
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(Icons.event_outlined,
                                                    color: color
                                                        .AppColor.colorPurple,
                                                    size: 25),
                                                SizedBox(width: 5),
                                                Text("Idade",
                                                    // textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: color.AppColor
                                                            .colorPurple)),
                                              ],
                                            ),
                                          ],
                                        )),
                                    SizedBox(height: 10),
                                    Counter(),
                                  ],
                                )),
                                SizedBox(height: 30),
                                Container(
                                    child: Column(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.only(
                                            top: 5,
                                            left: 7,
                                            right: 7,
                                            bottom: 5),
                                        decoration: BoxDecoration(
                                            color: color.AppColor.colorWhite,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                bottomLeft: Radius.circular(5),
                                                bottomRight: Radius.circular(5),
                                                topRight: Radius.circular(5)),
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: Offset(0, 0),
                                                  blurRadius: 5,
                                                  spreadRadius: 0,
                                                  color: color
                                                      .AppColor.colorBlack
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(Icons.people_alt_outlined,
                                                    color: color
                                                        .AppColor.colorPurple,
                                                    size: 25),
                                                SizedBox(width: 5),
                                                Text("Gênero",
                                                    // textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: color.AppColor
                                                            .colorPurple)),
                                              ],
                                            ),
                                          ],
                                        )),
                                    SizedBox(height: 20),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Radio(
                                              value: SingingCharacter.male,
                                              groupValue: _character,
                                              activeColor:
                                                  color.AppColor.colorPurple,
                                              onChanged:
                                                  (SingingCharacter? value) {
                                                setState(() {
                                                  _character = value;
                                                });
                                              },
                                            ),
                                            Text('Masculino',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: color
                                                        .AppColor.colorText)),
                                            SizedBox(width: 10),
                                            Radio(
                                              value: SingingCharacter.female,
                                              groupValue: _character,
                                              focusColor:
                                                  color.AppColor.colorBlue,
                                              activeColor:
                                                  color.AppColor.colorPurple,
                                              onChanged:
                                                  (SingingCharacter? value) {
                                                setState(() {
                                                  _character = value;
                                                });
                                              },
                                            ),
                                            Text('Feminino',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: color
                                                        .AppColor.colorText)),
                                          ],
                                        ),

                                        // ListTile(
                                        //   title: Text('Masculino',
                                        //       style: TextStyle(
                                        //           fontSize: 18,
                                        //           color: color
                                        //               .AppColor.colorText)),
                                        //   leading: Radio(
                                        //     value: SingingCharacter.male,
                                        //     groupValue: _character,
                                        //     activeColor:
                                        //         color.AppColor.colorPurple,
                                        //     onChanged:
                                        //         (SingingCharacter? value) {
                                        //       setState(() {
                                        //         _character = value;
                                        //       });
                                        //     },
                                        //   ),
                                        // ),
                                        // ListTile(
                                        //   title: Text('Feminino',
                                        //       style: TextStyle(
                                        //           fontSize: 18,
                                        //           color: color
                                        //               .AppColor.colorText)),
                                        //   leading: Radio(
                                        //     value: SingingCharacter.female,
                                        //     groupValue: _character,
                                        //     activeColor:
                                        //         color.AppColor.colorPurple,
                                        //     onChanged:
                                        //         (SingingCharacter? value) {
                                        //       setState(() {
                                        //         _character = value;
                                        //       });
                                        //     },
                                        //   ),
                                        // )
                                      ],
                                    ),
                                  ],
                                )),
                              ],
                            )),
                          )),
                    ),
                    // SizedBox(height: 10),
                    // Container(
                    //   padding: EdgeInsets.zero,
                    //   alignment: Alignment.centerLeft,
                    //   child: TextButton(
                    //     style: ButtonStyle(
                    //         backgroundColor: MaterialStateProperty.all(
                    //             color.AppColor.colorBlue)),
                    //     child: Text(
                    //       "VOLTAR",
                    //       style: TextStyle(
                    //           fontSize: 15, color: color.AppColor.colorWhite),
                    //     ),
                    //     onPressed: () {},
                    //   ),
                    // )
                  ],
                )),
          ],
        )));
  }

  Object newMethod(Object val) => val;
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late int value;

  @override
  void initState() {
    super.initState();
    this.value = 18;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.remove, color: color.AppColor.colorPurple, size: 30),
          onPressed: () {
            setState(() {
              this.value--;
            });
          },
        ),
        Text(this.value.toString() + ' anos',
            style: TextStyle(fontSize: 18, color: color.AppColor.colorText)),
        IconButton(
          icon: Icon(Icons.add, color: color.AppColor.colorPurple, size: 30),
          onPressed: () {
            setState(() {
              this.value++;
            });
          },
        ),
      ],
    );
  }
}
