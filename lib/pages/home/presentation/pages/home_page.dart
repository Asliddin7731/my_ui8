import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../view/item_of_post.dart';
import '../view/new_friends.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          toolbarHeight: 40,
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          title: const Text('facebook',style: TextStyle(color: CupertinoColors.systemBlue,fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(onPressed: (){},
              icon: const Icon(
                Icons.search,
                color: CupertinoColors.black,size: 28,
                grade: 20,
                fill: 0,
              ),
            ),
            IconButton(onPressed: (){},
              icon: const Icon(
                CupertinoIcons.chat_bubble_text_fill,
                color: CupertinoColors.black,size: 28,
                grade: 20,
                fill: 0,
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.tab,
            overlayColor: MaterialStatePropertyAll(Colors.transparent),
            tabs: [
              Icon(Icons.home_filled,size: 30,),
              Icon(Icons.ondemand_video_outlined,size: 30,),
              Icon(Icons.people_alt_outlined,size: 30,),
              Icon(Icons.storefront_sharp,size: 30,),
              Icon(Icons.notifications_none,size: 30,),
              Icon(Icons.menu,size: 30,),
            ],
          ),
        ),
        body: ListView(
          children: [
            // Post create
            Container(
              padding: const EdgeInsets.all(9),
              height: 65,
              color: CupertinoColors.white,
              child: Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(image: AssetImage('assets/images/ic_image_1.jpg'),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(child: Container(
                    padding: const EdgeInsets.only(top: 15, bottom: 0, left: 20, right: 10),
                    alignment: Alignment.centerLeft,
                    height: 45,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Nima yangiliklar?',
                          hintStyle: TextStyle(color: CupertinoColors.black, fontSize: 16, fontWeight: FontWeight.w400, )
                      ),
                    ),
                  ),
                  ),
                  const SizedBox(width: 5,),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.image_outlined,
                      color: CupertinoColors.activeGreen,
                      size: 30,
                    ),
                  )

                ],
              ),
            ),

            const SizedBox(height: 8),

            //story and new friends
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15,),
              height: 230,
              color: CupertinoColors.white,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                children: [
                  // Story create
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[50]
                      ),
                      clipBehavior: Clip.hardEdge,
                      width: 105,
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Expanded(child: SizedBox(
                                width: double.infinity,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/ic_image_1.jpg'),
                                      fit:BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              ),
                              Expanded(
                                child: Container(
                                    padding: const EdgeInsets.all(5),
                                    alignment: Alignment.bottomCenter,
                                    child: const Text('Hikoya yaratish', textAlign: TextAlign.center,)),
                              )
                            ],
                          ),
                          Center(
                            child: Container(
                              alignment: Alignment.center,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white, width: 2),
                                  shape: BoxShape.circle,
                                  color: Colors.blue
                              ),
                              child: const Icon(CupertinoIcons.plus, color: Colors.white,),
                            ),
                          )
                        ],
                      )
                  ),
                  const NewFriends(name: 'Shahob Tursunov', image: 'assets/images/ic_image_2.jpg'),
                  const NewFriends(name: "Asadbek Ro'ziyev", image: 'assets/images/ic_image_3.jpg'),
                  const NewFriends(name: 'Islom Rizayev', image: 'assets/images/ic_image_4.jpg'),
                ],
              ),
            ),


            const ItemOfPost(name: 'Shahob Tursunov', image: 'assets/images/ic_image_2.jpg',time: '6 kun'),
            const ItemOfPost(name: "Asadbek Ro'ziyev", image: 'assets/images/ic_image_3.jpg',time: '3 kun'),
            const ItemOfPost(name: 'Islom Rizayev', image: 'assets/images/ic_image_4.jpg',time: '8 kun'),
          ],
        ),
      ),

    );
  }

}
