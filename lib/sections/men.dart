import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class MenSection extends StatelessWidget {
  const MenSection({super.key});

  final List<Map<String, dynamic>> gridMap = const[
    {
      "title": "Gentleman's tweed Blazer.",
      "price": "Rs. 15000",
      "images": "assets/images/men/img1.webp",
    },
    {
      "title": "Nike Off-Whites",
      "price": "Rs. 25000",
      "images": "assets/images/men/img2.webp",
    },
    {
      "title": "Pure Cotton Green Sweat Shirt",
      "price": "Rs.1000",
      "images": "assets/images/men/img3.webp",
    },
    {
      "title": "Calf Skin Leather Jacket",
      "price": "Rs.6000",
      "images": "assets/images/men/img4.webp",
    },
    {
      "title": "2023 Nike Air Jordan One",
      "price": "Rs.20000",
      "images": "assets/images/men/img5.webp",
    },
    {
      "title": "Pure Cotton Formal Shirts",
      "price": "Rs.1000",
      "images": "assets/images/men/img6.webp",
    },
  ];

  final List<String> imgList =const [
    'assets/images/men/img1.webp',
    'assets/images/men/img2.webp',
    'assets/images/men/img3.webp',
    'assets/images/men/img4.webp',
    'assets/images/men/img5.webp',
    'assets/images/men/img6.webp',
    'assets/images/men/img7.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(title: const Text('Men\'s Section',style: TextStyle(fontSize: 25,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 20,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20,top: 20,bottom: 6.9),
              child: Text('Latest this Season',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            CarouselSlider(
                items: imgList.map((item) => Container(
                  child: Center(child:Image.asset(item, fit: BoxFit.cover,width: 1000,)),
                )).toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                )
            ),
            const SizedBox(height: 30,),
            Container(child: const Text('New Arrivals in Town',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),),
            const SizedBox(height: 10,),
            Padding(
                padding: const EdgeInsets.only(left: 24,right: 24,bottom: 24),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    mainAxisExtent: 310,
                ),
                itemCount: gridMap.length,
                itemBuilder: (_,index){
                  return Container(
                    decoration:
                    BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(16),topLeft: Radius.circular(16)),
                            child: Image.asset("${gridMap.elementAt(index)['images']}",height: 170,fit: BoxFit.cover,width: double.infinity,)),
                        Padding(padding: const EdgeInsets.all(8),
                          child: Column(
                            children:
                            [
                              Text("${gridMap.elementAt(index)['title']}",
                                style: Theme.of(context).textTheme.subtitle1!.merge(
                                    const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                    ),
                                ),
                              ),
                              const SizedBox(height: 8,),
                              Text("${gridMap.elementAt(index)['price']}",
                                  style: Theme.of(context).textTheme.subtitle2!.merge(
                                      const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                      ),
                                  ),
                              ),
                              const SizedBox(height: 8,),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.favorite,color: Colors.white,)
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.shopping_cart,color: Colors.white,)
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),

                      ]),
                  );
                },
              ),
            ),
          ],
        ),
      )
    );
  }
}


