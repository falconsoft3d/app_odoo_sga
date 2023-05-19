import 'package:flutter/material.dart';
import 'package:app_odoo_sga/config_page.dart';

class HomePage extends StatelessWidget {
   
  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
         title: const Text('Tren remolcador'),
         backgroundColor: Colors.deepPurple,
       ),
       drawer: Drawer(
          child : Container(
            color: Colors.deepPurple,
            child: ListView(
              children: [
                 const DrawerHeader(child: 
                    Center(child: Text ('APP ODOO SGA', 
                      style: TextStyle(
                          fontSize: 30, 
                          color: Colors.white),))
                 ),
                 
                 

                   ListTile (
                    leading: const Icon(Icons.home),
                    title: const Text(
                      'Tren remolcador',
                      style: TextStyle(
                          fontSize: 20, 
                          color: Colors.white),
                          ),
                      onTap: () { 
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const HomePage()));
                           },
                          ),

                  ListTile (
                    leading: const Icon(Icons.book),
                    title: const Text(
                      'Configurar',
                      style: TextStyle(
                          fontSize: 20, 
                          color: Colors.white),
                          ),
                      onTap: () { 
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const FirstPage()));
                           },
                          ),
                  
              ],
            ),
          )
       ),
    );
  }
}