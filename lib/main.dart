import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

// class to draw the profile screen
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: CustomSliverDelegate(
                expandedHeight: 120,
              ),
            ),
            SliverFillRemaining(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "name",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "number",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: .7,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey[400], width: 2),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Icon(Icons.chevron_right,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Wallet',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black26,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey[400], width: 2),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Icon(Icons.chevron_right,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'My Orders',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black26,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey[400], width: 2),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Icon(Icons.chevron_right,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Wishlist',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black26,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey[400], width: 2),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Icon(Icons.chevron_right,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'My Address',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black26,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: .7,
                    indent: 20,
                    endIndent: 20,
                  ),
                  ListTile(
                    title: Text('Summary'),
                    // subtitle: Text('Privacy and logout'),
                    leading: Icon(Icons.chevron_right, color: Colors.black),
                    trailing: Icon(Icons.chevron_right, color: Colors.black),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Share this app'),
                    // subtitle: Text('Privacy and logout'),
                    leading: Icon(Icons.chevron_right, color: Colors.black),
                    trailing: Icon(Icons.chevron_right, color: Colors.black),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Merchant Login'),
                    // subtitle: Text('Privacy and logout'),
                    leading: Icon(Icons.chevron_right, color: Colors.black),
                    trailing: Icon(Icons.chevron_right, color: Colors.black),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Help & Support'),
                    // subtitle: Text('Privacy and logout'),
                    leading: Icon(Icons.chevron_right, color: Colors.black),
                    trailing: Icon(Icons.chevron_right, color: Colors.black),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Logout'),
                    // subtitle: Text('Privacy and logout'),
                    leading: Icon(Icons.chevron_right, color: Colors.black),
                    trailing: Icon(Icons.chevron_right, color: Colors.black),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final bool hideTitleWhenExpanded;

  CustomSliverDelegate({
    @required this.expandedHeight,
    this.hideTitleWhenExpanded = true,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final appBarSize = expandedHeight - shrinkOffset;
    final cardTopPosition = expandedHeight / 2 - shrinkOffset;
    final proportion = 2 - (expandedHeight / appBarSize);
    final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;
    return SizedBox(
      height: expandedHeight + expandedHeight / 2,
      child: Stack(
        children: [
          SizedBox(
            height: appBarSize < kToolbarHeight ? kToolbarHeight : appBarSize,
            child: AppBar(
              centerTitle: true,
              backgroundColor: Colors.lightBlueAccent,
              leading: Container(),
              elevation: 0.0,
              title: Opacity(
                  opacity: hideTitleWhenExpanded ? 1.0 - percent : 1.0,
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            top: cardTopPosition > 0 ? cardTopPosition : 0,
            bottom: 0.0,
            child: Opacity(
              opacity: percent,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 120 * percent),
                child: Card(
                  elevation: 10.0,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            // image: AssetImage("assets/images/person.png")
                            )),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight + expandedHeight / 2;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
