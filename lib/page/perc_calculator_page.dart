import 'package:flutter/material.dart';

import '../common/widgets/custom_button.dart';
import '../common/widgets/custom_textfield.dart';

class PercCaculatorPage extends StatefulWidget {
  static const String routeName = '/perc-calculator-page';

  const PercCaculatorPage({Key? key}) : super(key: key);

  @override
  State<PercCaculatorPage> createState() => _PercCaculatorPageState();
}

class _PercCaculatorPageState extends State<PercCaculatorPage> {
  late double _perc;

  @override
  initState() {
    _perc = 0;

    super.initState();
  }

  void _calculation() {
    setState(
      () {
        _perc = (double.parse(sumOfSgpa.text) * 10) - 7.5;
      },
    );
  }

  final sumOfSgpa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          'Percentage Calculator',
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
                      hintText: 'Enter your SGPA',
                      ObsecureText: false,
                    ),
                    const SizedBox(height: 25),
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
                        'Your Percentage is: $_perc',
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
