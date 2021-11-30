import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Detail Page'),
            centerTitle: true,

        ),
        body: Center(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                    height: MediaQuery.of(context).size.height / 2.4,
                    width: MediaQuery.of(context).size.width / 1.1,  
                    child: Card(
                      elevation: 10.0,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                     Icon(Icons.add, size: 34.0,),
                                      Text(
                                        'Commande N° 11',
                                        style: TextStyle(
                                            color: Colors.amber, fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                      children: [
                                        Text(
                                          
                                          '''Depart Villa 56 => Dakar rue 12 Senegal
                                          ''',
                                          style: TextStyle(
                                              color: Colors.amber, fontSize: 18.0),
                                        ),
                                      ],
                                  ),

                                    Row(
                      children: [
                            SizedBox(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Type de colis',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.ac_unit_outlined
                                      ),
                                    ],
                                ),
                              ),
                        Padding(padding: EdgeInsets.only(right: 5.0)),
                            SizedBox(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Vitesse de livraison',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.bike_scooter,
                                        
                                      ),
                                    ],
                                ),
                              ),
                            ],
                          ),

                        
    Padding(padding: EdgeInsets.only(bottom: 15.0)),

    Container(
                    // width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //  Image.asset('images/myphoto.jpeg'),
                         Icon(
                            Icons.ac_unit,
                            size: 35.0,
                         ),
                        Column(
                          children: [
                            Row(
                              children: [
                              
                                Text(
                                  
                                  'Infos Emetteur',
                                  style: TextStyle(

                                      color: Colors.amber, fontSize: 18.0),
                                ),
                              ],
                            ),
                            Row(
                                children: [
                                
                                  Text(
                                    
                                    'Sacre Coeur -> Hann Marius',
                                    style: TextStyle(

                                        color: Colors.amber, fontSize: 18.0),
                                  ),
                                ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width /1.3,
                                    child: ElevatedButton(
                                        // color: Colors.pinkAccent,
                                        child: const Text(
                                          "Accepter",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                          debugPrint("Button clicked!");
                                        },
                                      ),
                                  ),


                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
    );
  }
}