import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    final List<dynamic> data = [
      {
        'img':'https://cdn.pixabay.com/photo/2017/08/08/04/45/woman-2610284_960_720.jpg',
        'username':'GGs Shana',
      },
      {
        'img':'https://cdn.pixabay.com/photo/2022/08/22/05/01/hill-7402780_960_720.png',
        'username':'HellHound',
      },
      {
        'img':'https://cdn.pixabay.com/photo/2022/11/01/05/18/coffee-7561288_960_720.jpg',
        'username':'Sasei',
      },
      {
        'img':'https://cdn.pixabay.com/photo/2022/11/01/13/19/autumn-7562289_960_720.jpg',
        'username':'Soren',
      },
      {
        'img':'https://cdn.pixabay.com/photo/2022/10/21/10/51/snail-7536762_960_720.jpg',
        'username':'Tavo',
      },
    ];
    
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              itemCount: data.length,
              scrollDirection: Axis.vertical,
              controller: controller,
              itemBuilder: (context, index) {
                final datos = data[index];

                return TiktokWidget(
                  img: datos['img'],
                  username: datos['username'],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Reels',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
                ),
                IconButton(onPressed: () {}, 
                icon: const Icon(Icons.camera_alt_outlined)
                ),
              ],
            )
          ],
          ),
      ),
    );
  }
}

class TiktokWidget extends StatelessWidget {
  final String? img;
  final String? username;

  const TiktokWidget({super.key, this.img, this.username});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          '$img',
        fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 110,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage('https://cdn.discordapp.com/avatars/351910857292382208/152292c7206c2c0da36ef9f49b32d134.webp?size=128'),
                        radius: 16,
                        
                        
                      ),
                      const SizedBox(
                        width: 6,),
                      Text(
                        '$username',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.verified,
                        color: Colors.lightBlue,
                      ),
                      TextButton(
                        onPressed:() {}, 
                        child: const Text(
                        'Follow',
                        style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 6),
                  Text('Soy Vtuber'),
                  SizedBox(height: 10),
                  Row(
                    children: const [
                      Icon(
                        Icons.music_note, size: 15,
                      ),
                      Text('Original Audio - Flutter Dart #MegaChallenger')
                    ],
                  ),
                ]
              ),
              Row(
                children:[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.favorite_outline),
                      Text('998M'),
                      SizedBox(height: 20),
                      Icon(Icons.comment_rounded),
                      Text('12k'),
                      SizedBox(height: 20),
                      Transform(
                        transform: Matrix4.rotationZ(5.8),
                        child: Icon(Icons.send),
                      ),
                      SizedBox(height: 20),
                      Icon(Icons.more_vert),
                      SizedBox(height:20),
                        Icon(Icons.person),
                    ]
                  ),
                ],   
              ),
            ],
          ),
        )
      ]
    );
  }
}

