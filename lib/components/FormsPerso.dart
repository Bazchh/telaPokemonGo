import 'package:flutter/material.dart';

class FormsPerso extends StatefulWidget {
  final TextEditingController? controller;
  final bool obscureText;
  final String? hintText;
  final Color? cursorColor;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final InputDecoration? inputDecoration;

  const FormsPerso(
      {required this.controller,
      required this.cursorColor,
      required this.validator,
      this.style,
      this.hintText,
      this.hintStyle,
      this.suffixIcon,
      this.inputDecoration,
      required this.obscureText});

  @override
  State<FormsPerso> createState() => _FormsPersoState();
}

class _FormsPersoState extends State<FormsPerso> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.blue),
      color: Colors.white),
      width: 230,
      child: Column(
        children: [
          TextFormField(
            
            style: widget.style,
            controller: widget.controller,
            cursorColor: widget.cursorColor,
            decoration: widget.inputDecoration?.copyWith(
              hintStyle: widget.hintStyle,
              hintText: widget.hintText,
              suffixIcon: widget.suffixIcon,
              
            ),
            validator: widget.validator,
            obscureText: widget.obscureText,
          ),
        ],
      ),
    );
  }
}
