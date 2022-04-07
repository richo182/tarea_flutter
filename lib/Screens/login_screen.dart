import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();
  bool _protectPassword = true;
  //esto es un comentario de prueba
  /// hacer esta pantalla: https://image.winudf.com/v2/image/Y29tLkxvZ2luQXBwLkxvZ2luQXBwX3NjcmVlbl8wXzE1MzI4NTgxNTRfMDUz/screen-0.jpg?fakeurl=1&type=.jpg
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controllerEmail.dispose();
    _controllerPassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //_header(),
            const SizedBox(height: 20.0),
            _formulary()
          ],
        ),
      ),
    );
  }

  Widget _header(){
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      color: Colors.white10,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/AGP.jpg',
                height: MediaQuery.of(context).size.height * 0.05,
              ),
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }

  Widget _formulary(){
    return Container(
      color: Colors.white10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/images/AGP.jpg',
              height: MediaQuery.of(context).size.height * 0.20,
            ),
          ),
          const SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70.0),
            child: Container(
              decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: TextField(
                    controller: _controllerEmail,
                    keyboardType: TextInputType.emailAddress,
                    //textAlignVertical: TextAlignVertical.center,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                    ),
                    decoration: const InputDecoration(
                      hintText: "Usuario",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                      ),
                      border: InputBorder.none,
                      //icon: Icon(Icons.person)
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                          controller: _controllerPassword,
                          keyboardType: TextInputType.emailAddress,
                          obscureText: _protectPassword, // con esta propiedad volvemos el texto a asteriscos
                          style: const TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0
                          ),
                          decoration: const InputDecoration(
                            hintText: "Contraseña",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0
                            ),
                            border: InputBorder.none,
                            //icon: Icon(Icons.person)
                          )
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          _protectPassword = !_protectPassword;
                        });
                      },
                      child: Icon(
                          _protectPassword ? Icons.remove_red_eye : Icons.remove_red_eye_outlined
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white
                ),
                onPressed: (){

                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.black45
                  ),
                )
            ),
          ),
          SizedBox(height: 25.0),
          Center(
            child: Text(
                '¿Olvidaste tu contraseña?',
              style: TextStyle(
                  color: Colors.grey
              ),
            ),
          ),
          SizedBox(height: 25.0),
          Center(
            child: Text(
              '© 2016-2022 REFACCIONARIAS AGP',
              style: TextStyle(
                  color: Colors.grey
              ),
            ),
          ),
          SizedBox(height: 200.0),
        ],
      ),
    );
  }

}