import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slide_to_act/slide_to_act.dart';

class ViewPG extends StatelessWidget {
  static const String id = "viewpg";
  const ViewPG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(

        children: [
          AppBar(
            title: Text('Imperial PG MNNIT'),
            backgroundColor: Colors.deepPurple[700],
            shadowColor: Colors.deepPurple[200],
            leading: BackButton(
              color: Colors.white,
            ),

          ),
          SizedBox(height: 3,),
          Stack(
            children: [

            ],
          ),
          CarouselSlider(items: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(
                  image: AssetImage('assets/images/one.jpeg'),
                  fit: BoxFit.cover,
                )
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/two.jpeg'),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/three.jpeg'),
                    fit: BoxFit.cover,
                  )
              ),
            )
          ], options: CarouselOptions(
            height: 300
          )),
          SizedBox(height: 1,),
          Card(
            color: Colors.deepPurple[200],
            child :ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              backgroundImage: NetworkImage('https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/profile-photos-4.jpg'),
            ) ,
            title: Text('MS Dhoni'),
            subtitle:  Text('Near MNNIT Malviya Hostel'),
            trailing: Icon(
                Icons.call
            ),
          ),
          ),
          Card(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(

                        child: Column(
                          children :[
                          Icon(FontAwesomeIcons.water,
                          size: 50, //Icon Size
                          color: Colors.deepPurple, //Color Of Ico
                          ),
                            Text('24x7 Water',style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                            ),),
                         ]
                        ),
                      ),
                     // SizedBox(width: 20,),
                      Card(

                        child: Column(
                            children :[
                              Icon(FontAwesomeIcons.taxi,
                                size: 50, //Icon Size
                                color: Colors.deepPurple, //Color Of Ico
                              ),
                              Text('Easy Transport',style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                              ),),
                            ]
                        ),
                      ),
                      //SizedBox(width: 20,),
                      Card(

                        child: Column(
                            children :const [
                              Icon(FontAwesomeIcons.wifi,
                                size: 50, //Icon Size
                                color: Colors.deepPurple, //Color Of Ico
                              ),
                              Text('Free WiFi',style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                              ),),
                            ]
                        ),
                      ),
                      //SizedBox(width: 26,),
                      Card(

                        child: Column(
                            children :const [
                              Icon(FontAwesomeIcons.newspaper,
                                size: 50, //Icon Size
                                color: Colors.deepPurple, //Color Of Ico
                              ),
                              Text('Market',style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                              ),),
                            ]
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8,),
          Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Description",
                          //textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.deepPurple,
                          )),

                      TextButton(onPressed: (){},
                        style: TextButton.styleFrom(
                         // primary: Colors.purpleAccent,
                          backgroundColor: Colors.deepPurple[100], // Background Color
                        ),
                        child: Text("₹ 7000",
                          //textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Colors.deepPurple,
                          )),)

                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 15
                )),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.all(12),
                child:SlideAction(
                  outerColor: Colors.deepPurple[100],
                  innerColor: Colors.deepPurple,
                  text: 'Schedule a Visit',
                  onSubmit: (){
                    //Do something
                  },

                ),)

              ],
            ),




        ],
      ),
    );
  }
}
