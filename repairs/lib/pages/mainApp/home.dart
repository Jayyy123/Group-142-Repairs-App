import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:repairs/CardClass/CardWidget.dart';
import 'package:repairs/CardClass/CardClass.dart';


class Home extends StatelessWidget {
  const Home ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Cardd> cardInfo = [
      Cardd('valid until june 30th', 'Sale on\nappliances\nrepair!', Colors.grey[200], Colors.indigo[200]!, 'assets/Rectangle 31.png'),
      Cardd('valid until june 30th', 'cashback 5%\nfrom each\n repair', Colors.lightBlue[100], Colors.white, 'assets/ATTRAC_3 1.png'),
    ];
    // 'valid until june 30th',Colors.lightBlue[100],'cashback 5%\nfrom each\n repair',Colors.white,image))
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 18, 0),
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Column(
                      //   children: const [
                      //     // Icon(
                      //     //   Icons.horizontal_rule,
                      //     //   size: 20,
                      //     // ),
                      //     // Icon(
                      //     //   Icons.horizontal_rule,
                      //     //   size: 30,
                      //     // ),
                      //     // Icon(
                      //     //   Icons.horizontal_rule,
                      //     //   size: 20,
                      //     // ),
                      //     // Image.asset('assets/Line 1.png'),
                      //     // Image.asset('assets/Line 2.png'),
                      //     // Image.asset('assets/Line 3.png'),
                      //   ]
                      // )
                      SizedBox(width:18,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 3,
                                  width: 18,
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  width: 13
                                ),
                              ],
                            ),
                            const SizedBox(height: 6),
                            Container(
                              height: 3,
                              width: 28,
                              color: Colors.black,
                            ),
                            const SizedBox(height: 6),
                            Row(
                              children: [
                                const SizedBox(width: 13,),
                                Container(
                                  height: 3,
                                  width: 18,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, 'cart');
                          },
                          child: Image.asset('assets/shopping-cart.png',height: 30, width: 35,))
                    ],
                  )
                ],
              ),
              const SizedBox(height:31,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(width:18,),
                  Text("What's broken?",style: TextStyle(fontFamily:'Gotham',color: Colors.black, fontSize: 24))
                ],
              ),
              const SizedBox(height:19,),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                child: TextField(
                  decoration: InputDecoration(

                    contentPadding: const EdgeInsets.fromLTRB(15, 24, 0, 25),
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder:  OutlineInputBorder(
                      borderSide:  BorderSide(color: Colors.grey[300]!, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300]!, width: 2.0)
                    ),
                    enabledBorder:  OutlineInputBorder(
                      borderSide:  BorderSide(color: Colors.grey[300]!, width: 0.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:   BorderSide(color: Colors.grey[300]!, width: 2.0),
                    ),
                    hintText: 'Search Appliances',
                      hintStyle: TextStyle(fontFamily:'Gotham',color: Colors.grey[300], fontSize: 20),
                      suffixIcon: Image.asset('assets/Vector.png')
                  ),
                ),
              ),
              const SizedBox(height:24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(width:18,),
                  Text('Offers', style: TextStyle(fontFamily:'Gotham',color: Colors.black87, fontSize: 20),),
                ],
              ),
              const SizedBox(height:24),
              CarouselSlider(items: cardInfo.map((cardd) => Material( borderRadius: BorderRadius.circular(10), child: ClipRRect( borderRadius: BorderRadius.circular(10) ,child: card(cardd)))).toList(), options: CarouselOptions(autoPlay: true,height: 261 )),
              const SizedBox(height:24,),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/blogo.png', color: Colors.indigo[800]?.withOpacity(0.1), height: 195, width: 210)
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                            child: Text('We can fix it', style: TextStyle(fontFamily:'Gotham',color: Colors.black87, fontSize: 20),),
                          ),
                        ],
                      ),
                      SizedBox(height: 19,),
                      Padding(
                        padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(23),
                              child: Container(
                                  height: 30,
                                  width: 90,
                                  color: Colors.black,
                                  padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                                  child: const Center(child: Text('Offers', style: TextStyle(fontFamily:'Gotham',color: Colors.white, fontSize: 16),))),
                            ),
                            const SizedBox(width: 7,),
                            const Text('Kitchen', style: TextStyle(fontFamily:'Gotham',color: Colors.black87, fontSize: 16),),
                            const SizedBox(width: 11,),
                            const Text('Livingroom', style: TextStyle(fontFamily:'Gotham',color: Colors.black87, fontSize: 16),),
                            const SizedBox(width: 11,),
                            const Text('Bathroom', style: TextStyle(fontFamily:'Gotham',color: Colors.black87, fontSize: 16),),
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
                                            const Text('Fix Microwave', style: TextStyle(fontFamily:'Gotham',color: Colors.black87, fontSize: 13),),
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 10, 10, 0),
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
                                                Text('Fix Tv set', style: TextStyle(fontFamily:'Gotham',color: Colors.black87, fontSize: 13),),
                                                SizedBox(width: 25,),
                                              ],
                                            ),
                                            const SizedBox(height: 5,),
                                            Row(
                                              children:  [
                                                Text('Living room', style: TextStyle(fontFamily:'Gotham',color: Colors.grey[500], fontSize: 12),),
                                                const SizedBox(width: 15,)
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
                      )

                    ],
                  )
                ],
              )
            ],

          ),
        )
      ),
    );
  }
}
