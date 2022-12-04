import 'dart:convert';

import 'package:flutter/material.dart';
import 'RadioBut.dart';
import 'TextItem.dart';
import 'DropDown.dart';
import 'PredictionPage.dart';
import 'package:http/http.dart' as http;

typedef OnChangeCallback = void Function(dynamic value);

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String text = "";
  String finresult = "";
  int arra = 0;
  final creditScore = TextEditingController();
  final annualMilage = TextEditingController();
  final speedViolations = TextEditingController();
  final pastAccidents = TextEditingController();
  String age = "";
  String driving = "";
  String education = "";
  String income = "";
  String gender = "";
  String race = "";
  String ownership = "";
  String year = "";
  String children = "";
  String type = "";
  String finCreditScore = "";
  String finAnnualMilage = "";
  String finspeedViolations = "";
  String finpastAccidents = "";
  String finincome = "";
  String finage = "";
  String findriving = "";
  String fineducation = "";
  String finRace = "";
  String finGender = "";
  String finchildren = "";
  String finownership = "";
  String finyear = "";
  String fintype = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white,
        ),
        color: Color.fromARGB(255, 198, 236, 216),
      ),
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          children: [
            Text(
              "Claim Prediction",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 118, 110, 114)),
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  DropdownBut(
                      "Age:                                        ",
                      [
                        "16-25",
                        "26-39",
                        "40-64",
                        "65+",
                      ],
                      "16-25", (value) {
                    age = value;
                  }),
                  RadioBut("Gender:                     ", "Male", "Female",
                      (value) {
                    gender = value;
                  }),
                  RadioBut(
                      "Race:                        ", "Majority", "Minority",
                      (value) {
                    race = value;
                  }),
                  DropdownBut(
                      "Driving Experience:              ",
                      [
                        "0-9 Years",
                        "10-19 Years",
                        "20-29 Years",
                        "30+ Years",
                      ],
                      "0-9 Years", (value) {
                    driving = value;
                  }),
                  DropdownBut(
                      "Education:                             ",
                      [
                        "High School",
                        "University",
                        "other",
                      ],
                      "High School", (value) {
                    education = value;
                  }),
                  DropdownBut(
                      "Income:                                 ",
                      [
                        "Poverty",
                        "Working Class",
                        "Middle Class",
                        "High Class",
                      ],
                      "Poverty", (value) {
                    income = value;
                  }),
                  TextItem("Credit Score:               ", creditScore),
                  RadioBut("Vehicle ownership: ", "Yes", "No", (value) {
                    ownership = value;
                  }),
                  RadioBut(
                      "Vehicle Year:            ", "Before 2015", "After 2015",
                      (value) {
                    year = value;
                  }),
                  RadioBut("Children:                    ", "Yes", "No",
                      (value) {
                    children = value;
                  }),
                  TextItem("Annual Milage:              ", annualMilage),
                  RadioBut("Vehicle Type:            ", "Sedan", "Sports",
                      (value) {
                    type = value;
                  }),
                  TextItem("No of Speed Violations: ", speedViolations),
                  TextItem("No of Past Accidents:    ", pastAccidents),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(155.0, 20.0, 0.0, 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            final url = Uri.http("10.0.2.2:5000", "/");
                            final response = await http.post(url,
                                body: json.encode({
                                  "creditScore": creditScore.text,
                                  "annualMilage": annualMilage.text,
                                  "speedViolations": speedViolations.text,
                                  "pastAccidents": pastAccidents.text,
                                  "income": income,
                                  "age": age,
                                  "driving": driving,
                                  "education": education,
                                  "gender": gender,
                                  "race": race,
                                  "children": children,
                                  "ownership": ownership,
                                  "year": year,
                                  "type": type,
                                }),
                                headers: {
                                  'Content-Type':
                                      "application/json; charset=utf-8"
                                });
                            print('StatusCode:${response.statusCode}');
                            print('Return Date: ${response.body}');

                            if (response.statusCode == 200) {
                              final jsonResponse = jsonDecode(response.body)
                                  as Map<String, dynamic>;
                              finCreditScore = jsonResponse['creditScore'];
                              finAnnualMilage = jsonResponse['annualMilage'];
                              finspeedViolations =
                                  jsonResponse['speedViolations'];
                              finpastAccidents = jsonResponse['pastAccidents'];
                              finincome = jsonResponse['income'];
                              finage = jsonResponse['age'];
                              findriving = jsonResponse['driving'];
                              fineducation = jsonResponse['education'];
                              finchildren = jsonResponse['children'];
                              finGender = jsonResponse['gender'];
                              finRace = jsonResponse['race'];
                              finownership = jsonResponse['ownership'];
                              finyear = jsonResponse['year'];
                              fintype = jsonResponse['type2'];
                              finresult = jsonResponse['result'];
                              print(finAnnualMilage);
                              print(finAnnualMilage);
                              setState(() {});
                            } else {
                              print('request failed: ${response.statusCode}');
                            }
                          },
                          child: const Text('Submit'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 30, 0, 0),
                    color: Colors.red,
                    width: 400,
                    height: 100,
                    child: Text(
                      "Prediction:  $finresult",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 252, 251, 251),
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
