import 'package:covinfo/models/userModel.dart';
import 'package:covinfo/services/userService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'fields.dart';
import 'models/userModel.dart';

import 'color.dart' as color;

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  int _age = 18;

  String? _gender = 'male';

  String? _race;

  String? _bloodType;

  String? _medicines;

  String? _physicalActivities;

  String? _local;

  double? _weight;

  double? _height;

  DateTime? _diagnosisDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: color.AppColor.colorBlue,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
                child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.account_circle_outlined,
                              color: Colors.white, size: 30),
                          SizedBox(width: 10),
                          Text("Dados do paciente",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white)),
                          SizedBox(height: 5),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Suas informações são muito importantes para mantermos a base de dados atualizada.",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: color.AppColor.pageBackgroundColor),
                    child: Column(
                      children: [
                        Container(
                            child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Form(
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Column(children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Stack(children: [
                                            Container(
                                                padding: const EdgeInsets.only(
                                                    top: 5,
                                                    left: 7,
                                                    right: 7,
                                                    bottom: 5),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          offset: Offset(0, 0),
                                                          blurRadius: 5,
                                                          spreadRadius: 0,
                                                          color: Colors.black
                                                              .withOpacity(0.1))
                                                    ]),
                                                child: Text('Idade',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: color.AppColor
                                                            .colorPurple))),
                                          ]),
                                        ),
                                        SizedBox(height: 20)
                                      ]),
                                      Column(
                                        children: [
                                          Text(_age.toString() + ' anos',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: color
                                                      .AppColor.colorPurple)),
                                          Slider(
                                            value: _age.toDouble(),
                                            min: 18,
                                            max: 120,
                                            onChanged: (value) {
                                              setState(() {
                                                _age = value.toInt();
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Column(children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Stack(children: [
                                            Container(
                                                padding: const EdgeInsets.only(
                                                    top: 5,
                                                    left: 7,
                                                    right: 7,
                                                    bottom: 5),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          offset: Offset(0, 0),
                                                          blurRadius: 5,
                                                          spreadRadius: 0,
                                                          color: Colors.black
                                                              .withOpacity(0.1))
                                                    ]),
                                                child: Text('Gênero',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: color.AppColor
                                                            .colorPurple))),
                                          ]),
                                        ),
                                        SizedBox(height: 20)
                                      ]),
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Radio(
                                                value: 'male',
                                                groupValue: _gender,
                                                activeColor:
                                                    color.AppColor.colorPurple,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _gender = value.toString();
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
                                                value: 'female',
                                                groupValue: _gender,
                                                activeColor:
                                                    color.AppColor.colorPurple,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _gender = value.toString();
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
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Column(children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Stack(children: [
                                            Container(
                                                padding: const EdgeInsets.only(
                                                    top: 5,
                                                    left: 7,
                                                    right: 7,
                                                    bottom: 5),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          offset: Offset(0, 0),
                                                          blurRadius: 5,
                                                          spreadRadius: 0,
                                                          color: Colors.black
                                                              .withOpacity(0.1))
                                                    ]),
                                                child: Text('Raça',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: color.AppColor
                                                            .colorPurple))),
                                          ]),
                                        ),
                                        SizedBox(height: 20)
                                      ]),
                                      Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                boxShadow: [
                                                  BoxShadow(
                                                      offset: Offset(0, 0),
                                                      blurRadius: 5,
                                                      spreadRadius: 0,
                                                      color: Colors.black
                                                          .withOpacity(0.1))
                                                ]),
                                            child: DropdownButtonFormField(
                                              // isExpanded: true,
                                              value: _race,
                                              icon: Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: color
                                                      .AppColor.colorPurple,
                                                  size: 30),
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 15),
                                              ),
                                              hint:
                                                  Text('Selecione a sua raça'),
                                              items: [
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
                                              onChanged: (value) {
                                                _race = value.toString();
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Column(children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Stack(children: [
                                            Container(
                                                padding: const EdgeInsets.only(
                                                    top: 5,
                                                    left: 7,
                                                    right: 7,
                                                    bottom: 5),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          offset: Offset(0, 0),
                                                          blurRadius: 5,
                                                          spreadRadius: 0,
                                                          color: Colors.black
                                                              .withOpacity(0.1))
                                                    ]),
                                                child: Text('Tipo sanguíneo',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: color.AppColor
                                                            .colorPurple))),
                                          ]),
                                        ),
                                        SizedBox(height: 20)
                                      ]),
                                      Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                boxShadow: [
                                                  BoxShadow(
                                                      offset: Offset(0, 0),
                                                      blurRadius: 5,
                                                      spreadRadius: 0,
                                                      color: Colors.black
                                                          .withOpacity(0.1))
                                                ]),
                                            child: DropdownButtonFormField(
                                              // isExpanded: true,
                                              value: _race,
                                              icon: Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: color
                                                      .AppColor.colorPurple,
                                                  size: 30),
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 15),
                                              ),
                                              hint: Text(
                                                  'Selecione o seu tipo sanguíneo'),
                                              items: [
                                                'A+',
                                                'A-',
                                                'B+',
                                                'B-',
                                                'AB+',
                                                'AB-',
                                                '0+',
                                                'O-'
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
                                              onChanged: (value) {
                                                _bloodType = value.toString();
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Column(children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Stack(children: [
                                            Container(
                                                padding: const EdgeInsets.only(
                                                    top: 5,
                                                    left: 7,
                                                    right: 7,
                                                    bottom: 5),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          offset: Offset(0, 0),
                                                          blurRadius: 5,
                                                          spreadRadius: 0,
                                                          color: Colors.black
                                                              .withOpacity(0.1))
                                                    ]),
                                                child: Text('Peso',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: color.AppColor
                                                            .colorPurple))),
                                          ]),
                                        ),
                                        SizedBox(height: 20)
                                      ]),
                                      Column(
                                        children: [
                                          Container(
                                            width: 75,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                boxShadow: [
                                                  BoxShadow(
                                                      offset: Offset(0, 0),
                                                      blurRadius: 5,
                                                      spreadRadius: 0,
                                                      color: Colors.black
                                                          .withOpacity(0.1))
                                                ]),
                                            child: TextFormField(
                                              // controller: _weight,
                                              keyboardType:
                                                  TextInputType.number,
                                              minLines: 1,
                                              maxLines: 1,
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 10,
                                                          horizontal: 15),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    borderSide: BorderSide(
                                                      width: 0,
                                                      style: BorderStyle.none,
                                                    ),
                                                  ),
                                                  hintText: '70 Kg',
                                                  hintStyle: TextStyle(
                                                      color: color
                                                          .AppColor.colorInput,
                                                      fontSize: 16),
                                                  fillColor: Colors.white,
                                                  filled: true,
                                                  isDense: true),
                                              style: TextStyle(
                                                  color:
                                                      color.AppColor.colorText,
                                                  fontSize: 18),
                                              onChanged: (value) {
                                                _weight = double.parse(value);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Column(children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Stack(children: [
                                            Container(
                                                padding: const EdgeInsets.only(
                                                    top: 5,
                                                    left: 7,
                                                    right: 7,
                                                    bottom: 5),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          offset: Offset(0, 0),
                                                          blurRadius: 5,
                                                          spreadRadius: 0,
                                                          color: Colors.black
                                                              .withOpacity(0.1))
                                                    ]),
                                                child: Text('Altura',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: color.AppColor
                                                            .colorPurple))),
                                          ]),
                                        ),
                                        SizedBox(height: 20)
                                      ]),
                                      Column(
                                        children: [
                                          Container(
                                            width: 85,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                boxShadow: [
                                                  BoxShadow(
                                                      offset: Offset(0, 0),
                                                      blurRadius: 5,
                                                      spreadRadius: 0,
                                                      color: Colors.black
                                                          .withOpacity(0.1))
                                                ]),
                                            child: TextFormField(
                                              // controller: _height,
                                              keyboardType:
                                                  TextInputType.number,
                                              minLines: 1,
                                              maxLines: 1,
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 10,
                                                          horizontal: 15),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    borderSide: BorderSide(
                                                      width: 0,
                                                      style: BorderStyle.none,
                                                    ),
                                                  ),
                                                  hintText: '175 cm',
                                                  hintStyle: TextStyle(
                                                      color: color
                                                          .AppColor.colorInput,
                                                      fontSize: 16),
                                                  fillColor: Colors.white,
                                                  filled: true,
                                                  isDense: true),
                                              style: TextStyle(
                                                  color:
                                                      color.AppColor.colorText,
                                                  fontSize: 18),
                                              onChanged: (value) {
                                                _height = double.parse(value);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Column(children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Stack(children: [
                                            Container(
                                                padding: const EdgeInsets.only(
                                                    top: 5,
                                                    left: 7,
                                                    right: 7,
                                                    bottom: 5),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          offset: Offset(0, 0),
                                                          blurRadius: 5,
                                                          spreadRadius: 0,
                                                          color: Colors.black
                                                              .withOpacity(0.1))
                                                    ]),
                                                child: Text(
                                                    'Medicamentos e vitaminas',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: color.AppColor
                                                            .colorPurple))),
                                          ]),
                                        ),
                                        SizedBox(height: 20)
                                      ]),
                                      Column(
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        offset: Offset(0, 0),
                                                        blurRadius: 5,
                                                        spreadRadius: 0,
                                                        color: Colors.black
                                                            .withOpacity(0.1))
                                                  ]),
                                              child: TextFormField(
                                                // controller: _medicines,
                                                keyboardType:
                                                    TextInputType.text,
                                                minLines: 5,
                                                maxLines: null,
                                                decoration: InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 15),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      borderSide: BorderSide(
                                                        width: 0,
                                                        style: BorderStyle.none,
                                                      ),
                                                    ),
                                                    hintText:
                                                        'Informe os medicamentos e vitaminas que você normalmente utiliza',
                                                    hintStyle: TextStyle(
                                                        color: color.AppColor
                                                            .colorInput,
                                                        fontSize: 16),
                                                    fillColor: Colors.white,
                                                    filled: true,
                                                    isDense: true),
                                                style: TextStyle(
                                                    color: color
                                                        .AppColor.colorText,
                                                    fontSize: 18),
                                                onChanged: (value) {
                                                  _medicines = value;
                                                },
                                              )),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Column(children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Stack(children: [
                                            Container(
                                                padding: const EdgeInsets.only(
                                                    top: 5,
                                                    left: 7,
                                                    right: 7,
                                                    bottom: 5),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          offset: Offset(0, 0),
                                                          blurRadius: 5,
                                                          spreadRadius: 0,
                                                          color: Colors.black
                                                              .withOpacity(0.1))
                                                    ]),
                                                child: Text(
                                                    'Atívidades físicas',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: color.AppColor
                                                            .colorPurple))),
                                          ]),
                                        ),
                                        SizedBox(height: 20)
                                      ]),
                                      Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                boxShadow: [
                                                  BoxShadow(
                                                      offset: Offset(0, 0),
                                                      blurRadius: 5,
                                                      spreadRadius: 0,
                                                      color: Colors.black
                                                          .withOpacity(0.1))
                                                ]),
                                            child: TextFormField(
                                              keyboardType: TextInputType.text,
                                              minLines: 5,
                                              maxLines: null,
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 10,
                                                          horizontal: 15),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    borderSide: BorderSide(
                                                      width: 0,
                                                      style: BorderStyle.none,
                                                    ),
                                                  ),
                                                  hintText:
                                                      'Informe as atividades físicas que você normalmente pratica',
                                                  hintStyle: TextStyle(
                                                      color: color
                                                          .AppColor.colorInput,
                                                      fontSize: 16),
                                                  fillColor: Colors.white,
                                                  filled: true,
                                                  isDense: true),
                                              style: TextStyle(
                                                  color:
                                                      color.AppColor.colorText,
                                                  fontSize: 18),
                                              onChanged: (value) {
                                                _physicalActivities = value;
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Column(children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Stack(children: [
                                            Container(
                                                padding: const EdgeInsets.only(
                                                    top: 5,
                                                    left: 7,
                                                    right: 7,
                                                    bottom: 5),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          offset: Offset(0, 0),
                                                          blurRadius: 5,
                                                          spreadRadius: 0,
                                                          color: Colors.black
                                                              .withOpacity(0.1))
                                                    ]),
                                                child: Text(
                                                    'Local do diagnóstico',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: color.AppColor
                                                            .colorPurple))),
                                          ]),
                                        ),
                                        SizedBox(height: 20)
                                      ]),
                                      Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                boxShadow: [
                                                  BoxShadow(
                                                      offset: Offset(0, 0),
                                                      blurRadius: 5,
                                                      spreadRadius: 0,
                                                      color: Colors.black
                                                          .withOpacity(0.1))
                                                ]),
                                            child: TextFormField(
                                              // controller: _local,
                                              keyboardType: TextInputType.text,
                                              minLines: 1,
                                              maxLines: 1,
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 10,
                                                          horizontal: 15),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    borderSide: BorderSide(
                                                      width: 0,
                                                      style: BorderStyle.none,
                                                    ),
                                                  ),
                                                  hintText: 'Chapecó, SC',
                                                  hintStyle: TextStyle(
                                                      color: color
                                                          .AppColor.colorInput,
                                                      fontSize: 16),
                                                  fillColor: Colors.white,
                                                  filled: true,
                                                  isDense: true),
                                              style: TextStyle(
                                                  color:
                                                      color.AppColor.colorText,
                                                  fontSize: 18),
                                              onChanged: (value) {
                                                _local = value;
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Column(children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Stack(children: [
                                            Container(
                                                padding: const EdgeInsets.only(
                                                    top: 5,
                                                    left: 7,
                                                    right: 7,
                                                    bottom: 5),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          offset: Offset(0, 0),
                                                          blurRadius: 5,
                                                          spreadRadius: 0,
                                                          color: Colors.black
                                                              .withOpacity(0.1))
                                                    ]),
                                                child: Text(
                                                    'Data do diagnóstico',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: color.AppColor
                                                            .colorPurple))),
                                          ]),
                                        ),
                                        SizedBox(height: 20)
                                      ]),
                                      Column(
                                        children: [
                                          Text(
                                              _diagnosisDate == null
                                                  ? 'Nenhuma data selecionada'
                                                  : DateFormat('dd/MM/yyyy')
                                                      .format(_diagnosisDate),
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: color
                                                      .AppColor.colorText)),
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
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(boxShadow: [
                                              BoxShadow(
                                                  offset: Offset(0, 0),
                                                  blurRadius: 20,
                                                  spreadRadius: 0,
                                                  color: color
                                                      .AppColor.colorBlack
                                                      .withOpacity(0.2))
                                            ]),
                                            width: 300,
                                            height: 50,
                                            child: TextButton(
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      'Continuar',
                                                      style: TextStyle(
                                                          fontSize: 19,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 5),
                                                    child: Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          color.AppColor
                                                              .colorBlue),
                                                  shape: MaterialStateProperty
                                                      .all<RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                  ))),
                                              onPressed: () {
                                                final user = UserModel(
                                                    age: _age,
                                                    gender: _gender,
                                                    race: _race,
                                                    bloodType: _bloodType,
                                                    height: _height,
                                                    weight: _weight,
                                                    physicalActivities:
                                                        _physicalActivities,
                                                    medicines: _medicines,
                                                    local: _local,
                                                    diagnosisDate:
                                                        _diagnosisDate);

                                                final userService =
                                                    UserService();

                                                Future<UserModel> _userModel;
                                                _userModel =
                                                    userService.postUser(user);

                                                _userModel.then((user) {
                                                  if (user.id == null) {
                                                    Fluttertoast.showToast(
                                                        msg:
                                                            "Erro ao salvar dados.",
                                                        toastLength:
                                                            Toast.LENGTH_LONG,
                                                        gravity: ToastGravity
                                                            .BOTTOM_LEFT,
                                                        backgroundColor:
                                                            Colors.red,
                                                        textColor: Colors.white,
                                                        fontSize: 16);
                                                  } else {
                                                    Fluttertoast.showToast(
                                                        msg:
                                                            "Dados salvos com sucesso!",
                                                        toastLength:
                                                            Toast.LENGTH_LONG,
                                                        gravity: ToastGravity
                                                            .BOTTOM_LEFT,
                                                        backgroundColor:
                                                            Colors.green,
                                                        textColor: Colors.white,
                                                        fontSize: 16);

                                                    Navigator.pushNamed(
                                                        context, '/diagnosis');
                                                  }
                                                });
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                      ],
                    )),
              ],
            )),
          ),
        ));
  }
}
