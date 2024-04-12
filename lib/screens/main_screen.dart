import 'package:flutter/material.dart';
import 'package:food_ui/screens/add.dart';
import 'package:food_ui/screens/home.dart';
import 'package:food_ui/screens/label.dart';
import 'package:food_ui/screens/notifications.dart';
import 'package:food_ui/screens/profile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<IconData> icons = [
    Icons.home,
    Icons.label,
    Icons.add,
    Icons.notifications,
    Icons.person,
  ];

  List pages = [
    const Home(),
    const Label(),
    const Add(),
    const Notifications(),
    const Profile(),
  ];

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: List.generate(pages.length, (index) => pages[index]),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 56.0,
        color: Theme.of(context).colorScheme.primary,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildTabIcon(0),
            buildTabIcon(1),
            buildTabIcon(3),
            buildTabIcon(4),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: const Icon(Icons.add),
        onPressed: () => _pageController.jumpToPage(2),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }

  Widget buildTabIcon(int index) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        index == 3 ? 30 : 0,
        0,
        index == 1 ? 30 : 0,
        0,
      ),
      child: IconButton(
        icon: Icon(icons[index], size: 24.0),
        color: _page == index
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).textTheme.bodySmall!.color,
        onPressed: () {
          _pageController.jumpToPage(index);
        },
      ),
    );
  }
}
