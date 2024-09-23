import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';
class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          color: Colors.white,
          elevation: 4,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 2, color: Colors.blue),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8)),
                child:CachedNetworkImage(imageUrl:'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
                  height: 110.h,
                  width: double.infinity,
                  fit: BoxFit.cover,placeholder: (context, url) =>const Center(child: CircularProgressIndicator()),)
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(12.w, 8.h, 12.w, 0),
                child:const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                     Text(
                      'Pink Bag',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'data datadatadatadatadatadatadatadatadatadatadatadata',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                     Row(
                      children: [
                        Text('EGB 1,000'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '1,300 EGB',
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                      SizedBox(
                      height: 3,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('EGB 1,000'),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Color.fromARGB(255, 3, 29, 42),
                          child: Icon(Icons.add,color: Colors.white,),
                        )
                      ],
                    ),
                 
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
            top: 10.h,
            right: 10.h,
            child: const CircleAvatar(
              radius: 18,
              backgroundColor: Color.fromARGB(255, 246, 244, 244),
              child: Icon(Icons.favorite_outline),
            )),
      ],
    );
  }
}

