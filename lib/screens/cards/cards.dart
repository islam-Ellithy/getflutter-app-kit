import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  bool fav = false;
  bool fav1 = false;
  bool fav2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: GFColors.getGFColor(GFColor.dark),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              CupertinoIcons.back,
              color: GFColors.getGFColor(GFColor.success),
            ),
          ),
          title: Text(
            'Cards',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(children: <Widget>[
          Container(
            height: 40,
            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
            child: GFSegmentTabs(
              tabController: tabController,
              width: 280.0,
              initialIndex: 0,
              length: 3,
              tabs: <Widget>[
                Text(
                  "Basic",
                ),
                Tab(
                  child: Text(
                    "Avatars",
                  ),
                ),
                Tab(
                  child: Text(
                    "Full Image",
                  ),
                ),
              ],
              tabBarColor: GFColors.getGFColor(GFColor.light),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: GFColors.getGFColor(GFColor.white),
              unselectedLabelColor: GFColors.getGFColor(GFColor.dark),
              indicator: BoxDecoration(
                color: Colors.black,
                border: Border(
                  bottom: BorderSide(
                    color: GFColors.getGFColor(GFColor.success),
                    width: 3.0,
                  ),
                ),
//                borderRadius: BorderRadius.circular(2.0)
              ),
              indicatorPadding: EdgeInsets.all(8.0),
              indicatorWeight: 2.0,
              border: Border.all(color: Colors.white, width: 2.0),
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height - 140,
              child: GFTabBarView(
                  controller: tabController,
                  height: 400.0,
                  children: <Widget>[
                    Container(
                      child: ListView(
                        children: <Widget>[
                          GFCard(
                            boxFit: BoxFit.cover,

                            // colorFilter: new ColorFilter.mode(
                            //     Colors.black.withOpacity(0.67), BlendMode.darken),
                            image: Image.asset(
                              'lib/assets/images/card.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.fitWidth,
                            ),
//              imageOverlay: AssetImage("lib/assets/food.jpeg"),
                            titlePosition: GFPosition.end,
                            title: GFListTile(
                              titleText: 'Card Title',
                              icon: GFIconButton(
                                onPressed: null,
                                icon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      fav = !fav;
                                    });
                                  },
                                  child: fav
                                      ? Icon(
                                          Icons.favorite,
                                          color: GFColors.getGFColor(
                                              GFColor.danger),
                                        )
                                      : Icon(Icons.favorite_border),
                                ),
                                type: GFButtonType.transparent,
                              ),
                            ),
                            content: Text(
                              "Some quick example text to build on the card",
                              style: TextStyle(color: Colors.grey),
                            ),
                            buttonBar: GFButtonBar(
                              padding: EdgeInsets.only(bottom: 10),
                              children: <Widget>[
                                GFButton(
                                  onPressed: () {},
                                  text: 'Read More',
                                ),
                                GFButton(
                                  onPressed: () {},
                                  text: 'Send',
                                )
                              ],
                            ),
                          ),
                          GFCard(
                            boxFit: BoxFit.contain,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.67),
                                BlendMode.darken),
                            image: Image.asset(
                              'lib/assets/images/card1.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.fitWidth,
                            ),
//              imageOverlay: AssetImage("lib/assets/food.jpeg"),
                            titlePosition: GFPosition.end,
                            title: GFListTile(
                              titleText: 'Card Title',
                              icon: GFIconButton(
                                onPressed: null,
                                icon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      fav1 = !fav1;
                                    });
                                  },
                                  child: fav1
                                      ? Icon(
                                          Icons.favorite,
                                          color: GFColors.getGFColor(
                                              GFColor.danger),
                                        )
                                      : Icon(Icons.favorite_border),
                                ),
                                type: GFButtonType.transparent,
                              ),
                            ),
                            content: Text(
                              "Some quick example text to build on the card",
                              style: TextStyle(color: Colors.grey),
                            ),
                            buttonBar: GFButtonBar(
                              children: <Widget>[
                                GFButton(
                                  onPressed: null,
                                  child: Text("Read More"),
                                  icon: Icon(Icons.keyboard_arrow_right),
                                  type: GFButtonType.transparent,
                                  position: GFPosition.end,
                                ),
                              ],
                            ),
                          ),
                          GFCard(
                            boxFit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.67),
                                BlendMode.darken),
                            image: Image.asset(
                              'lib/assets/images/card2.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.fitWidth,
                            ),
//              imageOverlay: AssetImage("lib/assets/food.jpeg"),
                            titlePosition: GFPosition.end,
                            title: GFListTile(
                              titleText: 'Card Title',
                            ),
                            content: Text(
                              "Some quick example text to build on the card",
                              style: TextStyle(color: Colors.grey),
                            ),
                            buttonBar: GFButtonBar(
                              padding: EdgeInsets.only(bottom: 10),
                              children: <Widget>[
                                GFButton(
                                  onPressed: () {},
                                  text: 'Share',
                                )
                              ],
                            ),
                          ),
                          GFCard(
                            boxFit: BoxFit.fitWidth,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.67),
                                BlendMode.darken),
                            image: Image.asset(
                              'lib/assets/images/card3.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.fitWidth,
                            ),
