import 'package:flutter/material.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  final _loginFromKey = GlobalKey<FormState>();
  final TextEditingController _usernameCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pongsak App"),
        backgroundColor: Color.fromARGB(66, 0, 255, 255),
      ),
      body: Form(
        key: _loginFromKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                 validator: (value) {
                  if(value!.isEmpty){
                      return "pls enter your username";
                    
                  }return null;
                },
                controller: _usernameCtrl,
                keyboardType: TextInputType.phone,
                // onChanged: (value) {
                //   setState(() {
                //     _usernameCtrl.text = value;
                //   });
                // },
                decoration: InputDecoration(
                    labelText: "Username",
                    prefixIcon: Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:BorderSide(
                              color: Color.fromARGB(136, 255, 119, 56))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Color.fromARGB(136, 255, 119, 56)))),
              ),
            ),
            Text(_usernameCtrl.text),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                // obscuringCharacter: "#",
                validator: (value) {
                  if(value!.isEmpty){
                      return "pls enter your password";
                    
                  }return null;
                },
                controller: _passwordCtrl,
                keyboardType: TextInputType.visiblePassword,
                // onChanged: (value) {
                //   setState(() {
                //     _usernameCtrl.text = value;
                //   });
                // },
                decoration: InputDecoration(
                  
                    labelText: "Password",
                    prefixIcon: Icon(Icons.password_outlined),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:BorderSide(
                              color: Color.fromARGB(136, 255, 119, 56))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Color.fromARGB(136, 255, 119, 56))))
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              print("perss");
              if(_loginFromKey.currentState!.validate()){
                print("corect");
              }
            }, child: Text("submit"))
          ],
        ),
      ),
    );
  }
}
