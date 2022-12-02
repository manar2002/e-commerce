import 'package:flutter/material.dart';

class CartView extends StatelessWidget {

  int pageIndex = 1;

  List<String> names = <String>["product1" , "product2" , "product3" , "product4" , "product5"];
  List<String> images = <String>[
    'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4wEaH?ver=6557',
    'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4wEaH?ver=6557',
    'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4wEaH?ver=6557',
    'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4wEaH?ver=6557',
    'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4wEaH?ver=6557',
  ];

  List<int> prices = <int>[100 , 200 , 300 , 400 , 500];

  CartView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(itemBuilder: (context , index){
              return Container(
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        child: const Image(image: NetworkImage('https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4wEaH?ver=6557'),
                    fit: BoxFit.cover,),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(names[index],
                          style: const TextStyle(color: Colors.cyan,fontSize: 25,),),
                          const SizedBox(height: 20,),
                          Text("\$${prices[index].toString()}"),
                          const SizedBox(height: 20,),
                          Container(
                            width: 140, height: 40,
                            color: Colors.grey.shade200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.add),
                                SizedBox(width: 20,),
                                Text("1"),
                                SizedBox(width: 20,),
                                Icon(Icons.remove),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }, itemCount: names.length, separatorBuilder: (BuildContext context, int index) { return const SizedBox(height: 15,); },),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Text("Total",style: TextStyle(fontSize: 25, color: Colors.grey, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Text("\$ 2000",style: TextStyle(fontSize: 20, color: Colors.greenAccent, fontWeight: FontWeight.bold),),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(onPressed: (){},
                  child: const Text("Check Out",style: TextStyle(fontSize: 25, color: Colors.grey, fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
