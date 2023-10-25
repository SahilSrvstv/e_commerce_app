import 'package:flutter/material.dart';

import '../pay.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Total :- 50000'),
        actions: [
          SizedBox(
            width: 150,
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Pay()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800],
                shape: const StadiumBorder(),
                side: BorderSide.none,
              ),
              child: const Text('PAY',style: TextStyle(fontSize: 20),),
            ),
          )
        ],
      ),

      body: ListView(
        children: const <Widget>[
          Divider(height: 30),
          ListTile(
            leading: Image(image: AssetImage('assets/images/men/img1.webp'),fit: BoxFit.cover,width: 50,height: 100,),
            title: Text('Gentleman\'s tweed Blazer.\n',style: TextStyle(color: Colors.white,fontSize: 20)),
            subtitle: Text('Rs. 15000',style: TextStyle(color: Colors.white,fontSize: 20)),
            trailing: Icon(Icons.cancel_outlined,color: Colors.white,),
          ),
          Divider(height: 30),
          ListTile(
            leading: Image(image: AssetImage('assets/images/acc/aimg3.webp'),fit: BoxFit.fill,width: 50,height: 100,),
            title: Text('Tom Ford Wrist Watch\n',style: TextStyle(color: Colors.white,fontSize: 20)),
            subtitle: Text('Rs. 15000',style: TextStyle(color: Colors.white,fontSize: 20)),
            trailing: Icon(Icons.cancel_outlined,color: Colors.white,),
          ),
          Divider(height: 30),
          ListTile(
            leading: Image(image: AssetImage('assets/images/acc/aimg5.webp'),fit: BoxFit.cover,width: 50,height: 100,),
            title: Text('Tom Ford Sunglasses.\n',style: TextStyle(color: Colors.white,fontSize: 20)),
            subtitle: Text('Rs. 20000',style: TextStyle(color: Colors.white,fontSize: 20)),
            trailing: Icon(Icons.cancel_outlined,color: Colors.white,),
          ),
          Divider(height: 30),
        ],
      ),
    );
  }
}