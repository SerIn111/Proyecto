import 'package:flutter/material.dart';

class CustomFormInput extends StatelessWidget {
  CustomFormInput({
    super.key,
    required this.label,
    required this.controller,
    this.validator,
    required this.hintText,
    this.preicono,
    this.suicono,
    required this.texto,
    this.maxx,
  });

  final String label;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String? hintText;
  final Widget? preicono;
  final Widget? suicono;
  final bool texto;
  final int? maxx;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: TextInputType.text,
      maxLength: maxx,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: hintText,
        label: Text(label),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        // suffix: Icon(Icons.person),
        errorText: null, //'El nombre es obligatorio',
        // suffixIcon: Icon(Icons.remove_red_eye),
        prefixIcon: preicono,
        suffixIcon: suicono,
        
      ),
      obscureText: texto,
      // decoration: InputDecoration(
      //   hintText: 'Ingrese su nombre',
      //   label: Text(label),
      //   border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      //   // suffix: Icon(Icons.person),
      //   errorText: null, //'El nombre es obligatorio',
      //   // suffixIcon: Icon(Icons.remove_red_eye),
      //   prefixIcon: Icon(Icons.person),
        
      // ),
    );
  }
}