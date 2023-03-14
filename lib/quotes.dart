import 'package:flutter/material.dart';

class Quotes extends StatelessWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage("../assets/aqsa1.png"),
            fit: BoxFit.cover
          ),
        ),
        child:Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Card(
                  color: Colors.white.withOpacity(0.7),
                  child: Padding(
                    padding: const EdgeInsets.all(100),
                    child: Text("Sujud mu aja masih main-main sekali minta bukan main \n-Aqsa", style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold)),
                  )
                ),
              Container(
                color: Colors.white,
                child: TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Back",style:TextStyle(color: Colors.black))),
              )
            ],
          ),
        )
      ),
    );
  }
}
