import 'package:bilibili/widgets/leading_expand_icon.dart';
import 'package:bilibili/widgets/search_input_placeholder.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white),
        iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.white),
        titleSpacing: 0,
        leadingWidth: 0,
        leading: Text(""),
        title: Container(
          margin: EdgeInsets.only(left: 0),
          child: Row(
            children: [
              Container(
                child: Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                        child: Row(
                          children: [
                            LeadingExpandIcon(),
                            Container(
                              margin: EdgeInsets.fromLTRB(3, 10, 10, 10),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://static.hdslb.com/images/member/noface.gif"),
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                          print("12io");
                        });
                  },
                ),
              ),
              SearchInputPlaceholder(),
            ],
          ),
        ),
        actions: [
          Icon(Icons.gamepad_outlined),
          Icon(Icons.download_for_offline_sharp),
          Icon(Icons.message),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text("body"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("header")),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("首页"),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text("历史记录"),
            ),
            ListTile(
              leading: Icon(Icons.downloading),
              title: Text("下载管理"),
            ),
          ],
        ),
      ),
    );
  }
}
