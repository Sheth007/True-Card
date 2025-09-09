import 'package:flutter/material.dart';

class Commonheader extends StatefulWidget {

  final String title;

  const Commonheader({super.key, required this.title});

  @override
  State<Commonheader> createState() => _CommonheaderState();
}

class _CommonheaderState extends State<Commonheader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Colors.black54, width: 0.5))
      ),
      child: Row(
        children: [
          IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back)),
          Expanded(child: Center(child: Text(widget.title,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 26))))
        ],
      ),
    );


    }
}
