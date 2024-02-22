import 'package:flutter/material.dart';
import 'package:sealtech/components/navbar/fifthTab.dart' as _fifthTab;
import 'package:sealtech/components/navbar/firstTab.dart' as _firstTab;
import 'package:sealtech/components/navbar/fourthTab.dart' as _fourthTab;
import 'package:sealtech/components/navbar/secondTab.dart' as _secondTab;
import 'package:sealtech/components/navbar/thirdTab.dart' as _thirdTab;
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
  PageController _navPage = PageController(initialPage: 0);

  Widget build(BuildContext ctx){
    return Scaffold(
        body: PageView(
          controller: _navPage,
          onPageChanged: (int){
            setState(() {
              _selectedTab = int;
            });
            print('Page changes to index $int');
          },
          children: <Widget>[
            new _firstTab.Home(),
            new _secondTab.Search(),
            new _thirdTab.Bookmark(),
            new _fourthTab.Setting(),
            new _fifthTab.Setting(),
          ],
        ),
      
        backgroundColor: bgColor, //white ivory
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          
          child: Container(
            height: 60.0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  iconSize: 35,
                  padding: EdgeInsets.only(left: 28.0),
                  icon: Icon(
                    _selectedTab == 0 ? Icons.home : Icons.home_outlined,
                    color: _selectedTab == 0 ? Theme.of(ctx).colorScheme.secondary : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _navPage.jumpToPage(0);
                  });}),
                IconButton(
                  iconSize: 35,
                  icon: Icon(
                    _selectedTab == 1 ? Icons.search : Icons.search_outlined,
                    color: _selectedTab == 1 ? Theme.of(ctx).colorScheme.secondary : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _navPage.jumpToPage(1);
                  });}),
                IconButton(
                  iconSize: 35,
                  icon: Icon(
                    _selectedTab == 2 ? Icons.bookmark : Icons.bookmark_border,
                    color: _selectedTab == 2 ? Theme.of(ctx).colorScheme.secondary : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _navPage.jumpToPage(2);
                  });}),
                IconButton(
                  iconSize: 35,
                  icon: Icon(
                    _selectedTab == 3 ? Icons.settings : Icons.settings_outlined,
                    color: _selectedTab == 3 ? Theme.of(ctx).colorScheme.secondary : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _navPage.jumpToPage(3);
                  });}),
                IconButton(
                  iconSize: 35,
                  padding: EdgeInsets.only(right: 28.0),
                  icon: Icon(
                    _selectedTab == 4 ? Icons.more_horiz : Icons.more_horiz_outlined,
                    color: _selectedTab == 4 ? Theme.of(ctx).colorScheme.secondary : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _navPage.jumpToPage(4);
                  });}),
              ],
            ),
            ),
        ),
    );
  }
}