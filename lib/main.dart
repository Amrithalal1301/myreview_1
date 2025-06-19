import 'package:flutter/material.dart';
import 'package:myreview_1/details.dart';
import 'package:myreview_1/splash_screen.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: CategMenu());
  }
}

class CategMenu extends StatefulWidget {
  const CategMenu({super.key});

  @override
  State<CategMenu> createState() => _CategMenuState();
}

class _CategMenuState extends State<CategMenu> {
  String _category = 'Menu';
  

  void _updateContent(String newContent) {
    setState(() {
      _category = newContent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LUCKY\'S PET WORLD'),

        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 236, 172, 76),
        centerTitle: true,
      ),

      drawer: Drawer(
        child: ListView(       
          padding: EdgeInsets.zero,
          
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 236, 172, 76),
              ),

              child: Center(
                child: Text(
                  'Categories',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
            
       ListTile(
              title: Text('Cats'),
              onTap: () {
                _updateContent('Cats');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryDetails(category: _category),
                  ),
                );
              },
            ),
          ListTile(
              title: Text('Dogs'),
              onTap: () {
                _updateContent('Dogs');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryDetails(category: _category),
                  ),
                );
              },
            ),

          
          

        
            ListTile(
              title: Text('Birds'),
              
              onTap: () {
                _updateContent('Birds');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryDetails(category: _category),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Cages'),
              onTap: () {
                _updateContent('Cages');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryDetails(category: _category),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Pet Food'),
              onTap: () {
                _updateContent('Pet Food');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryDetails(category: _category),
                  ),
                );
              },
            ),
          ],
        ),
      ),
        


      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pet_shop.jpg'),
            fit: BoxFit.contain,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'PETS ARE OUR WORLD',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 205, 161, 1),
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ),
      ),

      //  _buildBody()
    );
  }
}
