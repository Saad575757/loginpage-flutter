import 'package:flutter/material.dart';


final _lightTheme = ThemeData(
brightness: Brightness.light,
textTheme: TextTheme(
     bodyText2: 
      TextStyle(
       color: Colors.black
     )
),
);
final _darkTheme = ThemeData(
brightness: Brightness.dark,
textTheme: TextTheme(
     bodyText2: TextStyle(
       color: Colors.white
     )
),
);

class Homepage extends StatefulWidget {
  

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool _switchvalue = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _switchvalue? _lightTheme : _darkTheme,
      home: Scaffold(
        backgroundColor: _switchvalue? Colors.white : Colors.black,
        
        appBar: AppBar(
          title: Text("First app"),
          
        ),
        body: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Text("Click to Change light theme", style: TextStyle(fontSize: 20),),

             Switch(value: _switchvalue,activeColor: Colors.amber,
              activeTrackColor: Colors.blue ,
              onChanged: (newValue){
              setState(() {
                 _switchvalue = newValue;
              });

             },
             ),
            ],
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}