import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/constants/const_colors.dart';

class CustomPasswordFeild extends StatefulWidget {
  final String hint;
  final TextEditingController? PasswordController;
  const CustomPasswordFeild({
    required this.hint,
    this.PasswordController,
    super.key,
  });

  @override
  State<CustomPasswordFeild> createState() => _CustomPasswordFeildState();
}

class _CustomPasswordFeildState extends State<CustomPasswordFeild> {
  bool obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 226,
      height: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ConstColor.textFieldColor.value,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
          controller: widget.PasswordController,
          textAlign: TextAlign.center,
          obscureText: obsecureText,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hint,
            hintStyle: GoogleFonts.kalam(
              fontSize: 30,
              color: Colors.black,
            ),
            suffixIcon: IconButton(
              icon: Icon(obsecureText ? Icons.visibility : Icons.visibility_off,),
              onPressed: (){
                setState(() {
                  obsecureText = !obsecureText;
                });
              },
            ),
          )
      ),
    );
  }
}
