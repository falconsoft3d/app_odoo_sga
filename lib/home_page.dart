import 'package:flutter/material.dart';
import 'package:app_odoo_sga/config_page.dart';

class HomePage extends StatelessWidget {

  final options = const['Megaman', 'Metal Gear', 'Castlevania', 'Metroid', 'Chrono Trigger'];

  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
         title: const Text('Tren remolcador'),
         backgroundColor: Colors.deepPurple,
       ),

      body: SafeArea(
         child: Center(
           child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [

                  
                    
                    Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      ),
                    child:  const Padding(
                      padding: EdgeInsets.all(8.0),
                      child:  TextField(
                          decoration:  InputDecoration(
                          border:  InputBorder.none,
                          hintText: 'Referencia',
                          prefixIcon: Icon(Icons.train),
                        ),
                      ),
                    ),
                  ),
                ), 


                            

                 ],
              )
           )
         )
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
                    leading: const Icon(
                      Icons.home,
                      color: Colors.white,
                      ),
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
                    leading: const Icon(
                      Icons.book,
                      color: Colors.white,
                      ),
                    title: const Text(
                      'Configurar',
                      style: TextStyle(
                          fontSize: 20, 
                          color: Colors.white),
                          ),
                      onTap: () { 
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const ConfigPage()));
                           },
                          ),
                  
              ],
            ),
          )
       ),
    );
  }
}