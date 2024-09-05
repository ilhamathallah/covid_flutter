import 'package:flutter/material.dart';
import 'package:covid_flutter/service/api_service.dart';
import 'package:covid_flutter/model/news.dart';


class NewsScreen extends StatelessWidget {
  final Future news = ApiService().getNews();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita Covid-19'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: FutureBuilder(
        future: news,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error: ${snapshot.error}'); // Menampilkan kesalahan
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            print('Data: ${snapshot.data}'); // Menampilkan data
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                News news = snapshot.data![index];
                return Card(
                  shadowColor: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget> [
                        Icon(Icons.newspaper, size: 80,color: Colors.grey.shade800,),
                        Container(
                          width: 250,
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget> [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: 
                                Text('${news.title}', maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text('${news.timestamp}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('${news.url}', style: TextStyle(fontSize: 12), maxLines: 2,),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(child: Text('Tidak ada data tersedia'));
          }
        },
      ),
    );
  }
}
