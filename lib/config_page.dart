import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
   
  const FirstPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
         child: Center(
           child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                    const SizedBox(height: 10),

                    const Text('Configura la url de tu servidor Odoo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),

                    const SizedBox(height: 10),

                    Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      ),
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  TextField(
                          decoration: const InputDecoration(
                          border:  InputBorder.none,
                          hintText: 'url del servidor',
                          prefixIcon: Icon(Icons.key),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: GestureDetector(
                    // onTap:signIn,
                    child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                        ),
                      child: const Center(
                        child:  Text('Guardar',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                const Text('Odoo SGA',
                    style: TextStyle(
                      fontSize: 18,
                    )),

                const SizedBox(height: 10),

                const Text('wwww.marlonfalcon.com',
                    style: TextStyle(
                      fontSize: 18,
                    )),


                const SizedBox(height: 10),

                const Text('Versión 1.0.0.0 - 05/2023',
                    style: TextStyle(
                      fontSize: 12,
                    )),

                    


                 ],
              )
           )
         )
      ),
    );
  }
}