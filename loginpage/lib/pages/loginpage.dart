import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  final _logincontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Bar")),

       body : Stack(
         fit: StackFit.expand,
         children: [
           Image.network("https://media.istockphoto.com/photos/freedom-chains-that-transform-into-birds-charge-concept-picture-id1322104312?b=1&k=20&m=1322104312&s=170667a&w=0&h=VQyPkFkMKmo0e4ixjhiOLjiRs_ZiyKR_4SAsagQQdkk=",
           fit:BoxFit.cover,
           color: Colors.black.withOpacity(0.7),
           colorBlendMode:BlendMode.darken ,),
           Center(
             child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
              child: Column(
                children: [
                  Form(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextFormField(
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: "Enter your name",
                            labelText: "Name",
                            
                  
                          ),
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter password",
                            labelText: "Password"
                            
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: () {
                     Navigator.pushNamed(context, "/themepage");

                    },
                    child: Text("Sign In",), 
                    ),
                  ),

                  
                ],
              ),
          ),),
      ),
           )
           
         ],
       ),
      // Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: SingleChildScrollView(
      //     child: Card(
      //       child: Column(
      //         children: [
      //           Form(child: Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: Column(
      //               children: [
      //                 TextFormField(
      //                   decoration: InputDecoration(
      //                     hintText: "Enter your name",
      //                     labelText: "Name",
                
      //                   ),
      //                 ),
      //                 SizedBox(height: 20,),
      //                 TextFormField(
      //                   decoration: InputDecoration(
      //                     hintText: "Enter password",
      //                     labelText: "Password"
                          
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
                
      //           ),
      //           SizedBox(height: 20,),
      //           Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: ElevatedButton(onPressed: () {
                    
      //             },child: Text("Sign In",), 
      //             ),
      //           ),

                
      //         ],
      //       ),
      //     ),),
      // )
      
    );
  }
}