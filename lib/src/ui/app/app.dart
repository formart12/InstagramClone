import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_with_provider/src/ui/app/app_view_model.dart';
import 'package:flutter_instagram_clone_with_provider/src/widget/instaram_icon.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _body(), bottomNavigationBar: _bottomNav());
  }

  Widget _body() => Consumer<AppViewModel>(
      builder: (context, provider, child) => IndexedStack(
            index: provider.pageIndex,
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.black,
              ),
            ],
          ));

  Widget _bottomNav() => Consumer<AppViewModel>(
        builder: (context, provider, value) => BottomNavigationBar(
          currentIndex: provider.pageIndex,
          onTap: provider.changeIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: InstagramIcon(path: ImagePath.homeOff),
              activeIcon: InstagramIcon(path: ImagePath.homeOn),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: InstagramIcon(path: ImagePath.searchOff),
              activeIcon: InstagramIcon(path: ImagePath.searchOn),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: InstagramIcon(path: ImagePath.upload),
              activeIcon: InstagramIcon(path: ImagePath.upload),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: InstagramIcon(path: ImagePath.reelsOff),
              activeIcon: InstagramIcon(path: ImagePath.reelsOn),
              label: "",
            ),
            const BottomNavigationBarItem(
              icon: SizedBox(width: 30, height: 30, child: CircleAvatar()),
              activeIcon:
                  SizedBox(width: 30, height: 30, child: CircleAvatar()),
              label: "",
            ),
          ],
        ),
      );
}
