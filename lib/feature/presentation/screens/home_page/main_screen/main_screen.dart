import 'package:flutter/material.dart';
import 'package:test_app/feature/presentation/consts/colors.dart';
import 'package:test_app/feature/presentation/consts/text_style.dart';
import 'package:test_app/feature/presentation/widgets/input_area.dart';
import '../tab_bar/error.dart';
import '../tab_bar/tab_new.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final controller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: InputArea(onChange: (value){},
            controller: controller,
            text: 'Search',
            icon: const Icon(Icons.search, color:  Colors.pink,),
          ),
          bottom: const TabBar(
            labelColor: Colors.black,
            labelStyle: AppTextStyle.w500s20black,
            unselectedLabelColor: AppColors.grey,
            indicatorColor: AppColors.pink,
            tabs: [
              Text('New'),
              Text(
                'Popular',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [TabNew(), ErrorScreen()],
        ),
      ),
    );
  }
}
