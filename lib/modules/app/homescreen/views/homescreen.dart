import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  homescreen({super.key});

  Connectivity connectivity = Connectivity();

  @override
  Widget build(BuildContext context) {
    Stream<ConnectivityResult> stream = connectivity.onConnectivityChanged;
    return Scaffold(
      appBar: AppBar(
        title: Text('homescreen'),
      ),
      body: StreamBuilder(
        stream: stream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            return (snapshot.data == ConnectivityResult.wifi ||
                    snapshot.data == ConnectivityResult.mobile)
                ? Center(
                    child: Text('data'),
                  )
                : Center(
                    child: Text('flutter'),
                  );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
