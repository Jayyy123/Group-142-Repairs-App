import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
    body: SafeArea(
      child: Column(
        children: [
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/log1.png', width: 300, color: Colors.indigo[800]?.withOpacity(0.1), )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 0, 10),
                child: Row(
                  children: [
                    const Icon(Icons.chevron_left, size: 35,),
                    Expanded(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Text('Cart', style: TextStyle(fontFamily: 'Gotham', fontSize: 20),),
                        ),
                        SizedBox(width: 40,),
                      ],
                    ))
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 10, 10, 0),
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'fix');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child:
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          width: 357,
                          height: 63,
                          color: Colors.indigoAccent[700]?.withOpacity(0.15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const SizedBox(width: 10,),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                                  color: Colors.indigoAccent[100]?.withOpacity(0.5),
                                  child: Image.asset('assets/mdi_microwave.png', width: 33, height: 23),
                                ),
                              ),
                              const SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: const [
                                      Text('Fix Microwave', style: TextStyle(fontFamily:'Gotham',color: Colors.black87, fontSize: 13),),
                                      SizedBox(width: 7,)
                                    ],
                                  ),
                                  const SizedBox(height: 5,),
                                  Row(
                                    children:  [
                                      Text('Kitchen', style: TextStyle(fontFamily:'Gotham',color: Colors.grey[500], fontSize: 12),),
                                      const SizedBox(width: 48,)
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(width: 110,),
                              const Icon(Icons.chevron_right,size: 35,),
                              const SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 0, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child:
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: 357,
                        height: 63,
                        color: Colors.indigoAccent[700]?.withOpacity(0.15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SizedBox(width: 10,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 45,
                                height: 45,
                                padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                                color: Colors.indigoAccent[100]?.withOpacity(0.5),
                                child: Image.asset('assets/mdi_television-classic.png', width: 33, height: 23),
                              ),
                            ),
                            const SizedBox(width: 5,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: const [
                                    Text('Fix Fridge', style: TextStyle(fontFamily:'Gotham',color: Colors.black87, fontSize: 13),),
                                    SizedBox(width: 25,),
                                  ],
                                ),
                                const SizedBox(height: 5,),
                                Row(
                                  children:  [
                                    Text('2 services', style: TextStyle(fontFamily:'Gotham',color: Colors.grey[500], fontSize: 12),),
                                    const SizedBox(width: 32,)
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(width: 120,),
                            const Icon(Icons.chevron_right,size: 35,),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
            ),
          Padding(
              padding: const EdgeInsets.fromLTRB(18, 10, 10, 0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, 'fix');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            width: 357,
                            height: 63,
                            color: Colors.indigoAccent[700]?.withOpacity(0.15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(width: 10,),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                                    color: Colors.indigoAccent[100]?.withOpacity(0.5),
                                    child: Image.asset('assets/mdi_microwave.png', width: 33, height: 23),
                                  ),
                                ),
                                const SizedBox(width: 5,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: const [
                                        Text('Fix Washer', style: TextStyle(fontFamily:'Gotham',color: Colors.black87, fontSize: 13),),
                                        SizedBox(width: 30,)
                                      ],
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      children:  [
                                        Text('1 service', style: TextStyle(fontFamily:'Gotham',color: Colors.grey[500], fontSize: 12),),
                                        const SizedBox(width: 50,)
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 110,),
                                const Icon(Icons.chevron_right,size: 35,),
                                const SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child:
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          width: 357,
                          height: 63,
                          color: Colors.indigoAccent[700]?.withOpacity(0.15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const SizedBox(width: 10,),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                                  color: Colors.indigoAccent[100]?.withOpacity(0.5),
                                  child: Image.asset('assets/mdi_television-classic.png', width: 33, height: 23),
                                ),
                              ),
                              const SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: const [
                                      Text('Fix Computer', style: TextStyle(fontFamily:'Gotham',color: Colors.black87, fontSize: 13),),
                                      SizedBox(width: 25,),
                                    ],
                                  ),
                                  const SizedBox(height: 5,),
                                  Row(
                                    children:  [
                                      Text('2 Services', style: TextStyle(fontFamily:'Gotham',color: Colors.grey[500], fontSize: 12),),
                                      const SizedBox(width: 55,)
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(width: 100,),
                              const Icon(Icons.chevron_right,size: 35,),
                              const SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            )
        ],
      ),
    ),
    );
  }
}
