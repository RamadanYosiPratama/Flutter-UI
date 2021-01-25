import 'package:cozy/models/Tips.dart';
import 'package:cozy/models/city.dart';
import 'package:cozy/models/space.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/bottom_navigator_item.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:cozy/widgets/space_card.dart';
import 'package:cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: ListView(
            children: [
              SizedBox(
                height: edge,
              ),
              // NOTE: TITLE/HEADER
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Explore Now',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Mencari Kost',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // NOTE: POPULER CITIES
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Popular Cities',
                  style: regularTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    CityCard(City(
                      id: 1,
                      imageUrl: 'assets/images/pic.png',
                      name: 'Bekasi',
                    )),
                    SizedBox(width: 24),
                    CityCard(City(
                      id: 2,
                      imageUrl: 'assets/images/pic.png',
                      name: 'Jakarta',
                    )),
                    SizedBox(width: 24),
                    CityCard(City(
                      id: 1,
                      imageUrl: 'assets/images/pic.png',
                      name: 'Surabaya',
                      isPopular: true,
                    )),
                    SizedBox(width: 24),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // NOTE: RECOMMENDED SPACE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Recommended Space',
                  style: regularTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                ),
                child: Column(
                  children: [
                    SpaceCard(Space(
                      id: 1,
                      name: 'Kuretakeso Hott',
                      imageUrl: 'assets/images/rec.png',
                      price: 52,
                      city: 'Bekasi',
                      country: 'Indonesia',
                      rating: 4,
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(Space(
                      id: 2,
                      name: 'Rumah Nenek',
                      imageUrl: 'assets/images/rec.png',
                      price: 52,
                      city: 'Bekasi',
                      country: 'Indonesia',
                      rating: 4,
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(Space(
                      id: 1,
                      name: 'Kuretakeso Hott',
                      imageUrl: 'assets/images/rec.png',
                      price: 52,
                      city: 'Bekasi',
                      country: 'Indonesia',
                      rating: 4,
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    // SpaceCard(),
                    // SizedBox(
                    //   height: 30,
                    // ),
                    // SpaceCard()
                  ],
                ),
              ),
              SizedBox(
                height: 3,
              ),
              // NOTE: TIPS & GUIDANCE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Tips & Guidance',
                  style: regularTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                ),
                child: Column(
                  children: [
                    TipsCard(Tips(
                      id: 1,
                      title: 'City Guidelines',
                      imageUrl: 'assets/images/icon.png',
                      udpateAt: '20 April 2020',
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    TipsCard(Tips(
                      id: 2,
                      title: 'Jakarta Fairship',
                      imageUrl: 'assets/images/icon2.png',
                      udpateAt: 'Updated 11 Dec',
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    // TipsCard()
                  ],
                ),
              ),
              SizedBox(height: 50 + edge),
            ],
          )),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/images/Icon_home_solid.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/Icon_mail_solid.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/Icon_card_solid.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/Icon_love_solid.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
