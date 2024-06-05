import 'package:carousel_slider/carousel_slider.dart';
import 'package:diamond_store_app/core/assets/assets.gen.dart';
import 'package:diamond_store_app/core/componnets/background_app.dart';
import 'package:diamond_store_app/core/componnets/search.dart';
import 'package:diamond_store_app/core/constants/colors.dart';
import 'package:diamond_store_app/core/extensions/spaces_ext.dart';
import 'package:diamond_store_app/core/extensions/widget_ext.dart';
import 'package:diamond_store_app/presentation/home/widgets/banner_slider.dart';
import 'package:diamond_store_app/presentation/home/widgets/items_game_card.dart';
import 'package:diamond_store_app/presentation/home/widgets/metode_buy_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _searchController = TextEditingController();

  final List<String> banners1 = [
    Assets.images.banner1.path,
    Assets.images.banner2.path,
    Assets.images.banner3.path,
  ];

  final List<Item> cards = [
    Item(Assets.images.shopeePay.path),
    Item(Assets.images.dana.path),
    Item(Assets.images.gopay.path),
    Item(Assets.images.gopay.path),
    Item(Assets.images.shopeePay.path),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundApp(
          child: ListView(
        children: [
          Column(
            children: [
              Image.asset(
                Assets.images.logo.path,
                width: 161.0,
                height: 55.0,
              ),
              23.height,
              Search(searchController: _searchController),
              17.height,
              BannerSlider(
                items: banners1,
              ),
              22.height,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Mobile Games',
                        style: TextStyle(
                            fontSize: 20,
                            color: AppsColors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppsColors.white),
                        child: const Center(
                          child: Text(
                            'See all',
                            style: TextStyle(
                              fontSize: 11,
                              color: AppsColors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  12.height,
                  SizedBox(
                    width: double.infinity,
                    height: 123.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ItemsGameCard(
                          image: Assets.images.banner1.path,
                          label: 'Mobile Legend',
                          onTap: () {},
                        ),
                        ItemsGameCard(
                          image: Assets.images.banner2.path,
                          label: 'Free Fire',
                          onTap: () {},
                        ),
                        ItemsGameCard(
                          image: Assets.images.banner3.path,
                          label: 'Valorant',
                          onTap: () {},
                        ),
                        ItemsGameCard(
                          image: Assets.images.banner1.path,
                          label: 'Mobile Legend',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  24.height,
                  const Text(
                    'Metode Pembayaran',
                    style: TextStyle(
                        fontSize: 20,
                        color: AppsColors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  28.height,
                  CarouselSlider(
                    items: cards.map((e) {
                      return Builder(builder: (BuildContext context) {
                        return MetodeBuyCard(
                          title: e.title,
                        );
                      });
                    }).toList(),
                    options: CarouselOptions(
                      height: 140,
                      autoPlay: true,
                      viewportFraction: 0.3,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(seconds: 3),
                      autoPlayCurve: Curves.linear,
                    ),
                  ),
                  40.height,
                  Center(
                    child: Image.asset(
                      Assets.images.logo.path,
                      width: 300.0,
                      height: 100.0,
                    ),
                  ),
                  40.height,
                  Center(
                    child: SvgPicture.asset(Assets.icons.instagram.path),
                  ),
                  20.height,
                  const Center(
                    child: Text(
                      '©2024 SuperSaiya. All rights reserved',
                      style: TextStyle(
                        color: AppsColors.white,
                        fontSize: 13,
                      ),
                    ),
                  )
                ],
              )
            ],
          ).padding(
            const EdgeInsets.all(16.0),
          ),
        ],
      )),
    );
  }
}
