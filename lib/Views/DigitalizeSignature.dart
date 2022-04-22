
import 'package:chequewallet/Views/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DigitalizeSignature extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Digitalized Signature"),
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [
          Container(
            margin:const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
            child: Text("You can directly add your signature to your cheques before printing them out.",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey,width: 2),bottom: BorderSide(color: Colors.grey,width: 2))
            ),
            child: Row(
              children: [
                Text("1",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
                SizedBox(width: 20,),
                Text("Personal Signature",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: PopupMenuButton(
                      child: Icon(Icons.more_horiz,size: 30,),
                      itemBuilder: (context) {
                        return [
                        PopupMenuItem(
                          child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.edit), label: Text("Edit")),
                        ),
                          PopupMenuItem(
                            child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.delete), label: Text("Delete")),
                          ),
                          PopupMenuItem(
                            child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.text_fields), label: Text("Edit")),
                          ),
                        ];
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Center(
                child: InkWell(
                  onTap: ()async{
                    try {
                      XFile? img = await ImagePicker().pickImage(
                          source: ImageSource.gallery);
                    }catch(e)
                    {
                      print(e.toString());
                    }
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 2),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Icon(Icons.add),
                    ),
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}