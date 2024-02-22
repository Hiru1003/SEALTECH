import 'package:flutter/material.dart';
import 'package:sealtech/components/navbar/fifthTab.dart' as fifthTab;
import 'package:sealtech/components/navbar/firstTab.dart' as firstTab;
import 'package:sealtech/components/navbar/fourthTab.dart' as fourthTab;
import 'package:sealtech/components/navbar/secondTab.dart' as secondTab;
import 'package:sealtech/components/navbar/thirdTab.dart' as thirdTab;
import 'package:sealtech/components/theme.dart';

//Initial widget
class InitalScreenWidget extends StatefulWidget{
  final bool isClient;

  InitalScreenWidget({required Key key, this.isClient = true}) : super(key: key);

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
        body: PageView(
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
      
        backgroundColor: bgColor, //white ivory
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          
          child: Container(
            height: 60.0,
            color: bgColor, // Set the background color of the navbar
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  iconSize: 35,
                  padding: const EdgeInsets.only(left: 28.0),
                  icon: Icon(
                    _selectedTab == 0 ? (widget.isClient ? Icons.home : Icons.work) : (widget.isClient ? Icons.home_outlined : Icons.work_outline),
                    color: _selectedTab == 0 ? accentColor : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _navPage.jumpToPage(0);
                  });}),
                IconButton(
                  iconSize: 35,
                  icon: Icon(
                    _selectedTab == 1 ? (widget.isClient ? Icons.category : Icons.business_center) : (widget.isClient ? Icons.category_outlined : Icons.business_center_outlined),
                    color: _selectedTab == 1 ? accentColor : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _navPage.jumpToPage(1);
                    });
                  },
                ),
                IconButton(
                  iconSize: 35,
                  icon: Icon(
                    _selectedTab == 2 ? (widget.isClient ? Icons.search : Icons.assignment) : (widget.isClient ? Icons.search_outlined : Icons.assignment_outlined),
                    color: _selectedTab == 2 ? accentColor : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _navPage.jumpToPage(2);
                  });}),
                IconButton(
                  iconSize: 35,
                  icon: Icon(
                    _selectedTab == 3 ? (widget.isClient ? Icons.shopping_cart : Icons.people) : (widget.isClient ? Icons.shopping_cart_outlined : Icons.people_outline),
                    color: _selectedTab == 3 ? accentColor : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _navPage.jumpToPage(3);
                  });}),
                IconButton(
                  iconSize: 35,
                  icon: Icon(
                    _selectedTab == 4 ? (widget.isClient ? Icons.person : Icons.person_outline) : (widget.isClient ? Icons.person_outline : Icons.person),
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