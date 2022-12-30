import 'package:flutter/material.dart';

void navigateTo(context,widget) => Navigator.push(context,
    MaterialPageRoute(builder: (context)=>widget)
);

void navigateRemove(context,widget) => Navigator.pushAndRemoveUntil(context,
    MaterialPageRoute(builder: (context)=>widget),
        (route) => false);




Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function? onSubmit(value)?,
  Function? onChanged(value)?,
  required String? Function(String? value)? validate,
  required String label,
  required IconData prefixIcon,
  Function? Function()? onTap,
}) => TextFormField(
  controller: controller,
  keyboardType: type,
  onFieldSubmitted: onSubmit,
  onChanged: onChanged,
  validator: validate,
  onTap: onTap,
  decoration: InputDecoration(
    labelText: label,
    prefixIcon: Icon(prefixIcon),
    border: OutlineInputBorder(),
  ),
);


Widget defaultButton({
  double wid = double.infinity,
  double r = 10.0,
  @required String? text,
  bool isUpper = true,
  Color back = Colors.orange,
  @required  function,
}) =>
    Container(
      width: wid,
      decoration: BoxDecoration(
        color: back,
        borderRadius: BorderRadius.circular(
          r,
        ),
      ),
      child: TextButton(
        onPressed: function,
        child: Text(
          isUpper ? text!.toUpperCase() : text!,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );