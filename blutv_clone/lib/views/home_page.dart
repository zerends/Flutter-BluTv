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

  var f=Films();
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
        
        
        
       // appBar: AppBar(
          
          
          
          //backgroundColor: bgColor,
          appBar:  TabBar(
                     
            isScrollable: true,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 3.0,color: Colors.white,),
              insets: EdgeInsets.symmetric(horizontal: 15),
              
            ),
            labelPadding: EdgeInsets.only(left:20.0,top:30,right: 35),
            padding: EdgeInsets.only(right:15,left:5),
            indicatorPadding: EdgeInsets.only(top:10.0),
           
          
            tabs:<Widget> [
            SizedBox( 
              //height: 25,
              width: 45,
              child: Padding(
              
                
                padding: const EdgeInsets.only(right:10.0,),
                child: Tab(icon: Icon(BlutvIcon.blutvicon,size: 18,) ,iconMargin: EdgeInsets.all(100) ,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Tab(icon: Text("Film", style: TextStyle(fontFamily: "Regular", fontSize: 15),),),
            ),
            Padding(
              padding: const EdgeInsets.only(right:10.0,left:10.0),
              child: Tab(icon: Text("Dizi", style: TextStyle(fontFamily: "Regular", fontSize: 15),textAlign: TextAlign.center),),
            ),
            Padding(
              padding: const EdgeInsets.only(right:10.0,left:10.0),
              child: Tab(icon: Icon(BlutvIcon.kids), )
            )
          ],
          ),
         
        
      //),
        
        body:        
         FutureBuilder<List<Filmler>>(
          future: f.filmleriGetir(),
          
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
    
                  return  InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap:() => setState(()=> print("Tıklandı") ),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), 
                      image:DecorationImage(image:AssetImage("images/${film.filmResimAdi}"), 
                      fit: BoxFit.fill )  ),
                      margin: EdgeInsets.all(5.0), 
                      
                      
                    ),
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

   
  }
}