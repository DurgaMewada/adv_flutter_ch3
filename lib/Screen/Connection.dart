import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network connectivity'),
        centerTitle: true,
      ),
      body: StreamBuilder(stream: Connectivity().onConnectivityChanged, builder:
          (context, snapshot) {
        if(snapshot.data!.contains(ConnectivityResult.mobile))
        {
          return const Center(child: Text('Mobile connected to Network'));
        }
        else if(snapshot.data!.contains(ConnectivityResult.wifi))
          {
            return const Center(child: Text('Mobile connected to Wifi'));
          }
        else
        {
          return Center(child: Image.asset('asset/img/images.png'));
        }
      },),
    );
  }
}