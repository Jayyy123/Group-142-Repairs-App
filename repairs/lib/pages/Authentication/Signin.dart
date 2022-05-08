import 'package:flutter/material.dart';
import 'package:repairs/pages/Authentication/Register.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
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
                      const SizedBox(height: 96.5),
                      Image.asset('assets/logoo.png',color: Colors.indigo[800],width: 121.65,height: 83.47),
                      Text('REPAIR HOME',style: TextStyle(fontFamily:'Gobold-Thin',color: Colors.indigo[800], fontSize: 32))
                    ],
                  )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('assets/right.png',color:  Colors.indigo[800]?.withOpacity(0.06), height: 263.0, width: 204.0)
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Text('Log in to your account',style: TextStyle(fontFamily:'Gotham',color: Colors.black, fontSize: 20)),
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
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 25),
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
                    ),) ,child: const Text('Sign in', style: TextStyle(fontFamily:'Gotham',color: Colors.white, fontSize: 20),)),
                  )),
                  const SizedBox(width: 41),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 13),
              child: Text('• Or sign in with -',style: TextStyle(fontFamily:'Gotham',color: Colors.black, fontSize: 16)),
            ),
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
            ),
            SizedBox(height: 35),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children:  [
                 const Text("• Don't have an account? ",style: TextStyle(fontFamily:'Gotham',color: Colors.black, fontSize: 16)),
                 GestureDetector(
                   onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const Register()));
                   },
                   child: const Text("Sign up",style: TextStyle(fontFamily:'Gotham', color: Colors.blue, fontSize: 16)),
                 ),
               ],
             ),
          ],
        ),
      )
    );
  }
}

// Row(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// Image.asset('assets/right.png',color:  Colors.indigo[800]?.withOpacity(0.1), height: 353.0, width: 254.0)
// ],
// )

//
// Stack(
// alignment: Alignment.topRight,
// children: <Widget>[
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: ClipRRect(
// child: Image.network(
// image,
// height: 150,
// width: 100,
// fit: BoxFit.fitHeight,
// ),
// borderRadius: new BorderRadius.circular(8.0),
// ),
// ),
// new Align(alignment: Alignment.topRight,
// child:ClipRRect(
// borderRadius: BorderRadius.only(
// bottomRight: Radius.circular(30),
// bottomLeft: Radius.circular(30),
// topRight: Radius.circular(30)),
// child: RaisedButton(
// elevation: 1,
// color: Color(0xFF69C86C),
// child: Text(
// "Name",
// style: TextStyle(color: Colors.white),
// ),
// onPressed: () {},
// ),
// ),
// )
// ],