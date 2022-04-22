import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';
import 'package:draw_graph/draw_graph.dart';

import 'Drawer.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  List<Feature> features = [
    Feature(
      title: "Drink Water",
      color: Colors.blue,
      data: [0.2, 0.8, 1, 0.7, 0.6],

    ),
  ];
  List<String> Cheque=["Cheque Name 1","Cheque Name 2"];
  List<String> Invoices=["Invoices Name 1","Invoices Name 2"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:

      AppBar(title: Text("Dashboard",
        style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,

      ),
      drawer: MyDrawer(),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 5,right: 5,bottom: 5),
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightGreen),
                borderRadius: BorderRadius.all(Radius.circular(25))
              ),
              child:
                // Graph Place
              LineGraph(
                features: features,
                size: Size(600, 100),
                labelX: ['Jan', 'Feb', 'March', 'April', 'May'],
                labelY: ['20%', '40%', '60%', '80%', '10%'],
                showDescription: false,
                graphColor: Colors.black,
                graphOpacity: 0.0,
                verticalFeatureDirection: true,
                descriptionHeight: 130,
              )

            ),

            Container(
              padding: EdgeInsets.all(10),
              height: 200,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightGreen),
                  borderRadius: BorderRadius.all(Radius.circular(25))
              ),
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.credit_card,color: Colors.black,size: 45,),
                      Expanded(
                        child: Text(" Recently Created Cheques",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Text("view   ")
                    ],
                  ),
                 Expanded(
                   child: ListView.builder(
                       itemCount: 2,
                       itemBuilder: (context, index) {
                         return Container(
                           height: 30,
                           child: ListTile(
                             title: Text(Cheque[index],style: TextStyle(fontWeight: FontWeight.bold)),
                             trailing: Icon(Icons.search),
                           )
                         );
                       }),
                 )


                ],
              ),
            ),


            Container(
              padding: EdgeInsets.all(10),
              height: 200,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightGreen),
                  borderRadius: BorderRadius.all(Radius.circular(25))
              ),
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.sticky_note_2_sharp,color: Colors.black,size: 45,),
                      Expanded(
                        child: Text(" Recently Created Invoices",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("view   "),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Container(
                              height: 30,
                              child: ListTile(
                                title: Text(Invoices[index],style: TextStyle(fontWeight: FontWeight.bold),),
                                trailing: Icon(Icons.search),
                              )
                          );
                        }),
                  ),


                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

