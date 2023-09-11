//import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double? width,
  Color background = const Color(0xFFB5838D),
  bool isUpperCase = false,
  double radius = 5.0,
  required void Function()? function,
  required String text,
}) =>
    Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:0.0,right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MaterialButton(
              onPressed: function,
              child: Text(
                isUpperCase ? text.toUpperCase() : text,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width:70 ,),
            const Icon(Icons.arrow_forward,color: Colors.white,)
          ],
        ),
      ),
    );

//Widget createDialog(BuildContext context) => AlertDialog()


showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = TextButton(
    child: const Text("Yes"),
    onPressed:  () {},
  );
  Widget continueButton = TextButton(
    child: const Text("No"),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Center(child: Text("Log Out")),
    //backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    //actionsPadding: const EdgeInsets.symmetric(horizontal: 8.0),
    content: const Text("Are you sure you want to Log Out"),
    
    actions: [
      cancelButton,
      const SizedBox(width: 50,),
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
// Center(
//                 child: MaterialButton(
//                   onPressed: (){},
//                   minWidth: 300,
//                   height: 50,
//                   color: const Color(0xFFB5838D),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10)
//                   ),
//                   child: const Text("continue to payment",style: TextStyle(
//                     fontSize: 19,color: Colors.white
//                   ),),
//                 )
//               ),
// ignore: non_constant_identifier_names
Widget WidgetRow({
  required String str,
  //required BuildContext context,
  void Function()? onPressed
})=>
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(str),
          IconButton(onPressed: onPressed, icon: const Icon(Icons.arrow_forward_ios_sharp))
        ],
      ),
  );


Widget defaultTextButton({
  required void Function()? function,
  required String text,
}) =>
    TextButton(
      onPressed: function,
      child: Text(
        text,
      ),
    );

Widget defaultFormField({
  TextEditingController? controller,
  required TextInputType type,
  void Function(String)? onSubmit,
  void Function(String)? onChange,
  void Function()? onTap,
  bool isPassword = false,
  String? Function(String?)? validate,
  required String label,
  Widget? prefix,
  String? hintTex,
  Widget? suffix,
  void Function()? suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      decoration: InputDecoration(
        hintText: hintTex,
        //labelText: label,
        fillColor: Colors.black45,
        labelStyle: const TextStyle(color: Colors.black),
        prefixIcon: 
          prefix,
        // ignore: unnecessary_null_comparison
        suffixIcon: 
                  suffix 
              
        //border: const OutlineInputBorder(),
      ),
    );



Widget myDivider() => Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20.0,
      ),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[400],
      ),
    );


void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );

// void showToast({
//   required String text,
//   required ToastStates state,
// }) =>
//     Fluttertoast.showToast(
//       msg: text,
//       toastLength: Toast.LENGTH_LONG,
//       gravity: ToastGravity.BOTTOM,
//       timeInSecForIosWeb: 5,
//       backgroundColor: chooseToastColor(state),
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );

// // enum
// enum ToastStates { SUCCESS, ERROR, WARNING }

// Color chooseToastColor(ToastStates state) {
//   Color color;

//   switch (state) {
//     case ToastStates.SUCCESS:
//       color = Colors.green;
//       break;
//     case ToastStates.ERROR:
//       color = Colors.red;
//       break;
//     case ToastStates.WARNING:
//       color = Colors.amber;
//       break;
//   }

//   return color;
// }