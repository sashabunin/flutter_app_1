import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: UserPanel(),
  ));
}

class UserPanel extends StatefulWidget {
  const UserPanel({ Key key }) : super(key: key);

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
       title: Text('my app'), 
       centerTitle: true,
       backgroundColor: Colors.black45,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 20),),
                Text('Sergey'),
                Padding(padding: EdgeInsets.only(top: 10),),
                CircleAvatar(radius: 50,),
                Padding(padding: EdgeInsets.only(top: 10),),
                Row(
                  children: [
                    Icon(Icons.mail),
                    Padding(padding: EdgeInsets.only(left: 10),),
                    Text('sashabunin@gmail.com')
                  ],
                ),
                Text('$_count')
              ],
              )
              ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            _count++;
          });
      
        },
        ),
    );
  }
}

