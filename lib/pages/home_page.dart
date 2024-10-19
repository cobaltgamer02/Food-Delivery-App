import "package:flutter/material.dart";
import "package:foodel/components/my_current_location.dart";
import "package:foodel/components/my_desciption_box.dart";
import "package:foodel/components/my_drawer.dart";
import "package:foodel/components/my_sliver_app_bar.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppBar(
                  title: const Text("Title"),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Divider(indent: 25, endIndent: 25, color: Theme.of(context).colorScheme.secondary,),
                    //current location
                    MyCurrentLocation(),

                    //description box 
                    MyDescriptionBox(),
                  ],)
                ),
              ],
          body: Container(
            color: Colors.blue,
          )),
    );
  }
}
