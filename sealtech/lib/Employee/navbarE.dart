import 'package:flutter/material.dart';
import 'package:sealtech/client/Home.dart' as firstTab;
import 'package:sealtech/client/cart.dart' as fourthTab;
import 'package:sealtech/client/category.dart' as secondTab;
import 'package:sealtech/client/search.dart' as thirdTab;
import 'package:sealtech/components/theme.dart';

//Initial widget
class NavbarE extends StatefulWidget{

  @override
  HomeWidget createState() => HomeWidget();
}

//State<StatefulWidget> action method
class HomeWidget extends State<NavbarE>{
  int _selectedTab = 0;

  //Page controller
  final PageController _navPage = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Container(
          color: bgColor,
          child: PageView(
            controller: _navPage,
            onPageChanged: (index){
              setState(() {
                _selectedTab = index;
              });
            },
            children: <Widget>[
              firstTab.Home(),
              secondTab.Category(),
              thirdTab.Search(),
              fourthTab.Cart(),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: bgColor,
          child: Container(
            color: bgColor,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                //home
                IconButton(
                  iconSize: 30,
                  icon: Icon(
                    _selectedTab == 0 ? Icons.home : Icons.home_outlined,
                    color: _selectedTab == 0 ? accentColor : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _navPage.jumpToPage(0);
                  });}),

                //location
                IconButton(
                  iconSize: 30,
                  icon: Icon(
                    _selectedTab == 1 ? Icons.map : Icons.map_outlined,
                    color: _selectedTab == 1 ? accentColor : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _navPage.jumpToPage(1);
                    });
                  },
                ),

                //salary
                IconButton(
                  iconSize: 30,
                  icon: Icon(
                    _selectedTab == 2 ? Icons.wallet : Icons.wallet_outlined,
                    color: _selectedTab == 2 ? accentColor : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _navPage.jumpToPage(2);
                  });}),

                //profile
                IconButton(
                  iconSize: 30,
                  icon: Icon(
                    _selectedTab == 3 ? Icons.person : Icons.person_outline,
                    color: _selectedTab == 3 ? accentColor : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _navPage.jumpToPage(3);
                    });
                  },
                ),
              ],
            ),
            ),
        ),
    );
  }
}