import 'package:firebase/views/vote.dart';
import 'package:flutter/material.dart';
import '../controllers/InputDeco_design.dart';
import '../main.dart';
import '../controllers/InputDeco_design.dart';
import 'package:get/get.dart';
// import 'package:firebase/form_page/form_page_controller.dart';
import 'package:firebase/controllers/form_page_controller.dart';

class FormPage extends StatelessWidget {
  FormPage({Key? key}) : super(key: key);
  FormController controller = Get.put(FormController());
  //TextController to read text entered in text field
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void Login() {
    var isValid = formkey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      // print('hello');
      controller.Create();
      Get.to(() => VotePage());
    }
  }

  @override
  Widget build(BuildContext context) {
    // var textFormField = TextFormField(
    //   keyboardType: TextInputType.text,
    //   decoration: buildInputDecoration("Lastname"),
    //   validator: (value) {
    //     if (value!.isEmpty) {
    //       return 'Please Enter LastName';
    //     }
    //     // if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
    //     //   return 'Please a valid Email';
    //     // }
    //     // return null;
    //   },
    //   onSaved: (value) {
    //     _lname = value!;
    //   },
    // );
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 30, 30),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Builder(builder: (context) {
                  return Row(
                    children: [
                      SizedBox(
                        child: Text('    Details',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            )),
                      ),
                    ],
                  );
                }),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 30, left: 20, right: 20),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.firstname,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration("First Name"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter First Name';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 30, left: 20, right: 20),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.lastname,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration("Last Name"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Last Name';
                      }
                      return null;
                    },
                  ),
                ),
                // Padding(
                //   padding:
                //       const EdgeInsets.only(bottom: 30, left: 20, right: 20),
                //   child: textFormField,
                // ),

                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 30, left: 20, right: 20),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.userage,
                    style: TextStyle(color: Colors.white),
                    // controller: password,
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration("Age"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Age';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 30, left: 20, right: 20),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.userplace,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration("Place"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Place';
                      }
                      return null;
                    },
                  ),
                ),
                // Padding(
                //   padding:
                //       const EdgeInsets.only(bottom: 30, left: 20, right: 20),
                //   child: TextFormField(
                //     style: TextStyle(color: Colors.white),
                //     controller: confirmpassword,
                //     obscureText: true,
                //     keyboardType: TextInputType.text,
                //     decoration: buildInputDecoration("Place"),
                //     validator: (value) {
                //       if (value!.isEmpty) {
                //         return 'Please Enter Place';
                //       }
                //       // print(password.text);

                //       // print(confirmpassword.text);

                //       // if (password.text != confirmpassword.text) {
                //       //   return "Password does not match";
                //       // }

                //       // return null;
                //     },
                //   ),
                // ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 30, left: 20, right: 20),
                  child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: controller.usernumber,
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.number,
                      decoration: buildInputDecoration("Mobile Number"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Valid Mobile Number ';
                        } else if (
                            // !RegExp("^(\\+\\d{1,3}( )?)?((\\(\\d{1,3}\\))|\\d{1,3})[- .]?\\d{3,4}[- .]?\\d{6}")
                            //       .hasMatch(value)
                            //        &&
                            value.length > 10 || value.length < 10) {
                          return 'Mobile number must be 10 digit';
                        }
                        return null;
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: SizedBox(
                    width: 140,
                    height: 48,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.orange),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          )),
                      onPressed: () {
                        Login();
                        box.put('firstname', controller.firstname.text);
                        box.put('lastname', controller.lastname.text);
                        box.put('usernumber', controller.usernumber.text);
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    // RaisedButton(
                    //   color: Color(0xffF6791D),
                    //   onPressed: () {
                    //     Login();
                    //     // if (_formkey.currentState!.validate()) {
                    //     //   print("successful");

                    //     //   return;
                    //     // } else {
                    //     //   print("UnSuccessfull");
                    //     // }
                    //   },
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(10.0),
                    //   ),
                    //   textColor: Color.fromARGB(255, 6, 6, 6),
                    //   child: Text(
                    //     "Submit",
                    //     style: TextStyle(
                    //         fontSize: 20, fontWeight: FontWeight.bold),
                    //   ),
                    // ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
