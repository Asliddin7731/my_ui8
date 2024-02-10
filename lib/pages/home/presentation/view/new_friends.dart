
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewFriends extends StatelessWidget {
  const NewFriends({super.key, required this.name, required this.image});

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(left: 6),
      width: 105,
      child: Column(
        children: [
          const Row(
            mainAxisAlignment:MainAxisAlignment.end ,
            children: [
              SizedBox(
                // margin: EdgeInsets.only(top: 5, right: 5),
                height: 15,
                width: 15,
                child: Icon(CupertinoIcons.xmark, size: 15,),
              ),
            ],
          ),

          Expanded(
            flex: 6,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(image),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),
          const SizedBox(height: 10,),

          Expanded(
            flex: 6,
            child: Text(name,
              textAlign: TextAlign.center,
              maxLines: 2,
              softWrap: false,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                color:CupertinoColors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                height: 1.4,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: MaterialButton(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 0,
                color: Colors.blue.withOpacity(0.1),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.person_add_alt_1, color: Colors.blue,size: 20,),
                    ),
                    SizedBox(width: 5,),
                    Expanded(
                      flex: 2,
                      child: Text("Qo'shish",
                        softWrap: false,
                        style: TextStyle(color: Colors.blue,
                          overflow: TextOverflow.ellipsis,

                        ),
                      ),
                    ),
                  ],
                ),
                onPressed: (){}
            ),
          ),

        ],
      ),
    );
  }
}
