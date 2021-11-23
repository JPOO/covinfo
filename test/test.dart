// import 'package:covinfo/models/userModel.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'fields.dart';
// import '../lib/models/userModel.dart';

// import '../lib/color.dart' as color;

// class Test extends StatefulWidget {
//   const Test({Key? key}) : super(key: key);

//   @override
//   _TestState createState() => _TestState();
// }

// // enum SingingCharacter { male, female }

// // SingingCharacter? _character = SingingCharacter.male;

// class _TestState extends State<Test> {
//   UserModel user = UserModel();

//   TextEditingController myController = TextEditingController();

//   var select;

//   static GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

//   var currentSelectedValue;
//   static const deviceTypes = ["Mac", "Windows", "Mobile"];

//   DateTime? selectedDate, _diagnosisDate;

//   // static const SingingCharacter = ['MALE', 'FEMALE'];

//   late String _character = 'Male';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//             child: Container(
//                 child: Column(children: [
//       Container(
//           child: Form(
//         key: _formKey,
//         child: Column(
//           children: [
//             LabelFormField(label: 'Local'),
//             CustomTextFormField(
//                 hintText: 'Chapecó, SC',
//                 maxLines: 1,
//                 // onSaved: (String value) {
//                 //   this.user.gender = value;
//                 // },
//                 // onSaved: (String? value) {
//                 //   user.gender = value!;
//                 // },
//                 controller: myController),
//             LabelFormField(label: 'Raça 2'),
//             CustomSelectField(
//               hint: 'Informe a sua raça',
//               // value2: '',
//               options: ['Branca', 'Preta', 'Parda', 'Amarela', 'Indígena'],
//               controller: select,
//               // onSaved: (String value) {
//               //   user.gender = value;
//               // },
//             ),
//             CustomDateTimeField(dateSelected: selectedDate),
//             // DropdownButtonHideUnderline(
//             //   child: DropdownButton<String>(
//             //     hint: Text("Select Device"),
//             //     value: currentSelectedValue,
//             //     isDense: true,
//             //     onChanged: (newValue) {
//             //       setState(() {
//             //         currentSelectedValue = newValue;
//             //       });
//             //       print(currentSelectedValue);
//             //     },
//             //     items: deviceTypes.map((String value) {
//             //       return DropdownMenuItem<String>(
//             //         value: value,
//             //         child: Text(value),
//             //       );
//             //     }).toList(),
//             //   ),
//             // ),
//             Radio(
//               value: 'Male',
//               groupValue: _character,
//               activeColor: color.AppColor.colorPurple,
//               onChanged: (value) {
//                 setState(() {
//                   _character = value as String;
//                 });
//               },
//             ),
//             Text('Masculino',
//                 style:
//                     TextStyle(fontSize: 18, color: color.AppColor.colorText)),
//             SizedBox(width: 10),
//             Radio(
//               value: 'Female',
//               groupValue: _character,
//               activeColor: color.AppColor.colorPurple,
//               onChanged: (value) {
//                 setState(() {
//                   _character = value as String;
//                 });
//               },
//             ),
//             Text('Feminino',
//                 style:
//                     TextStyle(fontSize: 18, color: color.AppColor.colorText)),
//             Text(
//                 _diagnosisDate == null
//                     ? 'Nenhuma data selecionada'
//                     : DateFormat('dd/MM/yyyy').format(_diagnosisDate),
//                 style:
//                     TextStyle(fontSize: 18, color: color.AppColor.colorInput)),
//             Container(
//               child: TextButton(
//                   style: ButtonStyle(
//                       padding: MaterialStateProperty.all(
//                           EdgeInsets.symmetric(vertical: 0, horizontal: 20)),
//                       backgroundColor:
//                           MaterialStateProperty.all(color.AppColor.colorBlue),
//                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                           RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(100),
//                       ))),
//                   child: Text(
//                     _diagnosisDate == null
//                         ? 'Defina uma data'
//                         : 'Defina uma nova data',
//                     style: TextStyle(
//                         fontSize: 15, color: color.AppColor.colorWhite),
//                   ),
//                   onPressed: () {
//                     showDatePicker(
//                             context: context,
//                             initialDate: DateTime.now(),
//                             firstDate: DateTime(2019, 12, 1),
//                             lastDate: DateTime.now())
//                         .then((date) {
//                       setState(() {
//                         _diagnosisDate = date;
//                       });
//                     });
//                   }),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Validate returns true if the form is valid, or false otherwise.

//                 // _formKey.currentState!.save();

//                 final user2 = UserModel(gender: myController.text);

//                 // if (_formKey.currentState.validate()) {
//                 // _formKey.currentState!.save();
//                 // print('valid');
//                 // }

//                 print(2);

//                 print(_diagnosisDate);

//                 // print(user2.gender);
//                 // print(selectedDate);
//               },
//               child: const Text('Submit'),
//             )
//           ],
//         ),
//       ))
//     ]))));
//   }
// }
