import 'package:flutter/material.dart';

class SimpleUI extends StatelessWidget {
  const SimpleUI({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: h / 2,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: h / 2.4,
                  // color: Colors.green,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/Conference.jpg'),
                          fit: BoxFit.cover)),
                  child: const Stack(
                    children: [
                      Positioned(
                        top: 23,
                        right: 12,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 40,
                        ),

                      ),
                      Positioned(
                        top: 23,
                        left: 12,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 40,
                        ),

                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 15,
                    child: CircleAvatar(
                      radius: h / 10,
                      backgroundImage: const AssetImage('images/Amanda.jpg'),
                    ))
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'ADICHIE INTERNATIONAL CONFERENCE',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    const Text('city, Texas, USA'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ActionItems('326', Icons.favorite_border),
                        ActionItems('17', Icons.cloud_download_outlined),
                        ActionItems('113', Icons.messenger_outline),
                        ActionItems('2', Icons.thumb_down_alt_outlined)
                      ],
                    ),
                    const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row ActionItems(text, icon) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Icon(
          icon,
          size: 35,
        )
      ],
    );
  }
}
