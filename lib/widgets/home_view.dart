import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:test_project/constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int index = 0;
  var view = views;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: views[index],
        bottomNavigationBar: ConvexAppBar(
          initialActiveIndex: index,
          onTap: (index) {
            this.index = index;
            setState(() {
              
            });
          },
          shadowColor:const Color(0xffD9E7AB),
          backgroundColor: const Color(0xffF3FCD6),
          activeColor: const  Color(0xff5E6C00),
          style: TabStyle.react,
           height: 60,
          curveSize: 90,
          items:  [
            TabItem(
                icon: Icon(
                  Icons.home,
                  color: index == index ? const Color(0xff5E6C00) : Colors.grey,
                ),
                title: 'الرئيسية',
                ),
            TabItem(
                icon: Icon(
                  Icons.camera,
                  color: index == index ? const Color(0xff5E6C00) : Colors.grey,
                ),
                title: 'ترجمة لغة الاشارة'
                ),
            TabItem(
                icon: Icon(
                  Icons.mic,
              color: index == index? const Color(0xff5E6C00) : Colors.grey,

                ),
                title: 'ترجمة الصوت او النص'),
          ],
        ));
  }
}



//  NavigationBar(
//         shadowColor: Color(0xffD9E7AB),
//         backgroundColor: Color(0xffF3FCD6),
//           selectedIndex: index,
//           onDestinationSelected: (index) {
//             this.index = index;
//             setState(() {
              
//             });
//           },
//           destinations: const [
//             NavigationDestination(
              // icon: Icon(
              //   Icons.home,
              //   color: Color(0xff5E6C00),
              //   size: 28,
              //   ), 
              // label: 'الرئيسية'),
//             NavigationDestination(
//                 icon: Icon(Icons.camera), label: 'ترجمة لغة الاشارة'),
//             NavigationDestination(
//                 icon: Icon(Icons.mic), label: 'ترجمة الصوت او النص'),
//           ]),