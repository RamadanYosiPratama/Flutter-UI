import 'package:cozy/models/Tips.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl,
          width: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 4,
            ),
            Text(tips.udpateAt, style: greyTextStyle)
          ],
        ),
        Spacer(),
        IconButton(
            icon: Icon(
              Icons.chevron_right,
              color: greyColor,
            ),
            onPressed: () {})
      ],
    );
  }
}
