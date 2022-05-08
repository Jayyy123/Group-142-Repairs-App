import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 126.5),
                          Image.asset('assets/logoo.png',color: Colors.indigo[800],width: 121.65,height: 83.47),
                          Text('REPAIR HOME',style: TextStyle(fontFamily:'Gobold-Thin',color: Colors.indigo[800], fontSize: 32))
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/left.png',color:  Colors.indigo[800]?.withOpacity(0.06), height: 313.0, width: 234.0)
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Text('Create new account',style: TextStyle(fontFamily:'Gotham',color: Colors.black, fontSize: 20)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 14, 45, 31),
                child: Material(
                  elevation: 18,
                  borderRadius: BorderRadius.circular(10.0),
                  child: TextField(
                    decoration: InputDecoration(

                      contentPadding: const EdgeInsets.fromLTRB(15, 24, 0, 25),
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder:  OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      disabledBorder:const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2.0)
                      ),
                      enabledBorder:  OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white, width: 0.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:  const BorderSide(color: Colors.white, width: 2.0),
                      ),
                      hintText: 'Email',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 45, 31),
                child: Material(
                  elevation: 18,
                  borderRadius: BorderRadius.circular(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(15, 24, 0, 25),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide:  const BorderSide(color: Colors.white, width: 0.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder:  OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:  const BorderSide(color: Colors.white, width: 2.0),
                      ),
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 0, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Expanded(
                        child: Material(
                          elevation: 18,
                          child: ElevatedButton(onPressed: (){
                            Navigator.pushNamed(context, 'home');
                          }, style: ElevatedButton.styleFrom(primary: Colors.indigo[800],padding: const EdgeInsets.fromLTRB(19, 25, 19, 25),    shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // <-- Radius
                          ),) ,child: const Text('Sign up', style: TextStyle(fontFamily:'Gotham',color: Colors.white, fontSize: 20),)),
                        )),
                    const SizedBox(width: 41),
                  ],
                ),
              ),
              const Text('• Or sign up with -',style: TextStyle(fontFamily:'Gotham',color: Colors.black, fontSize: 16),),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    elevation: 9,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 99,
                      height: 63,
                      padding: const EdgeInsets.fromLTRB(28, 12, 25, 9),
                      child: Image.asset('assets/flat-color-icons_google.png',width: 29,height: 29,),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  Material(
                    elevation: 9,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 99,
                      height: 63,
                      padding: const EdgeInsets.fromLTRB(28, 15, 25, 9),
                      child: Image.asset('assets/eva_facebook-fill.png',width: 29,height: 29,),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  Material(
                    elevation: 9,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 99,
                      height: 63,
                      padding: const EdgeInsets.fromLTRB(28, 15, 25, 9),
                      child: Image.asset('assets/Vector (1).png',width: 29,height: 29,),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}