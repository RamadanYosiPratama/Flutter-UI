import 'package:cozy/theme.dart';
import 'package:cozy/widgets/facility_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        throw (url);
      }
    }

    return Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
            bottom: false,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/Detail.png',
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  fit: BoxFit.cover,
                ),
                ListView(
                  children: [
                    SizedBox(
                      height: 328,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 600,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                        color: whiteColor,
                      ),
                      // NOTE: TITLE
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: edge),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Kuretakeso Hott',
                                      style:
                                          blackTextStyle.copyWith(fontSize: 22),
                                    ),
                                    SizedBox(height: 2),
                                    Text.rich(TextSpan(
                                        text: '\$52',
                                        style: purpleTextStyle.copyWith(
                                          fontSize: 16,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: '/ month',
                                              style: greyTextStyle.copyWith(
                                                fontSize: 16,
                                              ))
                                        ])),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/Icon_star_solid.png',
                                      width: 20,
                                    ),
                                    Image.asset(
                                      'assets/images/Icon_star_solid.png',
                                      width: 20,
                                    ),
                                    Image.asset(
                                      'assets/images/Icon_star_solid.png',
                                      width: 20,
                                    ),
                                    Image.asset(
                                      'assets/images/Icon_star_solid.png',
                                      width: 20,
                                    ),
                                    Image.asset(
                                      'assets/images/Icon_star_solid.png',
                                      width: 20,
                                      color: Color(0xff989BA1),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30),
                          Padding(
                            padding: EdgeInsets.only(left: edge),
                            child: Text(
                              'Main Facilities',
                              style: regularTextStyle.copyWith(fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: edge),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FacilityItem(
                                  name: 'Kitchen',
                                  imageUrl: 'assets/images/Group.png',
                                  total: 3,
                                ),
                                FacilityItem(
                                    name: 'Bedroom',
                                    imageUrl:
                                        'assets/images/002-double-bed.png',
                                    total: 3),
                                FacilityItem(
                                    name: 'Lemari',
                                    imageUrl: 'assets/images/003-cupboard.png',
                                    total: 3)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: edge),
                            child: Text(
                              'Photos',
                              style: regularTextStyle.copyWith(fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                              height: 88,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  SizedBox(
                                    width: edge,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(18),
                                    child: Image.asset(
                                      'assets/images/pic.png',
                                      width: 110,
                                      height: 88,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: edge,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(18),
                                    child: Image.asset(
                                      'assets/images/pic.png',
                                      width: 110,
                                      height: 88,
                                    ),
                                  ),
                                  SizedBox(
                                    width: edge,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(18),
                                    child: Image.asset(
                                      'assets/images/pic.png',
                                      width: 110,
                                      height: 88,
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 32,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: edge),
                            child: Text(
                              'Location',
                              style: regularTextStyle.copyWith(fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: edge, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Jl. CucakRowo No. Q21\nBekasi',
                                    style: greyTextStyle,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      launch(
                                          'https://www.google.co.id/maps/place/Bakso+Mas+Edy+Solo/@-0.0150614,109.3263076,17z/data=!4m13!1m7!3m6!1s0x2e1d588af8da66bb:0xae262ef2a2655485!2sGg.+Durian,+Sungai+Jawi+Luar,+Kec.+Pontianak+Bar.,+Kota+Pontianak,+Kalimantan+Barat+78244!3b1!8m2!3d-0.0150614!4d109.3284963!3m4!1s0x2e1d588a60eb6d7b:0xf537e1e799d023bf!8m2!3d-0.0152101!4d109.3293493');
                                    },
                                    child: Image.asset(
                                      'assets/images/lco.png',
                                      width: 40,
                                    ),
                                  )
                                ],
                              )),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: edge,
                            ),
                            height: 50,
                            width:
                                MediaQuery.of(context).size.width - (2 * edge),
                            child: RaisedButton(
                              color: purpleColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17)),
                              onPressed: () {
                                launch('tel://+6288296240596');
                              },
                              child: Text('Booking Now',
                                  style: whiteTextStyle.copyWith(fontSize: 18)),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 40)
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/images/btn_back.png',
                          width: 40,
                        ),
                      ),
                      Image.asset(
                        'assets/images/btn_wishlist.png',
                        width: 40,
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
