import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomBarBody extends StatelessWidget {
  const BottomBarBody({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) => navigationShell.goBranch(
        index,
        initialLocation: index == navigationShell.currentIndex,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: const [
          NavigationDestination(label: 'Collection`', icon: Icon(Icons.collections_outlined)),
          NavigationDestination(label: 'Games', icon: Icon(Icons.playlist_add_check)),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
