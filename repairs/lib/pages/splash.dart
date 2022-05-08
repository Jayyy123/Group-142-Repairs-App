import 'dart:async';

import 'package:flutter/material.dart';
import 'package:repairs/pages/Authentication/Signin.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);
  // Color.fromARGB(1,31, 49, 157)
  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 3), (){
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const Signin()));
    });

    return Scaffold(
      backgroundColor: Colors.indigo[800],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/logoo.png',color: Colors.white,width: 121.65,height: 83.47)),
          const SizedBox(height: 15.0,),
          const Center(child: Text('REPAIR HOME',style: TextStyle(fontFamily:'Gobold-Thin',color: Colors.white, fontSize: 32)))
        ],
      ),
    );
  }
}
