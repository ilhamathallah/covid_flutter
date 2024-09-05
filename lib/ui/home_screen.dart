import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300, width: 2), // Mengatur Border
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_active_outlined, size: 30,),
              ),
            ),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hi, athallah!', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(height: 2),
              Text('how are you feeling today?', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black45),)
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget> [
          Column(
            children: [
              // textfield
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search_rounded, color: Colors.blue.shade200,),
                    filled: true,
                    fillColor: Colors.blue.shade50,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200, width: 2.0),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade200, width: 2.0),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.blue.shade200)
                  ),
                ),
              ),
              // teks our service
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Our Service', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                    TextButton(
                        onPressed: (){},
                        child: Text('See more', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),),
                    )
                  ],
                ),
              ),
              // content
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget> [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300, width: 2), // Mengatur Border
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/hospital');
                              },
                              icon: Icon(Icons.local_hospital_rounded, size: 40,color: Color(0xFFFFC1E3),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('Hospital', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black54),)
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300, width: 2), // Mengatur Border
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/news');
                              },
                              icon: Icon(Icons.newspaper_rounded, size: 40,color: Color(0xFFB0BEC5),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('News', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black54),)
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300, width: 2), // Mengatur Border
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.warning_amber_rounded, size: 40,color: Color(0xFFFF5722),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('Hoax', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black54),)
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300, width: 2), // Mengatur Border
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.grid_view_rounded, size: 40,color: Color(0xFF009688),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('Other', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black54),)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              // teks our package
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Our Package', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/news');
                      },
                      child: Text('See more', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),),
                    )
                  ],
                ),
              ),
              // content news 2 item
              Row(
                children: <Widget> [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      color: Colors.grey,
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                          Text('title news', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text('timestamp', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
