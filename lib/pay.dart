import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Pay extends StatelessWidget {
  const Pay({super.key});

  final List<String> imgList =const [
    'assets/images/pay/card1.png',
    'assets/images/pay/card1.png',
    'assets/images/pay/card1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: const Text('Payment Section',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20,top: 20,bottom: 6.9),
                child: Text('Select a Credit Card',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              CarouselSlider(
                  items: imgList.map((item) => Container(
                    child: Center(child:Image.asset(item, fit: BoxFit.cover,width: 1000,)),
                  )).toList(),
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  )
              ),
              const SizedBox(height: 30,),
              const Text('Select another method of payment',style: TextStyle(color: Colors.white,fontSize: 15),),
              const Divider(),
              ListTile(
                leading: Container(
                  width: 40, height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: const Icon(FontAwesomeIcons.googlePay,color: Colors.white,),
                ),
                title: const Text('Pay via Google Pay',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                trailing: Container(
                  width: 30, height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ),
              ),
              const Divider(),
              ListTile(
                leading: Container(
                  width: 40, height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: const Icon(FontAwesomeIcons.paypal,color: Colors.white,),
                ),
                title: const Text('Pay via Paytm',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                trailing: Container(
                  width: 30, height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ),
              ),
              const Divider(),
              ListTile(
                leading: Container(
                  width: 40, height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: const Icon(FontAwesomeIcons.applePay,color: Colors.white,),
                ),
                title: const Text('Pay via Apple Pay',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                trailing: Container(
                  width: 30, height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ),
              ),
              const Divider(),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.withOpacity(0.2),shape: StadiumBorder(),elevation: 0),
                    child: const Text('Cash on Delivery',style: TextStyle(fontSize: 20),),
                ),
              ),
            ],
          ),
        )
    );
  }
}




