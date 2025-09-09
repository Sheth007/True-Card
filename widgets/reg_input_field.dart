import 'package:flutter/material.dart';
import 'package:true_card/core/colors.dart';

class RegInputField extends StatefulWidget {
  final String title;
  final String hintTitle;
  final TextEditingController controller;
  final IconData iconData;
  final bool obscureText;

  const RegInputField({
    super.key,
    required this.title,
    required this.hintTitle,
    required this.controller,
    required this.iconData,
    required this.obscureText,
  });

  @override
  State<RegInputField> createState() => _RegInputFieldState();
}

class _RegInputFieldState extends State<RegInputField> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: widget.controller,
            obscureText: _isObscured,
            decoration: InputDecoration(
              hintText: widget.hintTitle,
              hintStyle: const TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
              suffixIcon: widget.iconData == Icons.visibility
                  ? IconButton(
                icon: Icon(
                  _isObscured ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                  size: 20,
                ),
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
              )
                  : Icon(widget.iconData, size: 20, color: Colors.grey),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.grey, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColors.busForeground, width: 2),
              ),
            ),
          )
        ],
      ),
    );
  }
}
