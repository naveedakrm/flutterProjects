import 'package:flt01/utils/MyRoute.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState  createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  String _name="";
  bool  stateChanged=false;

  final _formKey=GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
      if (_formKey.currentState!.validate()) {
        setState(() {
          stateChanged = true;
        });
        await Future.delayed( Duration(seconds: 1));
        await Navigator.pushNamed(context, MyRoute.routeHomePage);
        setState(() {
          stateChanged = false;
        });
    }
  }

  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child:Center(
          child:SingleChildScrollView(
            child: Form(
              child: Column(
                key: _formKey,
                children: [
                  Image.asset(
                      "assets/images/img_login.png",fit:BoxFit.cover
                  ),
                  SizedBox( height:20),
                  Text("Welcome $_name",style: TextStyle(fontSize: 20, color: Colors.green)),
                  Padding(   padding: const EdgeInsets.symmetric(vertical:20 ,horizontal:30 ),
                      child:Column(
                        children:[
                            TextFormField(decoration:  InputDecoration(
                            hintText: "user name",
                            labelText: "User name",
                              ),
                            validator: (value) {

                                if (value!.isEmpty) {
                                  return "Empty value";
                                }
                                else if (value.length < 6) {
                                  return "password length should be atleast 6";
                                }

                            },
                              onChanged: (value){
                                _name=value;
                                setState(() {});
                              },

                                ),
                          TextFormField(
                            obscureText: true,
                            obscuringCharacter: '*',
                            decoration:  InputDecoration(
                            hintText: "Password",
                            labelText: "Password",
                              ),
                          validator: (value){

                                if (value!.isEmpty) {
                                  return "Empty value";
                                } else if (value.length < 6) {
                                  return "password length should be atleast 6";
                                }

                          },
                          ),
                          const SizedBox( height:20),
                         ElevatedButton(
                            child: const Text("Login"),
                            onPressed: () =>moveToHome(context),
                          ),

                          const SizedBox(height: 15,),
                          
                          Material(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              splashColor: Colors.red,
                              onTap: () =>moveToHome(context),
                              child: AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                width: stateChanged?50:150,
                                height:40,
                                alignment: Alignment.center,
                                color: Colors.green,
                                child: stateChanged?const Icon(Icons.done,color: Colors.white,)
                                :const Text("Login",
                                      style: TextStyle(fontSize: 20),
                                ),

                              ),
                            ),
                          ),
                      ],
                ),
        ),
      ],
      ),
            ),
          ),
      ),
    );
  }
}

/*

child: Text("login Page",
style: TextStyle(
fontSize: 20,
color: Colors.red,
fontWeight: FontWeight.bold
),
),
   */