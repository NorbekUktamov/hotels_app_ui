
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final id="home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //#header
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/ic_header.jpg'),
                fit: BoxFit.cover
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,colors: [Colors.black.withOpacity(.8),Colors.black.withOpacity(.4)],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Best Hotels Ever",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold ),),
                    SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      height: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search,color: Colors.grey,),
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 18),
                          hintText: "Search for Hotels",
                        ),
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),

            //#body
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Business Hotels",style: TextStyle(fontSize: 20,color: Colors.grey.shade900,fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Container(
                    height:160,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image:'assets/images/ic_hotel1.jpg',title:'Hotel 1'),
                        makeItem(image:'assets/images/ic_hotel2.jpg',title:'Hotel 2'),
                        makeItem(image:'assets/images/ic_hotel3.jpg',title:'Hotel 3'),
                        makeItem(image:'assets/images/ic_hotel4.jpg',title:'Hotel 4'),
                        makeItem(image:'assets/images/ic_hotel5.jpg',title:'Hotel 5'),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("Airport Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),),
                  SizedBox(height: 15,),
                  Container(
                    height: 160,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image:'assets/images/ic_hotel6.jpg',title:'Hotel 5'),
                        makeItem(image:'assets/images/ic_hotel7.jpg',title:'Hotel 4'),
                        makeItem(image:'assets/images/ic_hotel8.jpg',title:'Hotel 3'),
                        makeItem(image:'assets/images/ic_hotel9.jpg',title:'Hotel 2'),
                        makeItem(image:'assets/images/ic_hotel10.jpg',title:'Hotel 1'),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("Resort Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),),
                  SizedBox(height: 15,),
                  Container(
                    height: 160,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image:'assets/images/ic_hotel10.jpg',title:'Hotel 5'),
                        makeItem(image:'assets/images/ic_hotel9.jpg',title:'Hotel 4'),
                        makeItem(image:'assets/images/ic_hotel8.jpg',title:'Hotel 3'),
                        makeItem(image:'assets/images/ic_hotel7.jpg',title:'Hotel 2'),
                        makeItem(image:'assets/images/ic_hotel6.jpg',title:'Hotel 1'),
                      ],
                    ),
                  ),
                  SizedBox(height: 80,),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget makeItem({image,title}){
    return AspectRatio(
      aspectRatio: 1.5/1.2,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image:AssetImage(image),
              fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ]
            )
          ),
          child:Row(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(title,style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              SizedBox(width: 60,),
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(Icons.favorite,size: 20,color: Colors.red,)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
