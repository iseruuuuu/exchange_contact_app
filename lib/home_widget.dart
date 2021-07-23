import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = TextEditingController();
  final String number = 'point:';
  int point = 0;
  int getpoint = 1;

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: const Text(
            '',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(20),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'int$point',
                      width: 200,
                      height: 200,
                      drawText: false,
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      FlatButton(onPressed: () {
                        setState(() {
                          point -= 1;

                        });
                      }, child: Text('-',style: TextStyle(fontSize: 80),)),
                      const Spacer(),
                      Text('$point',style: TextStyle(fontSize: 50),),
                      const Spacer(),
                      FlatButton(onPressed: () {
                        setState(() {
                          point += 1;
                        });
                      }, child: Text('+',style: TextStyle(fontSize: 50),)),
                      const Spacer(),
                    ],
                  ),

                  const SizedBox(height: 40,),

                  // FloatingActionButton(
                  FlatButton(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "リセット",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    onPressed: () => setState(() {
                      point = 0;
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  Widget buildTextField(BuildContext context) =>
      TextField(
        keyboardType: TextInputType.number,
        controller: controller,
        style: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        decoration: InputDecoration(
          hintText: '',
          hintStyle: const TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      );
}