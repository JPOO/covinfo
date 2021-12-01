import 'package:covinfo/models/diagnosisModel.dart';
import 'package:covinfo/service.dart';
import 'package:covinfo/services/diagnosisService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:intl/intl.dart';
import 'color.dart' as color;

class Diagnosis extends StatefulWidget {
  @override
  _DiagnosisState createState() => _DiagnosisState();
}

class _DiagnosisState extends State<Diagnosis> {
  String? _riskFactors;

  DateTime? _symptomsOnsetDate, _symptomsEndDate;

  String? _symptoms;

  String? _afterEffects;

  int _selectedTab = 0;
  late PageController _pageController;

  void changeTab(int pageNum) {
    setState(() {
      _selectedTab = pageNum;
      _pageController.animateToPage(
        pageNum,
        duration: Duration(milliseconds: 1000),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    });
  }

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
              gradient: new LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [color.AppColor.colorBlue, color.AppColor.colorPurple],
          )),
          child: SafeArea(
            child: Container(
                decoration: BoxDecoration(
                    gradient: new LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    color.AppColor.colorBlue,
                    color.AppColor.colorPurple
                  ],
                )),
                child: Stack(children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Icon(Icons.fact_check_outlined,
                                        color: Colors.white, size: 30),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    flex: 9,
                                    child: Text("Questionário",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            SingleChildScrollView(
                              child: Container(
                                height: 40,
                                child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            TabButton(
                                              text: "Fatores de risco",
                                              pageNumber: 0,
                                              selectedPage: _selectedTab,
                                              onPressed: () {
                                                changeTab(0);
                                              },
                                            ),
                                            TabButton(
                                              text: "Sintomas",
                                              pageNumber: 1,
                                              selectedPage: _selectedTab,
                                              onPressed: () {
                                                changeTab(1);
                                              },
                                            ),
                                            TabButton(
                                              text: "Sequelas",
                                              pageNumber: 2,
                                              selectedPage: _selectedTab,
                                              onPressed: () {
                                                changeTab(2);
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    scrollDirection: Axis.horizontal),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Form(
                        child: Expanded(
                            child: Container(
                          child: PageView(
                            onPageChanged: (int page) {
                              setState(() {
                                _selectedTab = page;
                              });
                            },
                            controller: _pageController,
                            children: [
                              SingleChildScrollView(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: color.AppColor.pageBackgroundColor,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(80),
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                        topRight: Radius.circular(0)),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(
                                            top: 20,
                                            right: 20,
                                            bottom: 20,
                                            left: 60),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(80),
                                                bottomLeft: Radius.circular(0),
                                                bottomRight: Radius.circular(0),
                                                topRight: Radius.circular(0)),
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: Offset(0, 5),
                                                  blurRadius: 5,
                                                  spreadRadius: 0,
                                                  color: Colors.black
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Icon(
                                                      Icons.info_outlined,
                                                      color: color
                                                          .AppColor.colorPurple,
                                                      size: 22),
                                                ),
                                                Expanded(
                                                  flex: 9,
                                                  child: Text(
                                                      "Dica: Você pode informar vários Fatores de risco que possui. Não se limite a apenas um! Caso não possua, você pode pular esta etapa tocando no botão \"Continuar\".",
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: color.AppColor
                                                              .colorPurple)),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("Fatores de risco",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: color
                                                          .AppColor.colorBlue)),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                                "Informe Fatores de risco que você possui ou possuía durante o período de infecção pela COVID-19.",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: color
                                                        .AppColor.colorText)),
                                            SizedBox(height: 30),
                                            Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          offset: Offset(0, 0),
                                                          blurRadius: 5,
                                                          spreadRadius: 0,
                                                          color: Colors.black
                                                              .withOpacity(0.1))
                                                    ]),
                                                child: TextFormField(
                                                  keyboardType:
                                                      TextInputType.text,
                                                  minLines: 5,
                                                  maxLines: null,
                                                  decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 10,
                                                              horizontal: 15),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                          width: 0,
                                                          style:
                                                              BorderStyle.none,
                                                        ),
                                                      ),
                                                      hintText:
                                                          'Informe os fatores de risco que você possui',
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
                                                    _riskFactors = value;
                                                  },
                                                )),
                                            SizedBox(height: 30),
                                            Column(
                                              children: [
                                                Container(
                                                  decoration:
                                                      BoxDecoration(boxShadow: [
                                                    BoxShadow(
                                                        offset: Offset(0, 0),
                                                        blurRadius: 20,
                                                        spreadRadius: 0,
                                                        color: Colors.black
                                                            .withOpacity(0.2))
                                                  ]),
                                                  width: 300,
                                                  height: 50,
                                                  child: TextButton(
                                                    child: Stack(
                                                      children: [
                                                        Container(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            'Continuar',
                                                            style: TextStyle(
                                                                fontSize: 19,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                        Container(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
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
                                                            MaterialStateProperty
                                                                .all(color
                                                                    .AppColor
                                                                    .colorBlue),
                                                        shape: MaterialStateProperty.all<
                                                                RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                        ))),
                                                    onPressed: () {
                                                      changeTab(1);
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Container(
                                              padding: EdgeInsets.zero,
                                              alignment: Alignment.centerLeft,
                                              child: TextButton(
                                                child: Text(
                                                  "VOLTAR",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: color
                                                          .AppColor.colorBlue),
                                                ),
                                                onPressed: () => Navigator.pop(
                                                    context, false),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SingleChildScrollView(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: color.AppColor.pageBackgroundColor,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 40),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: Offset(0, 5),
                                                  blurRadius: 5,
                                                  spreadRadius: 0,
                                                  color: Colors.black
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Icon(
                                                      Icons.info_outlined,
                                                      color: color
                                                          .AppColor.colorPurple,
                                                      size: 22),
                                                ),
                                                Expanded(
                                                  flex: 9,
                                                  child: Text(
                                                      "Dica: Os Sintomas da Covid-19 podem ser diferentes para cada indivído. Caso seja assintomático, você pode pular esta etapa tocando no botão \"Continuar\".",
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: color.AppColor
                                                              .colorPurple)),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("Sintomas",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 26,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: color
                                                          .AppColor.colorBlue)),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                                "Descreva os sintomas que você percebe ou perecebeu durante o período de infecção pela COVID-19. Todo e qualquer sinal de desconforto, mesmo que pequeno, é relevante para esta pesquisa.",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: color
                                                        .AppColor.colorText)),
                                            SizedBox(height: 30),
                                            Column(children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: Stack(children: [
                                                  Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 6,
                                                              left: 12,
                                                              right: 12,
                                                              bottom: 6),
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          boxShadow: [
                                                            BoxShadow(
                                                                offset: Offset(
                                                                    0, 0),
                                                                blurRadius: 5,
                                                                spreadRadius: 0,
                                                                color: Colors
                                                                    .black
                                                                    .withOpacity(
                                                                        0.1))
                                                          ]),
                                                      child: Text(
                                                          'Data do início dos sintomas',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: color
                                                                  .AppColor
                                                                  .colorPurple))),
                                                ]),
                                              ),
                                              SizedBox(height: 25)
                                            ]),
                                            Column(
                                              children: [
                                                Text(
                                                    _symptomsOnsetDate == null
                                                        ? 'Nenhuma data selecionada'
                                                        : DateFormat(
                                                                'dd/MM/yyyy')
                                                            .format(
                                                                _symptomsOnsetDate!),
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: color.AppColor
                                                            .colorText)),
                                                Container(
                                                  child: TextButton(
                                                      style: ButtonStyle(
                                                          padding: MaterialStateProperty
                                                              .all(EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          0,
                                                                      horizontal:
                                                                          20)),
                                                          backgroundColor:
                                                              MaterialStateProperty
                                                                  .all(color
                                                                      .AppColor
                                                                      .colorBlue),
                                                          shape: MaterialStateProperty.all<
                                                                  RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                          ))),
                                                      child: Text(
                                                        _symptomsOnsetDate ==
                                                                null
                                                            ? 'Defina uma data'
                                                            : 'Defina uma nova data',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      onPressed: () {
                                                        showDatePicker(
                                                                context:
                                                                    context,
                                                                initialDate:
                                                                    DateTime
                                                                        .now(),
                                                                firstDate:
                                                                    DateTime(
                                                                        2019,
                                                                        12,
                                                                        1),
                                                                lastDate:
                                                                    DateTime
                                                                        .now())
                                                            .then((date) {
                                                          setState(() {
                                                            _symptomsOnsetDate =
                                                                date;
                                                          });
                                                        });
                                                      }),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 30),
                                            Column(children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: Stack(children: [
                                                  Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 6,
                                                              left: 12,
                                                              right: 12,
                                                              bottom: 6),
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          boxShadow: [
                                                            BoxShadow(
                                                                offset: Offset(
                                                                    0, 0),
                                                                blurRadius: 5,
                                                                spreadRadius: 0,
                                                                color: Colors
                                                                    .black
                                                                    .withOpacity(
                                                                        0.1))
                                                          ]),
                                                      child: Text(
                                                          'Data do fim dos sintomas',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: color
                                                                  .AppColor
                                                                  .colorPurple))),
                                                ]),
                                              ),
                                              SizedBox(height: 25)
                                            ]),
                                            Column(
                                              children: [
                                                Text(
                                                    _symptomsEndDate == null
                                                        ? 'Nenhuma data selecionada'
                                                        : DateFormat(
                                                                'dd/MM/yyyy')
                                                            .format(
                                                                _symptomsEndDate!),
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: color.AppColor
                                                            .colorText)),
                                                Container(
                                                  child: TextButton(
                                                      style: ButtonStyle(
                                                          padding: MaterialStateProperty
                                                              .all(EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          0,
                                                                      horizontal:
                                                                          20)),
                                                          backgroundColor:
                                                              MaterialStateProperty
                                                                  .all(color
                                                                      .AppColor
                                                                      .colorBlue),
                                                          shape: MaterialStateProperty.all<
                                                                  RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                          ))),
                                                      child: Text(
                                                        _symptomsEndDate == null
                                                            ? 'Defina uma data'
                                                            : 'Defina uma nova data',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      onPressed: () {
                                                        showDatePicker(
                                                                context:
                                                                    context,
                                                                initialDate:
                                                                    DateTime
                                                                        .now(),
                                                                firstDate:
                                                                    DateTime(
                                                                        2019,
                                                                        12,
                                                                        1),
                                                                lastDate:
                                                                    DateTime
                                                                        .now())
                                                            .then((date) {
                                                          setState(() {
                                                            _symptomsEndDate =
                                                                date;
                                                          });
                                                        });
                                                      }),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 30),
                                            Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          offset: Offset(0, 0),
                                                          blurRadius: 5,
                                                          spreadRadius: 0,
                                                          color: Colors.black
                                                              .withOpacity(0.1))
                                                    ]),
                                                child: TextFormField(
                                                  keyboardType:
                                                      TextInputType.text,
                                                  minLines: 5,
                                                  maxLines: null,
                                                  decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 10,
                                                              horizontal: 15),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                          width: 0,
                                                          style:
                                                              BorderStyle.none,
                                                        ),
                                                      ),
                                                      hintText:
                                                          'Informe os sintomas perceptíveis.',
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
                                                    _symptoms = value;
                                                  },
                                                )),
                                            SizedBox(height: 30),
                                            Column(
                                              children: [
                                                Container(
                                                  decoration:
                                                      BoxDecoration(boxShadow: [
                                                    BoxShadow(
                                                        offset: Offset(0, 0),
                                                        blurRadius: 20,
                                                        spreadRadius: 0,
                                                        color: Colors.black
                                                            .withOpacity(0.2))
                                                  ]),
                                                  width: 300,
                                                  height: 50,
                                                  child: TextButton(
                                                    child: Stack(
                                                      children: [
                                                        Container(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            'Continuar',
                                                            style: TextStyle(
                                                                fontSize: 19,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                        Container(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
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
                                                            MaterialStateProperty
                                                                .all(color
                                                                    .AppColor
                                                                    .colorBlue),
                                                        shape: MaterialStateProperty.all<
                                                                RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                        ))),
                                                    onPressed: () {
                                                      changeTab(2);
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Container(
                                              padding: EdgeInsets.zero,
                                              alignment: Alignment.centerLeft,
                                              child: TextButton(
                                                child: Text(
                                                  "VOLTAR",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: color
                                                          .AppColor.colorBlue),
                                                ),
                                                onPressed: () {
                                                  changeTab(0);
                                                },
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SingleChildScrollView(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: color.AppColor.pageBackgroundColor,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(0),
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                        topRight: Radius.circular(80)),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(
                                            top: 20,
                                            right: 60,
                                            bottom: 20,
                                            left: 20),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(0),
                                                bottomLeft: Radius.circular(0),
                                                bottomRight: Radius.circular(0),
                                                topRight: Radius.circular(80)),
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: Offset(0, 5),
                                                  blurRadius: 5,
                                                  spreadRadius: 0,
                                                  color: Colors.black
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Icon(
                                                      Icons.info_outlined,
                                                      color: color
                                                          .AppColor.colorPurple,
                                                      size: 22),
                                                ),
                                                Expanded(
                                                  flex: 9,
                                                  child: Text(
                                                      "Dica: Para esta pesquisa, consideramos um paciente \"recuperado\" quando não apresenta mais nenhum sintoma da doença nas últimas 24 horas ou teve um resultado negativo no 2º teste realizado.",
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: color.AppColor
                                                              .colorPurple)),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("Sequelas",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: color
                                                          .AppColor.colorBlue)),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                                "Descreva as sequelas ou sintomas persistentes que você identificou após a recuperação pela COVID-19. A maioria dos pacientes sentem pelo menos algum desconforto até 4 meses após a recuperação pela doença.",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: color
                                                        .AppColor.colorText)),
                                            SizedBox(height: 30),
                                            Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          offset: Offset(0, 0),
                                                          blurRadius: 5,
                                                          spreadRadius: 0,
                                                          color: Colors.black
                                                              .withOpacity(0.1))
                                                    ]),
                                                child: TextFormField(
                                                  keyboardType:
                                                      TextInputType.text,
                                                  minLines: 5,
                                                  maxLines: null,
                                                  decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 10,
                                                              horizontal: 15),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                          width: 0,
                                                          style:
                                                              BorderStyle.none,
                                                        ),
                                                      ),
                                                      hintText:
                                                          'Informe todas as sequelas perceptíveis.',
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
                                                    _afterEffects = value;
                                                  },
                                                )),
                                            SizedBox(height: 30),
                                            Column(
                                              children: [
                                                Container(
                                                  decoration:
                                                      BoxDecoration(boxShadow: [
                                                    BoxShadow(
                                                        offset: Offset(0, 0),
                                                        blurRadius: 20,
                                                        spreadRadius: 0,
                                                        color: Colors.black
                                                            .withOpacity(0.2))
                                                  ]),
                                                  width: 300,
                                                  height: 50,
                                                  child: TextButton(
                                                    child: Stack(
                                                      children: [
                                                        Container(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            'Enviar',
                                                            style: TextStyle(
                                                                fontSize: 19,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                        Container(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
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
                                                            MaterialStateProperty
                                                                .all(color
                                                                    .AppColor
                                                                    .colorBlue),
                                                        shape: MaterialStateProperty.all<
                                                                RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                        ))),
                                                    onPressed: () {
                                                      String?
                                                          newSymptomsOnsetDate;

                                                      if ([
                                                        "",
                                                        null,
                                                        false
                                                      ].contains(
                                                          _symptomsOnsetDate)) {
                                                        newSymptomsOnsetDate =
                                                            '';
                                                      } else {
                                                        newSymptomsOnsetDate =
                                                            _symptomsOnsetDate
                                                                .toString();
                                                      }

                                                      String?
                                                          newSymptomsEndDate;

                                                      if ([
                                                        "",
                                                        null,
                                                        false
                                                      ].contains(
                                                          _symptomsEndDate)) {
                                                        newSymptomsEndDate = '';
                                                      } else {
                                                        newSymptomsEndDate =
                                                            _symptomsEndDate
                                                                .toString();
                                                      }

                                                      MyService user =
                                                          MyService();

                                                      final diagnosis = DiagnosisModel(
                                                          idUser: user.idUser,
                                                          riskFactors:
                                                              _riskFactors,
                                                          symptomsOnsetDate:
                                                              newSymptomsOnsetDate,
                                                          symptomsEndDate:
                                                              newSymptomsEndDate,
                                                          symptoms: _symptoms,
                                                          afterEffects:
                                                              _afterEffects);

                                                      print(diagnosis
                                                          .symptomsOnsetDate);

                                                      final diagnosisService =
                                                          DiagnosisService();

                                                      Future<DiagnosisModel>
                                                          _diagnosisModel;
                                                      _diagnosisModel =
                                                          diagnosisService
                                                              .postDiagnosis(
                                                                  diagnosis);

                                                      _diagnosisModel
                                                          .then((diagnosis) {
                                                        if (diagnosis.id ==
                                                            null) {
                                                          showToast(
                                                            "Erro ao salvar dados.",
                                                            context: context,
                                                            animation:
                                                                StyledToastAnimation
                                                                    .fade,
                                                            reverseAnimation:
                                                                StyledToastAnimation
                                                                    .fade,
                                                            position:
                                                                StyledToastPosition
                                                                    .bottom,
                                                            duration: Duration(
                                                                seconds: 2),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                            backgroundColor:
                                                                Colors.red,
                                                          );
                                                        } else {
                                                          showToast(
                                                            "Obrigado por participar!",
                                                            context: context,
                                                            animation:
                                                                StyledToastAnimation
                                                                    .fade,
                                                            reverseAnimation:
                                                                StyledToastAnimation
                                                                    .fade,
                                                            position:
                                                                StyledToastPosition
                                                                    .bottom,
                                                            duration: Duration(
                                                                seconds: 2),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                            backgroundColor:
                                                                Colors.green,
                                                          );

                                                          Navigator.pushNamed(
                                                              context, '/home');
                                                        }
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Container(
                                              padding: EdgeInsets.zero,
                                              alignment: Alignment.centerLeft,
                                              child: TextButton(
                                                child: Text(
                                                  "VOLTAR",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: color
                                                          .AppColor.colorBlue),
                                                ),
                                                onPressed: () {
                                                  changeTab(1);
                                                },
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                      )
                    ],
                  )
                ])),
          ),
        ));
  }
}

class TabButton extends StatelessWidget {
  final String text;
  final int selectedPage;
  final int pageNumber;
  final Function onPressed;
  TabButton(
      {required this.text,
      required this.selectedPage,
      required this.pageNumber,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        // duration: Duration(milliseconds: 2000),
        // curve: Curves.fastLinearToSlowEaseIn,
        decoration: BoxDecoration(
          color: selectedPage == pageNumber
              ? color.AppColor.colorOrange
              : Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 0,
                color: Colors.black.withOpacity(0.2))
          ],
        ),
        padding: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: pageNumber == 0 || pageNumber == 2 ? 0 : 15,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: selectedPage == pageNumber
                ? Colors.white
                : color.AppColor.colorPurple,
            fontSize: 19,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
