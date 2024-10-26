import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/model/fake_data.dart';
import 'package:watch_store/component/my_colors.dart';
import 'package:watch_store/component/my_string.dart';
import 'package:watch_store/view/home_page.dart';

class BuyWatch extends StatefulWidget {
  const BuyWatch({super.key});

  @override
  State<BuyWatch> createState() => _BuyWatchState();
}

class _BuyWatchState extends State<BuyWatch> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: SolidColors.backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                //top page

                TopPage(),

                //down page

                DownPage(),
              ],
            ),
          ),
        ));
  }
}

class DownPage extends StatelessWidget {
  const DownPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 13;
    return Padding(
      padding: EdgeInsets.fromLTRB(bodyMargin, 24, bodyMargin, 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${MyString.trending}  ${MyString.products}",
                style: textTheme.labelSmall,
              ),
              Text(
                MyString.price,
                style: textTheme.labelSmall,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                MyString.decker,
                style: textTheme.titleLarge,
              ),
              Text(
                "325" + "€",
                style: textTheme.displayLarge,
              )
            ],
          ),
          const SizedBox(height: 32),
          Text(
            watchList[selectedIndex].about,
            style: textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}

class TopPage extends StatelessWidget {
  const TopPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 13;
    return SizedBox(
      height: size.height / 2,
      child: Stack(
        children: [
          //right poster

          Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: size.width / 2.3,
              height: size.height / 2,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(70),
                  ),
                  color: SolidColors.backgroundPictureColor),
            ),
          ),

          //appbar

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) => const HomePage()));
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: SolidColors.whiteColor,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          size: 30,
                          color: SolidColors.blackColor,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                          color: SolidColors.blackColor,
                          size: 30,
                        ))
                  ],
                )
              ],
            ),
          ),

          //text poster

          Positioned(
              right: -155,
              top: 210,
              child: Transform.rotate(
                angle: -1.57,
                child: Text(
                  MyString.tommy,
                  style: textTheme.bodyLarge,
                ),
              )),

          //shadow image

          Positioned(
              right: 100,
              top: 120,
              child: Container(
                width: 50,
                height: 220,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: SolidColors.shadowColor.withOpacity(0.7),
                      blurRadius: 70,
                      spreadRadius: 8,
                      offset: const Offset(15, 20))
                ]),
              )),

          //image

          Positioned(
            right: 15,
            top: 100,
            child: Image.asset(
              Assets.image.watchTwo.path,
              scale: 1.75,
            ),
          ),

          //left list

          Positioned(
            top: 90,
            left: bodyMargin,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_up,
                          size: 40,
                          color: SolidColors.whiteColor,
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "BRAND",
                          style: textTheme.labelMedium,
                        ),
                        Text(
                          "HILFGER",
                          style: textTheme.labelLarge,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "STRAP",
                          style: textTheme.labelMedium,
                        ),
                        Text(
                          "SILICONE",
                          style: textTheme.labelLarge,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "COLOR",
                          style: textTheme.labelMedium,
                        ),
                        Text(
                          "ROSE GOLD",
                          style: textTheme.labelLarge,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "WARRANTY",
                          style: textTheme.labelMedium,
                        ),
                        Text(
                          "2 YEARS",
                          style: textTheme.labelLarge,
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          size: 40,
                          color: SolidColors.whiteColor,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
