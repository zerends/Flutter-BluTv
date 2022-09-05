// ignore: todo
// TODO Implement this library.// ignore: file_names
//import 'package:blutv_clone/blutv_icon_icons.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:blutv_clone/blutv_icon_icons.dart';
import 'package:blutv_clone/repo/filmData.dart';
import 'package:blutv_clone/views/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 Future<List<Filmler>> filmleriGetir() async{
    var filmlerListesi= <Filmler>[];

    var f1 = Filmler(filmId: 1,  filmResimAdi: "john-wick.png", );
    var f2 = Filmler(filmId: 2,  filmResimAdi: "fight-club.jpg" );
    var f3 = Filmler(filmId: 3,  filmResimAdi: "godfather.jpg" );
    var f4 = Filmler(filmId: 4,  filmResimAdi: "revenant.jpg", );
    var f5 = Filmler(filmId: 5,  filmResimAdi: "lor.jpg", );
    var f6 = Filmler(filmId: 6,  filmResimAdi: "imlegend.jpg" );
    var f7 = Filmler(filmId: 7,  filmResimAdi: "deadpool.jpg");
    var f8 = Filmler(filmId: 8,  filmResimAdi: "thewolfofwallstreet.jpg");
    var f9 = Filmler(filmId: 9,  filmResimAdi: "grindelwald.jpg" );
    var f10 = Filmler(filmId: 10,  filmResimAdi:"300.jpg", );
    var f11= Filmler(filmId: 11,  filmResimAdi: "batman.jpg" );
    var f12 = Filmler(filmId: 12,  filmResimAdi:"fast.jpg" );

    filmlerListesi.add(f1);
    filmlerListesi.add(f2);
    filmlerListesi.add(f3);
    filmlerListesi.add(f4);
    filmlerListesi.add(f5);
    filmlerListesi.add(f6);
    filmlerListesi.add(f7);
    filmlerListesi.add(f8);
    filmlerListesi.add(f9);
    filmlerListesi.add(f10);
    filmlerListesi.add(f11);
    filmlerListesi.add(f12);

    return filmlerListesi;
  }
  int currentIndex=0;

  void onTap(int index){
    setState(() {
      currentIndex= index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
      child: Scaffold(
        
        
        appBar: AppBar(
          
          
          backgroundColor: bgColor,
          bottom: const TabBar(
            
            isScrollable: true,
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.only(left:20,right:50,top: 15,bottom: 15),

            tabs: [
            Tab(icon: Icon(BlutvIcon.blutvicon) ,),
            Tab(icon: Text("Film", style: TextStyle(fontFamily: "Regular", fontSize: 18),),),
            Tab(icon: Text("Dizi", style: TextStyle(fontFamily: "Regular", fontSize: 18),),),
            Tab(icon: Icon(BlutvIcon.kids),)
          ],
          ),
         
        
      ),
        
        body:        
         FutureBuilder<List<Filmler>>(
          future: filmleriGetir(),
          
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              
              var filmlerListesi = snapshot.data;
    
              return GridView.builder(
    
                itemCount: filmlerListesi!.length,
                padding: EdgeInsets.all(10.0),
                
                
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, 
                childAspectRatio: 0.70,
                
                
                ),
                itemBuilder: (context, index){
                  
                  var film = filmlerListesi[index];
    
                  return  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), 
                    image:DecorationImage(image:AssetImage("images/${film.filmResimAdi}"), 
                    fit: BoxFit.fill )  ),
                    margin: EdgeInsets.all(5.0),
                    
                    
                  );
                    
                  
                },
    
              );
    
            } else {
    
              return const Center();
            }
          },
    
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          backgroundColor: bgColor,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: onTap,
          
        
          items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home), 
          label: "Keşfet", 
          ),
          
          BottomNavigationBarItem(
            icon: const Icon(CommunityMaterialIcons.check_box_outline),
          label: "Listem",activeIcon: Icon(CommunityMaterialIcons.checkbox_marked)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
          label: "Arama",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.tv_outlined),
          label: "Canlı TV",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.menu),
          label: "Menu",
          )
        ]
        ),
      ),

      
    );

     /* DefaultTabController(
      length: 4,
      child: Scaffold(
        
        appBar: AppBar(
          backgroundColor: bgColor,
          bottom: const TabBar(

            tabs: [
            Tab(icon: Icon(BlutvIcon.blutv_icon),height: 20,iconMargin:EdgeInsets.only(right:50.0) ,),
            Tab(icon: Text("Filmler", style: TextStyle(fontFamily: "Regular", fontSize: 18),),),
            Tab(icon: Text("Diziler", style: TextStyle(fontFamily: "Regular", fontSize: 18),),),
            Tab(icon: Icon(BlutvIcon.kids),)
          ],
          ),
         
        
      ),
      
      body: TabBarView(
        children: [
          
          Card(child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
                      
                      children: [
                
                        Image.asset("resimler/${filmlerListesi.}"),
                       
                      ],
                      ),
              )
        ],
      )
      
      ),
    ); */
  }
}