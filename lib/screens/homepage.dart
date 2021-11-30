import 'package:flutter/material.dart';
import 'package:test_flutter_asma/screens/detailpage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List<Bloc> mesActivites = [
    new Bloc("Nbre de commande", 11),
    new Bloc("Commandes Validées", 7),
    new Bloc("Commandes restantes", 3),
    new Bloc("Commandes annulées", 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Container(
      //       height: 98.0,
      //       child: Text('data'),
      //   ),

      // ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                elevation: 2.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  Image.asset('images/myphoto.jpeg'),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'images/myphoto.jpeg',
                          height: 50.0,
                          width: 50.0,
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            // textDirection: TextDirection.rtl,
                            children: [
                              Icon(
                                Icons.map,
                                color: Colors.amber,
                              ),
                              Text(
                                'Votre position',
                                style: TextStyle(
                                    color: Colors.amber, fontSize: 14.0),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            // textDirection: TextDirection.rtl,
                            children: [
                              Icon(
                                Icons.map,
                                color: Colors.amber,
                              ),
                              Text(
                                'Moussa Ndiaye',
                                style: TextStyle(
                                    color: Colors.amber, fontSize: 14.0),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            // textDirection: TextDirection.rtl,
                            children: [
                              Icon(
                                Icons.map,
                                color: Colors.amber,
                              ),
                              Text(
                                'DK 1996 N',
                                style: TextStyle(
                                    color: Colors.amber, fontSize: 14.0),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.account_balance,
                                color: Colors.amber,
                              ),
                              Text(
                                'Agent 9',
                                style: TextStyle(
                                    color: Colors.amber, fontSize: 14.0),
                              )
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.ad_units_outlined),
                    ],
                  ),
                ),
              ),
              Container(
                //  child: GridView.builder(
                //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),  // number by line
                //   itemCount: mesActivites.length,
                //   itemBuilder: (context, i) {
                //       return new Container(

                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Text(
                      'Mes chiffres du jour',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.only(top: 5.0)),
                    Row(
                      children: [
                        InkWell(
                          onTap: null,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2.2,
                            child: Card(
                              elevation: 5.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Nbre de Commandes',
                                    style: TextStyle(
                                        color: Colors.amber,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '11',
                                    style: TextStyle(
                                        color: Colors.amber,
                                        fontSize: 55.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 5.0)),
                        InkWell(
                          onTap: null,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2.2,
                            child: Card(
                              elevation: 5.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Commandes Validées',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '7',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 55.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    Row(
                      children: [
                        InkWell(
                          onTap: null,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2.2,
                            child: Card(
                              elevation: 5.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Commandes restantes',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '3',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 55.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 5.0)),
                        InkWell(
                          onTap: null,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2.2,
                            child: Card(
                              elevation: 5.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Commandes Annulées',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 55.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Mes commandes',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),

                   // liste(),
                  ],
                ),
                // );
                // },
              ),

              Card(
                elevation: 2.0,
                child: InkWell(
                  onTap: (() =>
                    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                        return new DetailPage();
                    }))
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
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
                                  
                                  'Commande N° 11',
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
                ),
              ),

              Card(
                elevation: 2.0,
                child: InkWell(
                  onTap: (() =>
                    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                        return new DetailPage();
                    }))
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
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
                                  
                                  'Commande N° 12',
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
                ),
              ),
            ],
          ),
        
      ),

      // bottom navigation bar
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.note), onPressed: () {}),
            Padding(padding: EdgeInsets.only(right: 12)),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            Spacer(),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            Padding(padding: EdgeInsets.only(left: 12)),
            IconButton(icon: Icon(Icons.account_balance), onPressed: () {}),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey,
          child: Icon(
            Icons.home,
            color: Colors.white,
          ),
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget liste() {
    // we can create a widget an call it in our code!
    return ListView.builder(
        itemCount: mesActivites.length, // call list
        itemBuilder: (context, i) {
          Bloc activity = mesActivites[i];
          String key = activity.string;
          return new Dismissible(
            // for doing list dismissible
            key: new Key(key),
            child: Container(
              padding: EdgeInsets.all(5.0),
              height: 135.0,
              child: Card(
                elevation: 7.5,
                child: InkWell(
                  // for permit element to be clickable and with his funnction
                  onTap: (() => print('tapped')), // when we click
                  onLongPress: (() => print('c\'est long!!')),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //  Icon(activity.icone, color: Colors.teal, size: 75.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Activité',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 20.0,
                              ),
                            ),
                            Text(
                              activity.string,
                              style: TextStyle(
                                color: Colors.teal[300],
                                fontSize: 30.0,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            background: new Container(
              color: Colors.red, // color background dismissible
              padding: EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      'delete',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  Icon(Icons.delete),
                ],
              ),
            ),
            onDismissed: (direction) {
              // function for remove index after dismiss
              setState(() {
                print(activity.string);
                mesActivites.removeAt(i);
              });
            },
          );
        });
  }
}

class Bloc {
  String string;
  int num;

  Bloc(this.string, this.num);
}
