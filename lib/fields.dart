import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'color.dart' as defaultColor;

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;

  final String? hintText;
  final String? type;
  final double? width;
  final int? minLines;
  final int? maxLines;

  CustomTextFormField({
    required this.controller,
    this.hintText,
    this.type,
    this.width,
    this.minLines,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    final TextInputType typeTextField;
    switch (type) {
      case 'number':
        typeTextField = TextInputType.number;
        break;
      case 'text':
      default:
        typeTextField = TextInputType.text;
    }

    return Column(
      children: [
        Container(
          width: width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: minLines != null
                  ? BorderRadius.circular(10)
                  : BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: Colors.black.withOpacity(0.1))
              ]),
          child: TextFormField(
            controller: controller,
            keyboardType: typeTextField,
            minLines: minLines != null ? minLines : 1,
            maxLines: maxLines != null ? maxLines : null,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                border: OutlineInputBorder(
                  borderRadius: minLines != null
                      ? BorderRadius.circular(10)
                      : BorderRadius.circular(100),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                hintText: hintText,
                hintStyle: TextStyle(
                    color: defaultColor.AppColor.colorInput, fontSize: 16),
                fillColor: Colors.white,
                filled: true,
                isDense: true),
            style:
                TextStyle(color: defaultColor.AppColor.colorText, fontSize: 18),
          ),
        ),
      ],
    );
  }
}

class LabelFormField extends StatelessWidget {
  final String? label;

  LabelFormField({this.label});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          Container(
              padding:
                  const EdgeInsets.only(top: 5, left: 7, right: 7, bottom: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 5,
                        spreadRadius: 0,
                        color: Colors.black.withOpacity(0.1))
                  ]),
              child: Text(label.toString(),
                  style: TextStyle(
                      fontSize: 20, color: defaultColor.AppColor.colorPurple))),
        ]),
      ),
      SizedBox(height: 20)
    ]);
  }
}

class CustomSelectField extends StatelessWidget {
  var controller;
  final String hint;
  final List<String> options;
  late final String? value1;
  final double? width;
  // final onSaved;

  CustomSelectField({
    required this.hint,
    this.controller,
    required this.options,
    this.value1,
    this.width,
    // required this.onSaved
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: Colors.black.withOpacity(0.1))
              ]),
          child: DropdownButtonFormField(
            // isExpanded: true,
            value: controller,
            icon: Icon(Icons.keyboard_arrow_down,
                color: defaultColor.AppColor.colorPurple, size: 30),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 15),
            ),
            hint: Text(hint),
            items: options.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value,
                    style: TextStyle(
                        color: defaultColor.AppColor.colorText, fontSize: 18)),
              );
            }).toList(),
            // onSaved: onSaved,
            onChanged: (newValue) {
              // setState(() {
              controller = newValue;
              // });
              // print(controller);
            },
          ),
        ),
      ],
    );
  }

  void setState(Null Function() param0) {}
}

class CustomDateTimeField extends StatelessWidget {
  DateTime? dateSelected;
  // final onSaved;

  CustomDateTimeField({
    this.dateSelected,
    // required this.onSaved
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
          dateSelected == null
              ? 'Nenhuma data selecionada'
              : DateFormat('dd/MM/yyyy').format(dateSelected),
          style:
              TextStyle(fontSize: 18, color: defaultColor.AppColor.colorInput)),
      Container(
        child: TextButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 0, horizontal: 20)),
                backgroundColor:
                    MaterialStateProperty.all(defaultColor.AppColor.colorBlue),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ))),
            child: Text(
              dateSelected == null ? 'Defina uma data' : 'Defina uma nova data',
              style: TextStyle(
                  fontSize: 15, color: defaultColor.AppColor.colorWhite),
            ),
            onPressed: () {
              showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2019, 12, 1),
                      lastDate: DateTime.now())
                  .then((date) {
                setState(() {
                  dateSelected = date;
                });
              });
            }),
      )
    ]);
  }

  void setState(Null Function() param0) {}
}
