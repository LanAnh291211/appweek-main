import 'package:flutter/material.dart';
import 'package:nsg_biolabs/presentation/pages/booking/add_booking.dart';
import 'package:nsg_biolabs/shared/config/config.dart';

import '../../../shared/widgets/widges.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      appBar: CustomAppBar(
        labelTitle: 'appName',
        haveBackButton: false,
      ),
      body: Stack(
        children: [
          const Align(
              alignment: Alignment(1, -1),
              child: CustomIcon(
                svgIcon: AppImages.imageBackgroundRight,
                size: 167,
              )),
          const Align(
              alignment: Alignment(-1, -1),
              child: CustomIcon(
                svgIcon: AppImages.imageBackgroundLeft,
                size: 241,
              )),

          // _retote(1, -1, -45, Colors.green[100]!, MediaQuery.of(context).size.width / 3, MediaQuery.of(context).size.height * 2),
          // _retote(-1, -1, 45, Colors.pink[50]!, MediaQuery.of(context).size.width / 2, MediaQuery.of(context).size.height * 1),

          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'youHaveNoActiveBookings',
                style: CustomTextStyle.bold(color: AppColors.black, fontSize: FontSize.veryLarge),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "clickThe",
                    style: CustomTextStyle.regular(color: AppColors.black, fontSize: FontSize.small),
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: Space.spacing12),
                      child: const CustomIcon(
                        svgIcon: AppImages.icShowPage,
                        size: IconSize.large,
                      )),
                  Text(
                    "belowToAddNewBookings",
                    style: CustomTextStyle.regular(color: AppColors.black, fontSize: FontSize.small),
                  ),
                ],
              )
            ],
          )),
        ],
      ),
      floatingActionButton: CustomFloatingActionButton(onPressed: () =>  Navigator.push(
    context, MaterialPageRoute(builder: (context) =>  AddBooking()))    ,),
      bottomNavigationBar: CustomBottomNavigationBar(),

    );
  }

//   Align _retote(double offsetx, double offsety, double rt, Color backgroundColor, double height, double width) {
//     return Align(
//       alignment: Alignment(offsetx, offsety),
//       child: RotationTransition(
//         turns: AlwaysStoppedAnimation(rt / 360),
//         child: Container(
//           height: height,
//           width: width,
//           decoration: BoxDecoration(color: backgroundColor),
//         ),
//       ),
//     );
//   }
}
