import 'package:flt01/utils/MyRoute.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  String _name="";
  bool  stateChanged=false;
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child:Center(
          child:SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                    "assets/images/img_login.png",fit:BoxFit.cover
                ),
                SizedBox( height:20),
                Text("Welcome $_name",style: TextStyle(fontSize: 20, color: Colors.green)),
                Padding(   padding: const EdgeInsets.symmetric(vertical:20 ,horizontal:30 ),
                    child:Column(
                      children:[
                          TextFormField(decoration: InputDecoration(
                          hintText: "user name",
                          labelText: "User name",
                            ),
                            onChanged: (value){
                              _name=value;
                              setState(() {});
                            },
                            ),
                        TextFormField(
                          obscureText: true,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                          hintText: "Password",
                          labelText: "Password",
                            ),

                            ),
                        SizedBox( height:20),
                        ElevatedButton(
                          child: Text("Login"),
                          onPressed: (){
                            Navigator.pushNamed(context, MyRoute.routeHomePage);
                            print("Button pressed");
                          },
                        ),
                        SizedBox(height: 15,),
                        
                        InkWell(
                          onTap: () async{
                            setState(() {
                              stateChanged=true;
                            });
                            await Future.delayed(Duration(seconds: 1));
                            Navigator.pushNamed(context, MyRoute.routeHomePage);
                          },
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: stateChanged?50:150,
                            height:40,
                            alignment: Alignment.center,
                            color: Colors.green,
                            child:
                            stateChanged?Icon(Icons.done,color: Colors.white,)
                            :Text("Login",
                                  style: TextStyle(fontSize: 20),
                            ),
                          //decoration: BoxDecoration(
                          //  borderRadius: BorderRadius.circular(8),
                            //color: Colors.deepPurple
                          //),
                          ),
                        ),
                    ],
              ),
        ),
      ],
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