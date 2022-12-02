import 'package:contact/data/sqfldb.dart';
import 'package:contact/screens/cart_view.dart';
import 'package:flutter/material.dart';

import '../data/dbhelper.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

List<Shopping> shoppingList = [];

class _HomeState extends State<Home> {
  int pageIndex = 0;

  final pages = [
    const Home(),
    CartView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: FutureBuilder<List<Shopping>>(
            future: ShoppingHelper.instance.getAllShopping(),
            builder: (context, snapshot) {
    if (snapshot.hasError) {
    return Center(
    child: Text(snapshot.error.toString()),
    );
    }
    if (snapshot.hasData) {
    todoList = snapshot.data!;
    return ListView.builder(
    itemCount: todoList.length,
    itemBuilder: (context, index) {
    Todo todo = todoList[index];
    return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child:,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Category1",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                const SizedBox(height: 10.0,),
                Container(
                  height: MediaQuery.of(context).size.height/4,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:[GridView.count(
                            scrollDirection: Axis.horizontal,
                            crossAxisCount: 1,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            shrinkWrap: true,
                            children: List.generate(
                              7,
                                  (index) {
                                return Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4wEaH?ver=6557'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5.0),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios,size: 25,),),
                    ],),
                  ),
                ),
                const SizedBox(height: 30,),
                const Text("Category2",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                const SizedBox(height: 10.0,),
                Container(
                  height: MediaQuery.of(context).size.height/4,
                  child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GridView.count(
                          scrollDirection: Axis.horizontal,
                          crossAxisCount: 1,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          shrinkWrap: true,
                          children: List.generate(
                            7,
                                (index) {
                              return Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4wEaH?ver=6557'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5.0),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios,size: 25,),),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                const Text("Category3",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                const SizedBox(height: 10.0,),
                Container(
                  height: MediaQuery.of(context).size.height/4,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GridView.count(
                          scrollDirection: Axis.horizontal,
                          crossAxisCount: 1,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          shrinkWrap: true,
                          children: List.generate(
                            7,
                                (index) {
                              return Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4wEaH?ver=6557'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5.0),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios,size: 25,),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: Container(
        height: 40,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const Icon(
                Icons.home_filled,
                color: Colors.black,
                size: 30,
              )
                  : const Icon(
                Icons.home_outlined,
                color: Colors.grey,
                size: 30,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartView()),
                );
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                Icons.favorite_rounded,
                color: Colors.black,
                size: 30,
              )
                  : const Icon(
                Icons.favorite_outline_outlined,
                color: Colors.grey,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}