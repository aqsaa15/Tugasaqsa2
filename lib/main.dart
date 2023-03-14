import 'package:flutter/material.dart';
import 'package:tugas/profile_page.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home()
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextEditingController username =  TextEditingController();
    TextEditingController password =  TextEditingController();
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.black87,
      primary: Colors.grey[300],
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
      body: Container(
          decoration: BoxDecoration(color: Colors.blue),
          padding: EdgeInsets.all(20.0),
          width: double.infinity,
          child: Container(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: <Widget>[
                Text(
                  "Login Form",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700),
                ),
                 Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    controller: username,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Masukan Username',
                    ),
                  ),
                ),
                 Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Masukan Password',
                    ),
                  ),
                ),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    validasi(username.text.toString(), password.text.toString(),context);
                  },
                  child: Text('Submit'),
                )
              ],
            ),
          )
      ),
    );
  }

  void validasi(var username, var password,BuildContext context){
    if (username != "Aqsa" && password != "1234"){
      print("Salah username atau password");
    }else{
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
    }
  }

}