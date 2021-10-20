import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'color.dart' as color;

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

enum SingingCharacter { male, female }

SingingCharacter? _character = SingingCharacter.male;

class _InfoState extends State<Info> {
  DateTime? _diagnosisDate;

  static GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: color.AppColor.pageBackgroundColor,
        body: SingleChildScrollView(
          child: Container(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 40, left: 30, right: 30, bottom: 20),
                decoration: BoxDecoration(color: color.AppColor.colorBlue),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                fontSize: 16,
                                color: color.AppColor.colorWhite)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  child: Column(
                children: [
                  Container(
                      // height: MediaQuery.of(context).size.height - 176,
                      child: Form(
                          key: _formKey,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 40, left: 30, right: 30, bottom: 0),
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
                                                  color:
                                                      color.AppColor.colorWhite,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5),
                                                          topRight: Radius
                                                              .circular(5)),
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
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      // Icon(Icons.event_outlined,
                                                      //     color:
                                                      //         color.AppColor.colorPurple,
                                                      //     size: 25),
                                                      // SizedBox(width: 5),
                                                      Text("Idade",
                                                          // textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              color: color
                                                                  .AppColor
                                                                  .colorPurple)),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                          SizedBox(height: 25),
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
                                                  color:
                                                      color.AppColor.colorWhite,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5),
                                                          topRight: Radius
                                                              .circular(5)),
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
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      // Icon(Icons.people_alt_outlined,
                                                      //     color:
                                                      //         color.AppColor.colorPurple,
                                                      //     size: 25),
                                                      // SizedBox(width: 5),
                                                      Text("Gênero",
                                                          // textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              color: color
                                                                  .AppColor
                                                                  .colorPurple)),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                          SizedBox(height: 25),
                                          Column(
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Radio(
                                                    value:
                                                        SingingCharacter.male,
                                                    groupValue: _character,
                                                    activeColor: color
                                                        .AppColor.colorPurple,
                                                    onChanged:
                                                        (SingingCharacter?
                                                            value) {
                                                      setState(() {
                                                        _character = value;
                                                      });
                                                    },
                                                  ),
                                                  Text('Masculino',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: color.AppColor
                                                              .colorText)),
                                                  SizedBox(width: 10),
                                                  Radio(
                                                    value:
                                                        SingingCharacter.female,
                                                    groupValue: _character,
                                                    activeColor: color
                                                        .AppColor.colorPurple,
                                                    onChanged:
                                                        (SingingCharacter?
                                                            value) {
                                                      setState(() {
                                                        _character = value;
                                                      });
                                                    },
                                                  ),
                                                  Text('Feminino',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: color.AppColor
                                                              .colorText)),
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
                                                  color:
                                                      color.AppColor.colorWhite,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5),
                                                          topRight: Radius
                                                              .circular(5)),
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
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      // Icon(Icons.person_search_outlined,
                                                      //     color:
                                                      //         color.AppColor.colorPurple,
                                                      //     size: 25),
                                                      // SizedBox(width: 5),
                                                      Text("Raça",
                                                          // textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              color: color
                                                                  .AppColor
                                                                  .colorPurple)),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                          SizedBox(height: 25),
                                          Container(
                                            width: 210,
                                            height: 45,
                                            decoration: BoxDecoration(
                                                color:
                                                    color.AppColor.colorWhite,
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(5),
                                                    bottomLeft:
                                                        Radius.circular(5),
                                                    bottomRight:
                                                        Radius.circular(5),
                                                    topRight:
                                                        Radius.circular(5)),
                                                boxShadow: [
                                                  BoxShadow(
                                                      offset: Offset(0, 0),
                                                      blurRadius: 5,
                                                      spreadRadius: 0,
                                                      color: color
                                                          .AppColor.colorBlack
                                                          .withOpacity(0.1))
                                                ]),
                                            child:
                                                DropdownButtonFormField<String>(
                                              isExpanded: true,
                                              icon: Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: color
                                                      .AppColor.colorPurple,
                                                  size: 30),
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                          top: 10,
                                                          left: 20,
                                                          right: 5,
                                                          bottom: 15)),
                                              hint: Text('Informe a sua raça'),
                                              style: TextStyle(
                                                  color:
                                                      color.AppColor.colorText,
                                                  fontSize: 18),
                                              items: <String>[
                                                'Branca',
                                                'Preta',
                                                'Parda',
                                                'Amarela',
                                                'Indígena'
                                              ].map((String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value,
                                                      style: TextStyle(
                                                          color: color.AppColor
                                                              .colorText,
                                                          fontSize: 18)),
                                                );
                                              }).toList(),
                                              onChanged: (_) {},
                                            ),
                                          ),
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
                                                  color:
                                                      color.AppColor.colorWhite,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5),
                                                          topRight: Radius
                                                              .circular(5)),
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
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      // Icon(Icons.fitness_center_outlined,
                                                      //     color:
                                                      //         color.AppColor.colorPurple,
                                                      //     size: 25),
                                                      // SizedBox(width: 5),
                                                      Text("Peso",
                                                          // textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              color: color
                                                                  .AppColor
                                                                  .colorPurple)),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                          SizedBox(height: 25),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                width: 85,
                                                height: 45,
                                                decoration: BoxDecoration(
                                                    color: color
                                                        .AppColor.colorWhite,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          offset: Offset(0, 0),
                                                          blurRadius: 5,
                                                          spreadRadius: 0,
                                                          color: color.AppColor
                                                              .colorBlack
                                                              .withOpacity(0.1))
                                                    ]),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 10,
                                                              horizontal: 25),
                                                      isDense: true,
                                                      hintText: '70',
                                                      hintStyle: TextStyle(
                                                          color: color.AppColor
                                                              .colorInput,
                                                          fontSize: 18),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        borderSide: BorderSide(
                                                          width: 0,
                                                          style:
                                                              BorderStyle.none,
                                                        ),
                                                      ),
                                                      // border: InputBorder.none,
                                                      fillColor: Colors.white,
                                                      filled: true),
                                                  keyboardType:
                                                      TextInputType.number,
                                                  style: TextStyle(
                                                      color: color
                                                          .AppColor.colorText,
                                                      fontSize: 18),
                                                  maxLines: 1,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Text("Kg",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: color.AppColor
                                                          .colorInput)),
                                            ],
                                          ),
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
                                                  color:
                                                      color.AppColor.colorWhite,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5),
                                                          topRight: Radius
                                                              .circular(5)),
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
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      //   Icon(Icons.straighten_outlined,
                                                      //       color:
                                                      //           color.AppColor.colorPurple,
                                                      //       size: 25),
                                                      //   SizedBox(width: 5),
                                                      Text("Altura",
                                                          // textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              color: color
                                                                  .AppColor
                                                                  .colorPurple)),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                          SizedBox(height: 25),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                width: 85,
                                                height: 45,
                                                decoration: BoxDecoration(
                                                    color: color
                                                        .AppColor.colorWhite,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          offset: Offset(0, 0),
                                                          blurRadius: 5,
                                                          spreadRadius: 0,
                                                          color: color.AppColor
                                                              .colorBlack
                                                              .withOpacity(0.1))
                                                    ]),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 10,
                                                              horizontal: 25),
                                                      isDense: true,
                                                      hintText: '170',
                                                      hintStyle: TextStyle(
                                                          color: color.AppColor
                                                              .colorInput,
                                                          fontSize: 18),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        borderSide: BorderSide(
                                                          width: 0,
                                                          style:
                                                              BorderStyle.none,
                                                        ),
                                                      ),
                                                      // border: InputBorder.none,
                                                      fillColor: Colors.white,
                                                      filled: true),
                                                  keyboardType:
                                                      TextInputType.number,
                                                  style: TextStyle(
                                                      color: color
                                                          .AppColor.colorText,
                                                      fontSize: 18),
                                                  maxLines: 1,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Text("cm",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: color.AppColor
                                                          .colorInput)),
                                            ],
                                          ),
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
                                                  color:
                                                      color.AppColor.colorWhite,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5),
                                                          topRight: Radius
                                                              .circular(5)),
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
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      // Icon(Icons.medication_outlined,
                                                      //     color:
                                                      //         color.AppColor.colorPurple,
                                                      //     size: 25),
                                                      // SizedBox(width: 5),
                                                      Text(
                                                          "Medicamentos e vitaminas",
                                                          // textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              color: color
                                                                  .AppColor
                                                                  .colorPurple)),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                          SizedBox(height: 25),
                                          Container(
                                            // width:
                                            //     MediaQuery.of(context).size.width - 120,
                                            // height: 100,
                                            decoration: BoxDecoration(
                                                color:
                                                    color.AppColor.colorWhite,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                boxShadow: [
                                                  BoxShadow(
                                                      offset: Offset(0, 0),
                                                      blurRadius: 5,
                                                      spreadRadius: 0,
                                                      color: color
                                                          .AppColor.colorBlack
                                                          .withOpacity(0.1))
                                                ]),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 10,
                                                          horizontal: 15),
                                                  isDense: true,
                                                  hintText:
                                                      'Informe os medicamentos e vitaminas que você utiliza.',
                                                  hintStyle: TextStyle(
                                                      color: color
                                                          .AppColor.colorInput,
                                                      fontSize: 18),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    borderSide: BorderSide(
                                                      width: 0,
                                                      style: BorderStyle.none,
                                                    ),
                                                  ),
                                                  fillColor: Colors.white,
                                                  filled: true),
                                              style: TextStyle(
                                                  color:
                                                      color.AppColor.colorText,
                                                  fontSize: 18),
                                              keyboardType:
                                                  TextInputType.multiline,
                                              minLines: 5,
                                              maxLines: null,
                                              // maxLength: 1000,
                                            ),
                                          )
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
                                                  color:
                                                      color.AppColor.colorWhite,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5),
                                                          topRight: Radius
                                                              .circular(5)),
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
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      // Icon(Icons.directions_run_outlined,
                                                      //     color:
                                                      //         color.AppColor.colorPurple,
                                                      //     size: 25),
                                                      // SizedBox(width: 5),
                                                      Text("Atividade física",
                                                          // textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              color: color
                                                                  .AppColor
                                                                  .colorPurple)),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                          SizedBox(height: 25),
                                          Container(
                                            // width:
                                            //     MediaQuery.of(context).size.width - 120,
                                            // height: 100,
                                            decoration: BoxDecoration(
                                                color:
                                                    color.AppColor.colorWhite,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                boxShadow: [
                                                  BoxShadow(
                                                      offset: Offset(0, 0),
                                                      blurRadius: 5,
                                                      spreadRadius: 0,
                                                      color: color
                                                          .AppColor.colorBlack
                                                          .withOpacity(0.1))
                                                ]),
                                            child: TextField(
                                                decoration: InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 15),
                                                    isDense: true,
                                                    hintText:
                                                        'Informe se você realiza a prática de exercícios físicos',
                                                    hintStyle: TextStyle(
                                                        color: color.AppColor
                                                            .colorInput,
                                                        fontSize: 18),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      borderSide: BorderSide(
                                                        width: 0,
                                                        style: BorderStyle.none,
                                                      ),
                                                    ),
                                                    fillColor: Colors.white,
                                                    filled: true),
                                                style: TextStyle(
                                                    color: color
                                                        .AppColor.colorText,
                                                    fontSize: 18),
                                                keyboardType:
                                                    TextInputType.multiline,
                                                minLines: 5,
                                                maxLines: null),
                                          )
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
                                                  color:
                                                      color.AppColor.colorWhite,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5),
                                                          topRight: Radius
                                                              .circular(5)),
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
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      // Icon(Icons.edit_location_outlined,
                                                      //     color:
                                                      //         color.AppColor.colorPurple,
                                                      //     size: 25),
                                                      // SizedBox(width: 5),
                                                      Text(
                                                          "Local do diagnóstico",
                                                          // textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              color: color
                                                                  .AppColor
                                                                  .colorPurple)),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                          SizedBox(height: 25),
                                          Container(
                                            // width:
                                            //     MediaQuery.of(context).size.width - 120,
                                            height: 45,
                                            decoration: BoxDecoration(
                                                color:
                                                    color.AppColor.colorWhite,
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                boxShadow: [
                                                  BoxShadow(
                                                      offset: Offset(0, 0),
                                                      blurRadius: 5,
                                                      spreadRadius: 0,
                                                      color: color
                                                          .AppColor.colorBlack
                                                          .withOpacity(0.1))
                                                ]),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 10,
                                                          horizontal: 25),
                                                  isDense: true,
                                                  hintText: 'Chapecó, SC',
                                                  hintStyle: TextStyle(
                                                      color: color
                                                          .AppColor.colorInput,
                                                      fontSize: 18),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    borderSide: BorderSide(
                                                      width: 0,
                                                      style: BorderStyle.none,
                                                    ),
                                                  ),
                                                  // border: InputBorder.none,
                                                  fillColor: Colors.white,
                                                  filled: true),
                                              style: TextStyle(
                                                  color:
                                                      color.AppColor.colorText,
                                                  fontSize: 18),
                                              maxLines: 1,
                                            ),
                                          )
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
                                                  color:
                                                      color.AppColor.colorWhite,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5),
                                                          topRight: Radius
                                                              .circular(5)),
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
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      // Icon(Icons.event_outlined,
                                                      //     color:
                                                      //         color.AppColor.colorPurple,
                                                      //     size: 25),
                                                      // SizedBox(width: 5),
                                                      Text(
                                                          'Data do diagnóstico',
                                                          // textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              color: color
                                                                  .AppColor
                                                                  .colorPurple)),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                          SizedBox(height: 25),
                                          Text(
                                              _diagnosisDate == null
                                                  ? 'Nenhuma data selecionada'
                                                  : DateFormat('dd/MM/yyyy')
                                                      .format(_diagnosisDate),
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: color
                                                      .AppColor.colorInput)),
                                          Container(
                                            child: TextButton(
                                                style: ButtonStyle(
                                                    padding:
                                                        MaterialStateProperty
                                                            .all(EdgeInsets
                                                                .symmetric(
                                                                    vertical: 0,
                                                                    horizontal:
                                                                        20)),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(color.AppColor
                                                                .colorBlue),
                                                    shape: MaterialStateProperty
                                                        .all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                    ))),
                                                child: Text(
                                                  _diagnosisDate == null
                                                      ? 'Defina uma data'
                                                      : 'Defina uma nova data',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: color
                                                          .AppColor.colorWhite),
                                                ),
                                                onPressed: () {
                                                  showDatePicker(
                                                          context: context,
                                                          initialDate:
                                                              DateTime.now(),
                                                          firstDate: DateTime(
                                                              2019, 12, 1),
                                                          lastDate:
                                                              DateTime.now())
                                                      .then((date) {
                                                    setState(() {
                                                      _diagnosisDate = date;
                                                    });
                                                  });
                                                }),
                                          )
                                        ],
                                      )),
                                      // SizedBox(height: 30),
                                      // Container(
                                      //     child: Column(
                                      //   children: [
                                      //     Container(
                                      //         padding: const EdgeInsets.only(
                                      //             top: 5, left: 7, right: 7, bottom: 5),
                                      //         decoration: BoxDecoration(
                                      //             color: color.AppColor.colorWhite,
                                      //             borderRadius: BorderRadius.only(
                                      //                 topLeft: Radius.circular(5),
                                      //                 bottomLeft: Radius.circular(5),
                                      //                 bottomRight: Radius.circular(5),
                                      //                 topRight: Radius.circular(5)),
                                      //             boxShadow: [
                                      //               BoxShadow(
                                      //                   offset: Offset(0, 0),
                                      //                   blurRadius: 5,
                                      //                   spreadRadius: 0,
                                      //                   color: color.AppColor.colorBlack
                                      //                       .withOpacity(0.1))
                                      //             ]),
                                      //         child: Column(
                                      //           crossAxisAlignment:
                                      //               CrossAxisAlignment.start,
                                      //           children: [
                                      //             Row(
                                      //               mainAxisSize: MainAxisSize.min,
                                      //               children: [
                                      //                 Icon(Icons.event_outlined,
                                      //                     color: color
                                      //                         .AppColor.colorPurple,
                                      //                     size: 25),
                                      //                 SizedBox(width: 5),
                                      //                 Text('Data de fim dos sintomas',
                                      //                     // textAlign: TextAlign.left,
                                      //                     style: TextStyle(
                                      //                         fontSize: 18,
                                      //                         color: color.AppColor
                                      //                             .colorPurple)),
                                      //               ],
                                      //             ),
                                      //           ],
                                      //         )),
                                      //     SizedBox(height: 25),
                                      //     Text(
                                      //         _syptomEndDate == null
                                      //             ? 'Nenhuma data selecionada'
                                      //             : DateFormat('dd/MM/yyyy')
                                      //                 .format(_syptomEndDate),
                                      //         style: TextStyle(
                                      //             fontSize: 18,
                                      //             color: color.AppColor.colorInput)),
                                      //     Container(
                                      //       child: TextButton(
                                      //           style: ButtonStyle(
                                      //               padding: MaterialStateProperty.all(
                                      //                   EdgeInsets.symmetric(
                                      //                       vertical: 0,
                                      //                       horizontal: 20)),
                                      //               backgroundColor:
                                      //                   MaterialStateProperty.all(
                                      //                       color.AppColor.colorBlue),
                                      //               shape: MaterialStateProperty.all<
                                      //                       RoundedRectangleBorder>(
                                      //                   RoundedRectangleBorder(
                                      //                 borderRadius:
                                      //                     BorderRadius.circular(100),
                                      //               ))),
                                      //           child: Text(
                                      //             _syptomEndDate == null
                                      //                 ? 'Escolha uma data'
                                      //                 : 'Escolha uma nova data',
                                      //             style: TextStyle(
                                      //                 fontSize: 15,
                                      //                 color: color.AppColor.colorWhite),
                                      //           ),
                                      //           onPressed: () {
                                      //             showDatePicker(
                                      //                     context: context,
                                      //                     initialDate: DateTime.now(),
                                      //                     firstDate:
                                      //                         DateTime(2019, 12, 1),
                                      //                     lastDate: DateTime.now())
                                      //                 .then((date) {
                                      //               setState(() {
                                      //                 _syptomEndDate = date;
                                      //               });
                                      //             });
                                      //           }),
                                      //     )
                                      //   ],
                                      // )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ))),
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
          )),
        ));
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
