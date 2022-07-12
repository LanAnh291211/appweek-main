import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/config/shape_size.dart';
import 'package:nsg_biolabs/shared/widgets/widges.dart';

import '../../../data/model/infor.dart';
import '../../../presentation/pages/booking/view_booking.dart';

class BookingItem extends StatelessWidget {
  final BookingModel info;

  const BookingItem({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ViewBooking(
              Item: info,
            ),
          )),
      child: Container(
        margin: CustomEdgeInsets.only(bottom: Space.spacing15),
        padding: CustomEdgeInsets.symmetric(horizontal: Space.spacing32, vertical: Space.spacing15),
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(color: info.color!, width: ShapeSize.size5),
                top: const BorderSide(color: AppColors.gainsboro, width: ShapeSize.size1),
                bottom: const BorderSide(color: AppColors.gainsboro, width: ShapeSize.size1),
                right: const BorderSide(color: AppColors.gainsboro, width: ShapeSize.size1))),
        child: Row(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  info.title!,
                  style: CustomTextStyle.bold(color: AppColors.black, fontSize: FontSize.veryLarge),
                ),
                CustomSizedBox(
                  height: Space.spacing20,
                ),
                Text(
                  info.subTitle!,
                  style: CustomTextStyle.regular(color: AppColors.black, fontSize: FontSize.medium),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      info.releaseDay!,
                      style: CustomTextStyle.bold(color: AppColors.black, fontSize: FontSize.small),
                    ),
                    Text(
                      info.rate!,
                      style: CustomTextStyle.bold(color: AppColors.black, fontSize: FontSize.small),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
