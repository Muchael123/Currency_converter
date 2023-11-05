import 'package:flutter/material.dart';

//create a function that stores the input by user
//multiply the value by std value
//store the new value

class CurrConverter extends StatefulWidget {
  const CurrConverter({super.key});

  @override
  State<CurrConverter> createState() => _CurrConverterState();
}

class _CurrConverterState extends State<CurrConverter> {
  double result = 0;
  final TextEditingController textEditor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: const BorderSide(
            color: Colors.amber,
            width: 1.5,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignOutside),
        borderRadius: BorderRadius.circular(40.0));
    const myEdge = EdgeInsets.all(14.0);
    return Scaffold(
        backgroundColor: const Color.fromARGB(199, 8, 78, 12),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(197, 5, 85, 9),
          elevation: 0,
          title: const Text(
            'Maich Currency Converter',
            style: TextStyle(
              color: Colors.amber,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
              Container(
                padding: myEdge,
                margin: myEdge,
                child: TextField(
                  controller: textEditor,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter amount in USD',
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 126, 97, 11),
                    ),
                    prefixIcon: const Icon(Icons.monetization_on),
                    prefixIconColor: Colors.amber,
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      
                      print("The value is ${textEditor.text}");
                      if (textEditor.text == '') {
                        result = 0;
                      }
                      else{
                        result = double.parse(textEditor.text) * 148.78;
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 1, 34, 3),
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text('Convert to KES'),
                ),
              ),
            ],
          ),
        ));
  }
}
