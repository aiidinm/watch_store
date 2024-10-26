import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/model/fake_data.dart';
import 'package:watch_store/component/my_colors.dart';
import 'package:watch_store/component/my_string.dart';
import 'package:watch_store/view/buy_watch.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final GlobalKey<ScaffoldState> _key = GlobalKey();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 17;
    return SafeArea(
      child: Scaffold(
        key: _key,
        backgroundColor: SolidColors.backgroundColor,
        drawer: Drawer(
          backgroundColor: SolidColors.backgroundPictureColor,
          child: ListView(
            children: const [
              DrawerHeader(
                child: Center(
                  child: Text("hi"),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: SolidColors.backgroundColor,
            title: Padding(
              padding: EdgeInsets.all(bodyMargin - 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        _key.currentState!.openDrawer();
                      },
                      icon: const Icon(
                        Icons.sort,
                        size: 30,
                        color: SolidColors.backgroundPictureColor,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 30,
                            color: SolidColors.whiteColor,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_cart_outlined,
                            color: SolidColors.whiteColor,
                            size: 30,
                          ))
                    ],
                  )
                ],
              ),
            )),
        body: const BodyPage(),
      ),
    );
  }
}

class BodyPage extends StatefulWidget {
  const BodyPage({
    super.key,
  });

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 17;
    return Padding(
      padding: EdgeInsets.only(right: bodyMargin, left: bodyMargin, top: 40),
      child: Column(
        children: [
          //title text  one

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(children: [
              Text(
                MyString.featured,
                style: textTheme.titleMedium,
              )
            ]),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  MyString.products,
                  style: textTheme.titleLarge,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: SolidColors.whiteColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: SolidColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 8),

          //poster

          Stack(
            children: [
              //backGround color

              Container(
                width: size.width / 1.2,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: SolidColors.backgroundPictureColor,
                ),
              ),
              // poster title
              Positioned(
                top: 5,
                left: bodyMargin - 10,
                bottom: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MyString.titlePoster,
                      style: textTheme.headlineMedium,
                    ),
                    Text(
                      MyString.doIt,
                      style: textTheme.headlineLarge,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      MyString.aboutMooreWatchPoster,
                      style: textTheme.headlineMedium,
                    ),
                    InkWell(
                      splashColor: SolidColors.backgroundColor,
                      onTap: () {},
                      child: Container(
                        width: 120,
                        height: 30,
                        decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(5, 5)),
                          color: SolidColors.whiteColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              MyString.buyWatch,
                              style: textTheme.headlineSmall,
                            ),
                            const Icon(
                              Icons.arrow_forward,
                              color: SolidColors.backgroundColor,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //image shadow
              Positioned(
                right: 25,
                bottom: 25,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: SolidColors.shadowColor.withOpacity(0.7),
                        blurRadius: 40,
                        spreadRadius: 8,
                        offset: const Offset(-12, -12),
                      )
                    ],
                  ),
                ),
              ),
              //image poster
              Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset(
                  Assets.image.watchOne.path,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),

          //title two

          const SizedBox(height: 42),

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(children: [
              Text(
                MyString.trending,
                style: textTheme.titleMedium,
              )
            ]),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  MyString.products,
                  style: textTheme.titleLarge,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: SolidColors.whiteColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: SolidColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //list watch

          SizedBox(
            height: size.height / 3.2,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: watchList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const BuyWatch()));
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //picture
                            SizedBox(
                              width: size.width / 2.7,
                              height: size.height / 5,
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: SolidColors.backgroundPictureColor,
                                    ),
                                  ),
                                  Positioned(
                                      top: 0,
                                      right: 0,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.favorite_border_outlined,
                                            color: SolidColors.whiteColor,
                                          ))),
                                  //shadow image
                                  Positioned(
                                    right: 40,
                                    bottom: 40,
                                    child: Container(
                                      width: 30,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: SolidColors.shadowColor
                                                .withOpacity(0.7),
                                            blurRadius: 40,
                                            spreadRadius: 18,
                                            offset: const Offset(-15, -15),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  //image
                                  Center(
                                    child: Image.asset(
                                      watchList[index].img,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  watchList[index].brand,
                                  style: textTheme.labelSmall,
                                ),
                                Text(
                                  watchList[index].color,
                                  style: textTheme.labelLarge,
                                ),
                              ],
                            ),
                          ],
                        )),
                  );
                }),
          )
        ],
      ),
    );
  }
}
