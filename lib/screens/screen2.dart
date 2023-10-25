//HOME SCREEN

import 'package:e_commerce_app/screens/screen1.dart';
import 'package:e_commerce_app/screens/screen3.dart';
import 'package:e_commerce_app/sections/accessories.dart';
import 'package:e_commerce_app/sections/kids.dart';
import 'package:e_commerce_app/sections/men.dart';
import 'package:e_commerce_app/sections/women.dart';
import 'package:flutter/material.dart';
import 'package:sliver_app_bar_builder/sliver_app_bar_builder.dart';


class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return[
              SliverAppBar(

                backgroundColor: Colors.black,
                expandedHeight: 200,
                pinned: true,
                snap: true,
                floating: true,
                title: const Text('Shopping App',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset('assets/images/shopping_cart.webp',fit: BoxFit.cover,),
                  //collapseMode: CollapseMode.pin,
                ),
                actions: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite))
                ],
                centerTitle: true,
                bottom: const TabBar(
                  indicatorColor: Colors.black,
                  indicator: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          color: Colors.white,
                          width: 3.0,
                      ),
                    ),
                  ),
                  tabs: [
                    Tab(icon: Icon(Icons.man,color: Colors.white,), text: 'Men',),
                    Tab(icon: Icon(Icons.woman,color: Colors.white,), text: 'Women',),
                    Tab(icon: Icon(Icons.child_care,color: Colors.white), text: 'Kids',),
                    Tab(icon: Icon(Icons.shopping_bag,color: Colors.white,), text: 'Accessories',),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              MenSection(),
              WomenSection(),
              KidsSection(),
              AccSection(),
            ],
          )
        ),
      ),

    );
  }
}


