import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
@override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
            body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 45,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.black87,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.favorite,
                              color: Colors.black87, size: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, left: 8, bottom: 8, right: 20),
                          child:
                              Icon(Icons.send, color: Colors.black87, size: 20),
                        ),
                      ],
                    ),
                  ]),
            ),
            Expanded(
                child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          storyWidget("assets/images/hikaye3.png","Elifs.Bayraktar"),
                          storyWidget("assets/images/hikaye2.png"," Nefise Arı"),
                          storyWidget("assets/images/hikayefoto.png","Yedek Hesap"),
                          storyWidget("assets/images/hikaye4.png","Francisco Lachowski"),
                          storyWidget("assets/images/hikaye5.png","Madelaine Petsch"),
                          storyWidget("assets/images/hikaye6.png","Birce Akalay"),                        
                          storyWidget("assets/images/hikaye7.png","İlhan Şen"),
                          storyWidget("assets/images/hikaye3.png","Elifs.Bayraktar"),
                          storyWidget("assets/images/hikaye2.png"," Nefise Arı"),
                          storyWidget("assets/images/hikayefoto.png","Yedek Hesap"),
                          storyWidget("assets/images/hikaye4.png","Francisco Lachowski"),
                          storyWidget("assets/images/hikaye5.png","Madelaine Petsch"),
                          storyWidget("assets/images/hikaye6.png","Birce Akalay"),                        
                          storyWidget("assets/images/hikaye7.png","İlhan Şen"),
                        ],
                      ),
                    ),
                    Post("assets/images/hikaye3.png","assets/images/post1.png","Elifs.Bayraktar","Istanbul/Kadikoy"),
                    Post("assets/images/hikaye2.png","assets/images/post4.png","Nefise Arı","Vıyana Kahvesı"),
                    Post("assets/images/hikaye6.png","assets/images/post6.png","Birce Akalay","KANAL D"),
                  ],
                ),
              ),
            )),
            Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.black12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.home,
                        size: 28,
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.search,
                        size: 28,
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.smart_display,
                        size: 28,
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.favorite,
                        size: 28,
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.person,
                        size: 28,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                )),
          ],
        )));
  }
  Container Post(String avatar , String photo,String name, String location) => Container(
        child: Padding(
          padding: const EdgeInsets.only(top:15.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(avatar),
                          radius: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              location,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.more_horiz),
                  ],
                ),
              ),
              Image.asset(photo),
              likecommentbox(),
              commentbox("Nefise Arı","Çok güzel fotoğraf. Yine nerelerde geziyorsun canım"),
              commentbox("yedek hesap","Günbatımı çok iyi "),
              commentbox("Arda Çalcı","Karşısına masa kurmalık manzara"),
            ],
          ),
        ),
      );

  Padding likecommentbox() {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border,color:Colors.black87),
                    SizedBox(width: 8,),
                    Icon(Icons.comment_bank_outlined,color:Colors.black87),
                    
                  ],
                ),
                Icon(Icons.flag_circle_outlined,color:Colors.black87),
              ],
            ),
          );
  }

  Padding commentbox(String name, String comment) {
    return Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: RichText(
                    text:TextSpan(
                      children: [
                        TextSpan(
                          text: name,
                          style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Colors.black87,
                      fontSize: 12, 
                    ),
                        ),
                        TextSpan(text: " "),
                        TextSpan(
                          text: comment,
                          
                          style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color:Colors.black54,
                      fontSize: 12, 
                    ),
                        ),
                      ],
                    ), ),
                ),
                  
              //   Text(
              //     "Nefise Arı",
              //     style: TextStyle(
              //       fontWeight: FontWeight.bold,
              //       color:Colors.black87,
              //       fontSize: 12, 
              //     ),
              //   ),
              //   SizedBox(width: 3,),
              //  Expanded(
              //     child: Text(
              //       "Çok güzel fotoğraf. Yine nerelerde geziyorsun canım ",
              //       maxLines: 5,
              //       style: TextStyle(
              //         color: Colors.black54,
              //         fontSize: 12,
              //         ),
              //       ),
              //   ),
              ],
            
            ),
          );
  }

  Widget storyWidget(String avatar,String name) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color:Colors.green,
              gradient: LinearGradient(colors:[
                const Color.fromRGBO(214, 71, 103, 1),
                const Color.fromRGBO(241, 166, 117, 1),
              ]),
              shape: BoxShape.circle
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 35,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
              style: TextStyle(
                fontSize: 11,
              )),
        ],
      ),
    );
  }

  Widget storyWidget2() {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/hikaye2.png"),
            radius: 40,
          ),
          SizedBox(
            height: 5,
          ),
          Text("Nefise Arı",
              style: TextStyle(
                fontSize: 11,
              )),
        ],
      ),
    );
  }

  Widget storyWidget3() {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/hikayefoto.png"),
            radius: 40,
          ),
          SizedBox(
            height: 5,
          ),
          Text("yedek hesap",
              style: TextStyle(
                fontSize: 11,
              )),
        ],
      ),
    );
  }
}
