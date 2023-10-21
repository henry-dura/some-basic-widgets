import 'package:flutter/material.dart';


const kLink = TextStyle(color: Colors.blue,fontSize: 20);
class ComplexUI extends StatelessWidget {
  const ComplexUI({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> names = ['New', 'Ada', 'Paul', 'John', 'Wendy'];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Amanda.A.',
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 130,
                // color: Colors.red,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage('images/Amanda.jpg'),
                        ),
                        Text(
                          'Chimamanda.A',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Proffesional Writer/USA',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SocialDetails('150', 'Posts'),
                              SocialDetails('15K', 'Followers'),
                              SocialDetails('100', 'Following'),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Text('Follow'),
                                      )),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                  width:
                                      50, // Set the width and height according to your requirements
                                  height: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors
                                          .blue, // Change this color to your desired border color
                                      width:
                                          2.0, // Adjust the width of the border as needed
                                    ),
                                  ),
                                  child:
                                      Icon(Icons.keyboard_arrow_down_outlined))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 130,
                  // color: Colors.green,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: names.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                child: Icon(Icons.add),
                                radius: 35,
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(names[index])
                            ],
                          );
                        }
                        return Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: CircleAvatar(
                                radius: 55,
                                backgroundColor: Colors.white,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 0,
                                      child: CircleAvatar(
                                        radius: 50,
                                        backgroundImage:
                                            AssetImage('images/Conference.jpg'),
                                      ),
                                    ),
                                    Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: CircleAvatar(
                                          radius: 30,
                                          backgroundImage:
                                              AssetImage('images/Amanda.jpg'),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            Text(names[index])
                          ],
                        );
                      })),
            ),
            Container(
                height: 60,
                // color: Colors.yellow,
                child: Column(
                  children: [
                    Divider(
                      thickness: 3,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Email',style: kLink),
                          VerticalDivider(thickness: 2),
                          Text('Site',style: kLink,),
                          VerticalDivider(thickness: 2),
                          Text('Phone',style: kLink,)
                        ],
                      ),
                    ),
                    Divider(thickness: 3)
                  ],
                )),
            // Container(
            //   height: 80,
            //   color: Colors.red,
            // ),
            Expanded(
              child: Container(
                // color: Colors.blueAccent,
                child: GridView.builder(
                    itemCount: 10,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 8,mainAxisSpacing: 8,),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(8),  image: DecorationImage(image: AssetImage('images/Conference.jpg'),fit: BoxFit.cover)),);
                    }),
              ),
            ),
          ],
        ));
  }

  Column SocialDetails(number, detail) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          detail,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
        )
      ],
    );
  }
}
