import 'package:covid_flutter/service/api_service.dart';
import 'package:flutter/material.dart';
import '../model/hoax.dart';

class HoaxScreen extends StatelessWidget {
  final Future hoax = ApiService().getHoax();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: hoax,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error: ${snapshot.error}');
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            print('Data: ${snapshot.data}');
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Hoax hoax = snapshot.data![index];
                return Column(
                  children: <Widget> [
                    Text('${hoax.title}'),
                    Text('${hoax.timestamp}'),
                    Text('${hoax.url}')
                  ],
                );
              },
            );
          } else {
            return Center(child: Text('Tidak ada data tersedia'));
          }
        },
      )
    );
  }
}