//              imageOverlay: AssetImage("lib/assets/food.jpeg"),
                            titlePosition: GFPosition.end,
                            title: GFListTile(
                              titleText: 'Card Title',
                            ),
                            content: Text(
                              "Some quick example text to build on the card",
                              style: TextStyle(color: Colors.grey),
                            ),
                            buttonBar: GFButtonBar(
                              padding: EdgeInsets.only(bottom: 10),
                              children: <Widget>[
                                GFButton(
                                  onPressed: () {},
                                  text: 'View More',
                                ),
                                GFButton(
                                  onPressed: () {},
                                  text: 'Share',
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: ListView(
                        children: <Widget>[
                          GFCard(
                            boxFit: BoxFit.fill,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.67),
                                BlendMode.darken),
                            image: Image.asset(
                              "lib/assets/images/image1.png",
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.fitWidth,
                            ),
//              imageOverlay: AssetImage("lib/assets/food.jpeg"),
                            titlePosition: GFPosition.end,
                            title: GFListTile(
                              avatar: GFAvatar(
                                backgroundImage:
                                    AssetImage('lib/assets/images/avatar8.png'),
                              ),
                              titleText: 'Card Title',
                              subtitleText: 'Sub Title',
                              icon: GFIconButton(
                                onPressed: null,
                                icon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      fav2 = !fav2;
                                    });
                                  },
                                  child: fav2
                                      ? Icon(
                                          Icons.favorite,
                                          color: GFColors.getGFColor(
                                              GFColor.danger),
                                        )
                                      : Icon(Icons.favorite_border),
                                ),
                                type: GFButtonType.transparent,
                              ),
                            ),
                            content: Text(
                              'GetFlutter is an open source library that comes with pre-build 1000+ UI components',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),

//
                          GFCard(
                            boxFit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.67),
                                BlendMode.darken),
                            image: Image.asset(
                              'lib/assets/images/image2.png',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.fitWidth,
                            ),
//              imageOverlay: AssetImage("lib/assets/food.jpeg"),
                            titlePosition: GFPosition.end,
                            title: GFListTile(
                              avatar: GFAvatar(
                                backgroundImage:
                                    AssetImage('lib/assets/images/avatar9.png'),
                              ),
                              titleText: 'Card Title',
                              subtitleText: 'Sub Title',
                            ),
                            content: Text(
                              "Some quick example text to build on the card",
                              style: TextStyle(color: Colors.grey),
                            ),
                            buttonBar: GFButtonBar(
                              padding: EdgeInsets.only(bottom: 20, top: 10),
                              children: <Widget>[
                                GFIconButton(
                                    color: Color(0xFF3B5998),
                                    shape: GFIconButtonShape.circle,
                                    icon: SvgPicture.asset(
                                        'lib/assets/icons/fb.svg'),
                                    onPressed: () {}),
                                GFIconButton(
                                    color: Color(0xFF00ACEE),
                                    shape: GFIconButtonShape.circle,
                                    icon: SvgPicture.asset(
                                        'lib/assets/icons/twitter.svg'),
                                    onPressed: () {}),
                                GFIconButton(
                                    color: Color(0xFF25D366),
                                    shape: GFIconButtonShape.circle,
                                    icon: SvgPicture.asset(
                                        'lib/assets/icons/whatsapp.svg'),
                                    onPressed: () {}),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: ListView(
                        children: <Widget>[
                          GFCard(
                            boxFit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.60),
                                BlendMode.darken),
                            imageOverlay:
                                AssetImage('lib/assets/images/image.png'),
                            title: GFListTile(
                              avatar: GFAvatar(
                                backgroundImage: AssetImage(
                                    'lib/assets/images/avatar10.png'),
                              ),
                              title: Text(
                                'Card Title',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                              subTitle: Text(
                                'subtitle',
                                style: TextStyle(color: Colors.grey),
                              ),
//                                    icon: GFAvatar(
//                                        child: Icon(Icons.insert_emoticon)
//                                    )
                            ),
                            content: Text(
                              'GetFlutter is an open source library that comes with pre-build 1000+ UI components',
                              style: TextStyle(color: Colors.grey),
                            ),
                            buttonBar: GFButtonBar(
                              padding: EdgeInsets.only(bottom: 10),
                              children: <Widget>[
                                GFButton(
                                  onPressed: () {},
                                  text: 'Send',
                                ),
                                GFButton(
                                  onPressed: () {},
                                  text: 'View',
                                )
                              ],
                            ),
                          ),
                          GFCard(
                            boxFit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.40),
                                BlendMode.darken),
                            imageOverlay:
                                AssetImage('lib/assets/images/image1.png'),
                            title: GFListTile(
                              title: Text(
                                'Card Title',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                              subTitle: Text(
                                'subtitle',
                                style: TextStyle(color: Colors.grey),
                              ),
//                                    icon: GFAvatar(
//                                        child: Icon(Icons.insert_emoticon)
//                                    )
                            ),
                            content: Text(
                              'GetFlutter is an open source library that comes with pre-build 1000+ UI components',
                              style: TextStyle(color: Colors.grey),
                            ),
                            buttonBar: GFButtonBar(
                              padding: EdgeInsets.only(bottom: 20),
                              children: <Widget>[
                                GFIconButton(
                                    color: Color(0xFF3B5998),
                                    shape: GFIconButtonShape.circle,
                                    icon: SvgPicture.asset(
                                        'lib/assets/icons/fb.svg'),
                                    onPressed: () {}),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ]))
        ]));
  }
}
