import 'package:chequewallet/Views/View_Payee.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManageAccounts extends StatelessWidget {
  const ManageAccounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manage Accounts"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 5),
            margin: EdgeInsets.all(20),
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 2)
            ),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  // contentPadding: EdgeInsets.all(5),
                  border: InputBorder.none,
                  hintText: "Search",
                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.search,color: Colors.black,size: 30,),
                  ),
                ),
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide(color: Colors.black,width: 2))
            ),
            child: Row(
              children: [
                _items("Select all", false, (bool? val){}),
                _items("Recent month", false, (bool? val){}),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.delete),
                      Text("Delete")
                    ],
                  ),
                )
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context,index){
                return Container(
                  decoration: BoxDecoration(
                      border: Border.symmetric(horizontal: BorderSide(color: Colors.grey,))
                  ),
                  child: ListTile(
                    leading:  Checkbox(
                      value: false,
                      onChanged:(bool? val){

                      },
                    ),
                    title: Text("Bank ${index}",style: TextStyle(fontWeight: FontWeight.bold),),
                    trailing: PopupMenuButton(
                      child: Icon(Icons.more_horiz,size: 30,color: Colors.black,),
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.text_fields), label: Text("Rename")),
                          ),
                          PopupMenuItem(
                            child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.edit), label: Text("Edit")),
                          ),
                          PopupMenuItem(
                            child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.delete), label: Text("Delete")),
                          ),
                          PopupMenuItem(
                            child: FlatButton.icon(onPressed: (){
                              Get.to(()=>ViewPayee());
                            }, icon: Icon(Icons.person_sharp), label: Text("View Bank")),
                          ),
                        ];
                      },
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
  Widget _items(String title,bool value,var onChange,)
  {
    return Expanded(
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged:onChange,
          ),
          Text(title)
        ],
      ),
    );
  }
}
