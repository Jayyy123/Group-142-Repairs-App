import 'package:flutter/material.dart';

class Fix extends StatelessWidget {
  const Fix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(child:Column(
        children: [
          Row(
            children: [
              Expanded(child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 421,
                  color: const Color.fromARGB(100, 243, 178, 158),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: (){
                                  Navigator.pushNamed(context, 'home');
                                },
                                child: const Icon(Icons.chevron_left,size: 35,)),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 35, 0),
                                    child: Text('Fix Microwave', style: TextStyle(fontFamily: 'Gotham', fontSize: 20),),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 65,),
                        Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset('assets/log.png', height: 300, color: Colors.indigo[700]?.withOpacity(0.1), ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/Rectangle 31.png'),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 20, 18, 0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width:233,
                    height:63,
                    color: const Color.fromARGB(100, 243, 178, 158) ,
                    child: const Center(child: Text('Reviews', style: TextStyle(fontFamily: 'Gotham', fontSize: 20),)),
                  ),
                ),
                const SizedBox(width: 20,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width:94,
                    height:63,
                    color: Colors.black,
                    child: Image.asset('assets/msg.png'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 20, 18, 0),
            child: Row(
              children: [
                Expanded(child: ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Material(
                    elevation: 18,
                    child: Container(
                      width: 347,
                      height: 63,
                      padding: EdgeInsets.fromLTRB(30, 5, 35, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          Text('Repair',style: TextStyle(fontFamily: 'Gotham', fontSize: 16)),
                          Text('63',style: TextStyle(fontFamily: 'Gotham', fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 20, 18, 0),
            child: Row(
              children: [
                Expanded(child: ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Material(
                    elevation: 18,
                    child: Container(
                      width: 347,
                      height: 63,
                      padding: EdgeInsets.fromLTRB(30, 5, 35, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          Text('Setup',style: TextStyle(fontFamily: 'Gotham', fontSize: 16)),
                          Text('12',style: TextStyle(fontFamily: 'Gotham', fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 20, 18, 0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, 'cart');
                    },
                    child: Container(
                      color: Colors.black,
                      width: 169,
                      height: 63,
                      child: const Center(child: Text('Order repair',style: TextStyle(fontFamily: 'Gotham', fontSize: 16, color: Colors.white))),
                    ),
                  ),
                ),
                const SizedBox(width:15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, 'cart');
                    },
                    child: Container(
                      color: Colors.white,
                      width: 169,
                      height: 63,
                      child: const Center(child: Text('Order setup',style: TextStyle(fontFamily: 'Gotham', fontSize: 16))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
      ),
    );
  }
}
