import 'package:flutter/material.dart';
enum Menu { Logout,ChangePassword}
class HeaderScreen extends StatefulWidget {


  const HeaderScreen({Key? key}) : super(key: key);

  @override
  _HeaderScreenState createState() => _HeaderScreenState();
}

class _HeaderScreenState extends State<HeaderScreen> {
  

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Container(
      width:MediaQuery.of(context).size.width,
      height:100,
      padding: EdgeInsets.all(16.0),
      child:Row(children: [
        Expanded(
          child: SizedBox(
            child: const TextField(
            obscureText: false,
            decoration: InputDecoration(
              filled: true, //<-- SEE HERE
    fillColor: Colors.white, 
              suffixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
            labelText: 'Search',
                  ),),
          ),),
        SizedBox(width:5),
        MaterialButton(
          color:Color(0xFFf28500),
          padding:EdgeInsets.all(20.0),
          onPressed: () {},
          child: Icon(Icons.add,color:Colors.white),
          shape: CircleBorder(),
        ),
        SizedBox(height:double.infinity ,width:200,child: PopupMenuButton<Menu>(
           tooltip: '',
              onSelected: (Menu item) {
               
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
                    const PopupMenuItem<Menu>(
                      value: Menu.Logout,
                      child: Text('Logout'),
                    ),
                    const PopupMenuItem<Menu>(
                      value: Menu.ChangePassword,
                      child: Text('Change Password'),
                    ),
                  ],
              child:Material(
                color:Color.fromARGB(0,255,255,255),
                child: Row(children: [
          CircleAvatar(
            radius: 48, // Image radius
            backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg'),
          ),
          Expanded(
            child: Text(
              'Christopher Thomas',
              style:TextStyle(color:Colors.white),
              maxLines: 1,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              )
          ),
        ]),),
            ),)
      ],)
    );
  }
}