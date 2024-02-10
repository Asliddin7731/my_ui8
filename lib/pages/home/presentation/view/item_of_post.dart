import 'package:flutter/material.dart';

class ItemOfPost extends StatelessWidget {
  const ItemOfPost({super.key, required this.image, required this.name, required this.time});

  final String image;
  final String name;
  final String time;

  @override
  Widget build(BuildContext context) {
    int count;
    return AspectRatio(
      aspectRatio: 1/1.2,
      child: Container(
        margin: const EdgeInsets.only(top:  8),
        // padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200),
          color: Colors.white,
        ),
        // width: 105,
        child: Column(
          children: [
             Padding(
               padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),

                  // name and time Text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 25,
                            child: Text(name,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              softWrap: false,
                              style: const TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                height: 1.4,
                              ),
                            ),
                          ),
                        ],
                      ),
                       Row(
                        children: [
                          Text(time),
                          const SizedBox(width: 10),
                          Icon(Icons.people, color: Colors.grey[600],size: 18,)
                        ],
                      )
                    ],
                  ),

                  //clos Icon
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 25,
                          width: 25,
                          child: IconButton(
                            onPressed: () {},
                            icon:const Icon(Icons.more_horiz),
                            iconSize: 25,
                            alignment: Alignment.center,
                            padding: EdgeInsets.zero,
                            style: const ButtonStyle(

                            ),
                            constraints: const BoxConstraints(
                              maxHeight: 25,
                              maxWidth: 25,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width:10 ,
                        ),
                        SizedBox(
                          height: 25,
                          width: 25,
                          child: IconButton(
                            onPressed: () {},
                            icon:const Icon(Icons.close),
                            iconSize: 25,
                            alignment: Alignment.center,
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(
                              maxHeight: 25,
                              maxWidth: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
            ),
             ),

            const SizedBox(height: 10),

            //image
            Expanded(
              flex: 9,
                child:Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
            ),

             //thumb icon
             Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20,),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                      child: const Icon(Icons.favorite, color: Colors.white,size: 12,),
                  ),
                  Transform.translate(
                    offset: Offset(-33, 0),
                    child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: const Icon(Icons.thumb_up, color: Colors.white,size: 12,),
                    ),
                  ),
                  const Text('10'),
                ],
              ),
            ),

            //Button
             Expanded(
              flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(top: BorderSide(color: Colors.grey.shade200)),

                  ),
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: MaterialButton(
                          padding: const EdgeInsets.all(0),
                            onPressed: () {},
                            child: const Text('Yoqdi',
                              style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13),

                            ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: MaterialButton(
                          padding: const EdgeInsets.all(0),
                            onPressed: () {},
                            child: const Text('Fikir bildirish',
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                            ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: MaterialButton(
                          padding: const EdgeInsets.all(0),
                            onPressed: () {},
                            child: const Text('Nusxa olish',
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                            ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: MaterialButton(
                          padding: const EdgeInsets.all(0),
                            onPressed: () {},
                            child: const Text('Ulashish',
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
            )

          ],
        ),
      ),
    );
  }
}
