import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextEditingController textController = TextEditingController();
  final txtLabel=TextEditingController();

  TextFieldWidget(this.textController);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
              child: Text(txtLabel.text,style: TextStyle(fontWeight: FontWeight.bold),)),
          Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 1.0),
              ),
              child: Center(
                child: TextField(
                  controller: textController,
                  decoration: InputDecoration(
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
