import 'package:coffiee/database.dart';
import 'package:flutter/material.dart';

class CoffieeExample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 56, 50, 50),
      body:
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("deja",style: TextStyle(fontSize:40,color: Colors.grey )),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Brew",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white)),
                Spacer(),
                CircleAvatar(radius: 30,backgroundColor: Colors.yellow,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/images/head.jpeg"),
                ),
                ),
              ],
            ),
          
             SizedBox(height: 20),
               Container(
                  height: 50,
                  width: double.infinity,

                      child: 
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Icon(Icons.search,color: Colors.white,),
                            SizedBox(width: 10),
                            Text("Browse your favourite coffee..",style: TextStyle(fontSize: 20,color: Colors.grey),),
                            
                          ],
                          
                        ),
                      ),
                  decoration: BoxDecoration(borderRadius:BorderRadius.circular(15),color:  const Color.fromARGB(255, 150, 136, 136)),
                    ),
                    SizedBox(height: 15),
                      Expanded(
                      child: GridView.builder(
                        itemCount: 6,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,),
                          itemBuilder: (context,index){
                            return Container(
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(255, 161, 155, 155),
                       ),
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: double.infinity,
                          
                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(DataBase.coffeeList[index]["image"]),
                          fit: BoxFit.cover,
                          )
                          ),
                          
                        ),
                        SizedBox(
                          height:5),
                          Text(DataBase.coffeeList[index]["name"],style: TextStyle(color: Colors.white),),

                          Container(
                            height: 40,
                            width: double.infinity,
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 129, 124, 124),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.currency_rupee,color: Colors.white),
                              Text(DataBase.coffeeList[index]["price"],style: TextStyle(color: Colors.white),),
                              Spacer(),
                              FloatingActionButton(onPressed: (){},child: Text("+"),),
                            ],
                          ),
                          ),
                      ],  
                      ),
                            );
                          }),
                    )
             
            
              ],
            
          
        ),
      ),
    );
  }
}