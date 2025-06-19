import 'package:flutter/material.dart';
import 'package:myreview_1/main.dart';

class CategoryDetails extends StatelessWidget {
  final String? category;
  CategoryDetails({super.key, required this.category});
  final List<String> _dog = [
    'Beagle',
    'Dachshund',
    'German shepherd',
    'Golden Retriever',
    'Boxer',
    'Pug',
    'Doberman',
    'Pomeranian',
  ];

  final List<String> _cat = [
    'Persian',
    'main Coon',
    'Siamese',
    'Ragdoll',
    'British Shorthair',
    
  ];

  final List<String> _cage = [
    'Dog Cage',
    'Cat Cage',
    'Bird Cage',
    
  ];

  final List<String> _petFood = [
    'Dog foog',
    'Cat food',
    'Bird food ',
    
  ];

  final List<String> _bird = [
    'Parrot',
    'Love Birds',
    'Cockatiel ',
    'Pigeon',
    ' Budgerigar ',
    
  ];

  Widget _buildBody() {
    
    switch (category) {
      case 'Dogs':
        {
          return Scaffold(
            appBar: AppBar(
              title: Text('Dog Breeds'),
              centerTitle: true,
              backgroundColor: Colors.amber,
              foregroundColor: Colors.white,
            ),
            body: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: _dog.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: ListTile(
                      leading: Icon(Icons.pets),
                      title: Text(_dog[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      onTap: () {},
                    ),
                  );
                },
              ),
            ),
          );
        }

      case 'Cats':
        {
          return Scaffold(
            appBar: AppBar(
              title: Text('Cat Breeds'),
              centerTitle: true,
              backgroundColor: Colors.amber,
              foregroundColor: Colors.white,),

            body:  Padding(
              padding: const EdgeInsets.all(20),
              child: ListView.builder(
                itemCount: _cat.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: ListTile(
                      leading: Icon(Icons.pets),
                      title: Text(_cat[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)), onTap: () {}));
                },
              ),
            ),
          );
        }

      case 'Birds':
        {
          return  Scaffold(
              appBar: AppBar(
                
                title: Text('BIRD BREEDS'),
                
                centerTitle: true,
               
                backgroundColor: Colors.amber,
                foregroundColor: Colors.white,),
            
             body:  Padding(
              padding:  EdgeInsets.all(20),
               child: ListView.builder(
                  itemCount: _bird.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Column(
                        
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ListTile(
                                
                                leading: Image.asset('assets/images/bird.png',width: 30,height: 30,),
                            title: Text(_bird[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)), onTap: () {}),
                        ],
                      ),
                    );
                  },
                ),
             ),
            
          );
        }
      case 'Cages':
        {
          return Scaffold(
            appBar: AppBar(
                
                title: Text('CAGES'),
                
                centerTitle: true,
               
                backgroundColor: Colors.amber,
                foregroundColor: Colors.white,),


            body: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: _cage.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Center(child: Text(_cage[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))), onTap: () {});
                },
              ),
            ),
          );
        }
      case 'Pet Food':
        {
          return Scaffold(
            appBar: AppBar(
                
                title: Text('PETS FOOD'),
                
                centerTitle: true,
               
                backgroundColor: Colors.amber,
                foregroundColor: Colors.white,),

           body:  Padding(
             padding: const EdgeInsets.all(8.0),
             child: ListView.builder(
                itemCount: _petFood.length,
                itemBuilder: (context, index) {
                  return ListTile(
                  
                    title: Center(child: Text(_petFood[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)), onTap: () {});
                },
              ),
           ),
          );
        }

      default:
        return Center(child: CategMenu());
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      /*appBar: AppBar(title: Text('Category Details'),
      backgroundColor: const Color.fromARGB(255, 232, 177, 12),
      foregroundColor: Colors.white,
      ),*/
      

      
      body: _buildBody());
  }
}
