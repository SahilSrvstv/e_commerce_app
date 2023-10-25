import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text('ProfilePage'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(image: AssetImage('assets/images/men/img2.webp'),fit: BoxFit.cover,),
                ),
              ),
              const SizedBox(height: 20,),
              const Text('Sahil Srivastava',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              const Text('sahilsrivastava2003@gmail.com',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
              const SizedBox(height: 20,),
              SizedBox(
                  width: 200,
                  child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      side: BorderSide.none,
                      shape: const StadiumBorder()
                    ), child:  const Text('Edit Profile',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                  )
              ),
              const SizedBox(height: 30,),
              const Divider(),
              ListTile(
                leading: Container(
                  width: 40, height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: const Icon(Icons.settings,color: Colors.white,),
                ),
                title: const Text('Settings',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                trailing: Container(
                  width: 30, height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ),
              ),

              ListTile(
                leading: Container(
                  width: 40, height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: const Icon(Icons.shopping_bag_outlined,color: Colors.white,),
                ),
                title: const Text('Recent Orders',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                trailing: Container(
                  width: 30, height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ),
              ),

              ListTile(
                leading: Container(
                  width: 40, height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: const Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                ),
                title: const Text('Cart',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                trailing: Container(
                  width: 30, height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ),
              ),

              ListTile(
                leading: Container(
                  width: 40, height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: const Icon(Icons.favorite_border,color: Colors.white,),
                ),
                title: const Text('Favourites',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                trailing: Container(
                  width: 30, height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}




