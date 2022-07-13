import 'package:flutter/material.dart';
import 'package:rgpv_direct/common/widgets/custom_button.dart';
import 'package:rgpv_direct/common/widgets/custom_textfield.dart';

class CgpaCalculatorPage extends StatefulWidget {
  static const String routeName = '/cgpa-calculator-page';

  const CgpaCalculatorPage({Key? key}) : super(key: key);

  @override
  State<CgpaCalculatorPage> createState() => _CgpaCalculatorPageState();
}

class _CgpaCalculatorPageState extends State<CgpaCalculatorPage> {
  late double _cgpa;

  @override
  initState() {
    _cgpa = 0;

    super.initState();
  }

  void _calculation() {
    setState(
      () {
        _cgpa = double.parse(sumOfSgpa.text) / double.parse(noOfSem.text);
      },
    );
  }

  final sumOfSgpa = TextEditingController();
  final noOfSem = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          'CGPA Calculator',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: const BoxDecoration(color: Colors.white),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CustomTextField(
                      controller: sumOfSgpa,
                      hintText: 'Sum of SGPAs of All Semesters',
                      ObsecureText: false,
                    ),
                    const SizedBox(height: 25),
                    CustomTextField(
                      controller: noOfSem,
                      hintText: 'Total Number of Semesters',
                      ObsecureText: false,
                    ),
                    const SizedBox(height: 40),
                    CustomButton(
                      text: 'Calculate',
                      onTap: _calculation,
                    ),
                    const SizedBox(height: 40),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                      ),
                      child: Text(
                        'Your CGPA is: $_cgpa',
                        style: const TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
