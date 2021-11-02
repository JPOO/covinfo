import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'color.dart' as color;

class Diagnosis extends StatefulWidget {
  const Diagnosis({Key? key}) : super(key: key);

  @override
  _DiagnosisState createState() => _DiagnosisState();
}

class _DiagnosisState extends State<Diagnosis> {
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

  DateTime? _symptomsOnsetDate, _symptomsEndDate;

  final _formKey = GlobalKey<FormState>();

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
                        child: Form(
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
                              Container(
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
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        // decoration: BoxDecoration(
                        //   color: color.AppColor.pageBackgroundColor,
                        //   borderRadius: BorderRadius.only(
                        //       topLeft: Radius.circular(0),
                        //       bottomLeft: Radius.circular(0),
                        //       bottomRight: Radius.circular(0),
                        //       topRight: Radius.circular(80)),
                        // ),
                        child: PageView(
                          onPageChanged: (int page) {
                            setState(() {
                              _selectedTab = page;
                            });
                          },
                          controller: _pageController,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: color.AppColor.pageBackgroundColor,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(80),
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topRight: Radius.circular(0)),
                              ),
                              padding: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Fatores de risco",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w900,
                                            color: color.AppColor.colorBlue)),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                      "Busque e selecione os fatores de risco que você possui ou possuía durante o período de infecção pela COVID-19.",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: color.AppColor.colorText)),
                                  GestureDetector(
                                    // onTap: () {
                                    //   setState(() {
                                    //     _isSelected = !_isSelected;
                                    //   });
                                    // },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 2.0,
                                          )),
                                      // width: 30,
                                      // height: 30,
                                      child: Container(
                                          child: Column(
                                        children: [Text('Teste')],
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: color.AppColor.pageBackgroundColor,
                                  // borderRadius: BorderRadius.only(
                                  //     topLeft: Radius.circular(0),
                                  //     bottomLeft: Radius.circular(0),
                                  //     bottomRight: Radius.circular(0),
                                  //     topRight: Radius.circular(80)),
                                ),
                                padding: const EdgeInsets.only(
                                    top: 20, left: 40, right: 40, bottom: 20),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Sintomas",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 26,
                                              fontWeight: FontWeight.w900,
                                              color: color.AppColor.colorBlue)),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                        "Descreva os sintomas que você percebe ou perecebeu durante o período de infecção pela COVID-19. Todo e qualquer sinal de desconforto, mesmo que pequeno, é relevante para esta pesquisa.",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: color.AppColor.colorText)),
                                    SizedBox(height: 20),
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
                                                        'Data do início dos sintomas',
                                                        // textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: color
                                                                .AppColor
                                                                .colorBlue)),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(height: 10),
                                        Text(
                                            _symptomsOnsetDate == null
                                                ? 'Nenhuma data selecionada'
                                                : DateFormat('dd/MM/yyyy')
                                                    .format(_symptomsOnsetDate),
                                            style: TextStyle(
                                                fontSize: 18,
                                                color:
                                                    color.AppColor.colorText)),
                                        Container(
                                          child: TextButton(
                                              style: ButtonStyle(
                                                  padding:
                                                      MaterialStateProperty.all(
                                                          EdgeInsets.symmetric(
                                                              vertical: 0,
                                                              horizontal: 20)),
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
                                              child: Text(
                                                _symptomsOnsetDate == null
                                                    ? 'Definir uma data'
                                                    : 'Definir uma nova data',
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
                                                    _symptomsOnsetDate = date;
                                                  });
                                                });
                                              }),
                                        )
                                      ],
                                    )),
                                    SizedBox(height: 20),
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
                                                        'Data do fim dos sintomas',
                                                        // textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: color
                                                                .AppColor
                                                                .colorBlue)),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(height: 10),
                                        Text(
                                            _symptomsEndDate == null
                                                ? 'Nenhuma data selecionada'
                                                : DateFormat('dd/MM/yyyy')
                                                    .format(_symptomsEndDate),
                                            style: TextStyle(
                                                fontSize: 18,
                                                color:
                                                    color.AppColor.colorText)),
                                        Container(
                                          child: TextButton(
                                              style: ButtonStyle(
                                                  padding:
                                                      MaterialStateProperty.all(
                                                          EdgeInsets.symmetric(
                                                              vertical: 0,
                                                              horizontal: 20)),
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
                                              child: Text(
                                                _symptomsEndDate == null
                                                    ? 'Definir uma data'
                                                    : 'Definir uma nova data',
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
                                                    _symptomsEndDate = date;
                                                  });
                                                });
                                              }),
                                        )
                                      ],
                                    )),
                                    SizedBox(height: 20),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: color.AppColor.colorWhite,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                offset: Offset(0, 0),
                                                blurRadius: 5,
                                                spreadRadius: 0,
                                                color: color.AppColor.colorBlack
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
                                                  'Informe todos os sintomas perceptíveis.',
                                              hintStyle: TextStyle(
                                                  color:
                                                      color.AppColor.colorInput,
                                                  fontSize: 18),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                  width: 0,
                                                  style: BorderStyle.none,
                                                ),
                                              ),
                                              fillColor: Colors.white,
                                              filled: true),
                                          style: TextStyle(
                                              color: color.AppColor.colorText,
                                              fontSize: 18),
                                          keyboardType: TextInputType.multiline,
                                          minLines: 5,
                                          maxLines: null),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: color.AppColor.pageBackgroundColor,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(0),
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topRight: Radius.circular(80)),
                              ),
                              padding: const EdgeInsets.only(
                                  top: 20, left: 40, right: 40, bottom: 20),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Sequelas",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w900,
                                            color: color.AppColor.colorBlue)),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                      "Descreva as sequelas ou sintomas persistentes que você identificou após o período de infecção pela COVID-19. A maioria dos pacientes sentem pelo menos algum desconforto até 4 meses após a recuperação pela doença.",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: color.AppColor.colorText)),
                                  SizedBox(height: 20),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: color.AppColor.colorWhite,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              offset: Offset(0, 0),
                                              blurRadius: 5,
                                              spreadRadius: 0,
                                              color: color.AppColor.colorBlack
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
                                                'Informe todos as sequelas perceptíveis.',
                                            hintStyle: TextStyle(
                                                color:
                                                    color.AppColor.colorInput,
                                                fontSize: 18),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                              ),
                                            ),
                                            fillColor: Colors.white,
                                            filled: true),
                                        style: TextStyle(
                                            color: color.AppColor.colorText,
                                            fontSize: 18),
                                        keyboardType: TextInputType.multiline,
                                        minLines: 5,
                                        maxLines: null),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text("Page 3"),
                              ),
                            )
                          ],
                        ),
                      ))
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
                offset: Offset(0, 4),
                blurRadius: 0,
                color: color.AppColor.colorBlack.withOpacity(0.1))
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
