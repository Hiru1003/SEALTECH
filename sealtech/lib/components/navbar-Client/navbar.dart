import 'package:flutter/material.dart';
import 'package:sealtech/components/navbar/fifthTab.dart' as fifthTab;
import 'package:sealtech/components/navbar/firstTab.dart' as firstTab;
import 'package:sealtech/components/navbar/fourthTab.dart' as fourthTab;
import 'package:sealtech/components/navbar/secondTab.dart' as secondTab;
import 'package:sealtech/components/navbar/thirdTab.dart' as thirdTab;
import 'package:sealtech/components/theme.dart';

//Initial widget
class InitalScreenWidget extends StatefulWidget{

  @override
  HomeWidget createState() => HomeWidget();
}

//State<StatefulWidget> action method
class HomeWidget extends State<InitalScreenWidget>{
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
              fifthTab.Profile(),
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

                //category
                IconButton(
                  iconSize: 30,
                  icon: Icon(
                    _selectedTab == 1 ? Icons.category : Icons.category_outlined,
                    color: _selectedTab == 1 ? accentColor : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _navPage.jumpToPage(1);
                    });
                  },
                ),

                //search
                IconButton(
                  iconSize: 30,
                  icon: Icon(
                    _selectedTab == 2 ? Icons.search : Icons.search_outlined,
                    color: _selectedTab == 2 ? accentColor : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _navPage.jumpToPage(2);
                  });}),

                //cart
                IconButton(
                  iconSize: 30,
                  icon: Icon(
                    _selectedTab == 3 ? Icons.shopping_cart : Icons.shopping_cart_outlined,
                    color: _selectedTab == 3 ? accentColor : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _navPage.jumpToPage(3);
                  });}),

                //profile
                IconButton(
                  iconSize: 30,
                  icon: Icon(
                    _selectedTab == 4 ? Icons.person : Icons.person_outline,
                    color: _selectedTab == 4 ? accentColor : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _navPage.jumpToPage(4);
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