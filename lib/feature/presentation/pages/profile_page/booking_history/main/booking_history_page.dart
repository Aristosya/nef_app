import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nef_app/feature/presentation/pages/profile_page/booking_history/main/widgets/bookinglist.dart';

import '../../../../../../common/app_colors.dart';
import '../../../../widgets/appbars.dart';
import '../../../../widgets/texts.dart';

class BookingHistoryPage extends StatefulWidget {
  const BookingHistoryPage({super.key});

  static const routeName = '/profile/booking-history';

  @override
  State<BookingHistoryPage> createState() => _BookingHistoryPageState();
}

class _BookingHistoryPageState extends State<BookingHistoryPage> {
  bool isCurrent = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBars().back_noRight(context,'Booking history'),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: (() {
                    if (isCurrent) {
                      return currentToggle();
                    }
                    return completedToggle();
                  }()),
                ),
                BookingCard(
                  title: 'Kitchen 1',
                  description:
                      'Laoreet lacus imperdiet gravida velit, id. Laoreet lacus imperdiet gravida velit, id...',
                  duration: '1 hour',
                  date: '08.04.2022',
                  time: '14:00-15:00',
                  price: 'KZT 2 000',
                  isCurrent: isCurrent,
                ),
                BookingCard(
                  title: 'Playstation room',
                  description:
                      'Laoreet lacus imperdiet gravida velit, id. Laoreet lacus imperdiet gravida velit, id...',
                  duration: '2 hours',
                  date: '10.04.2022',
                  time: '14:00-16:00',
                  price: 'KZT 3 000',
                  isCurrent: isCurrent,
                ),
              ],
            ),
          ),
        ),
    );
  }

  InkWell currentToggle() {
    return InkWell(
      onTap: () => {
        setState(() {
          isCurrent = !isCurrent;
        })
      },
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          color: AppColors.Grey2,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 3.0,
                  right: 12.5,
                  top: 3.0,
                  bottom: 3.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: AppColors.Primary2,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 8.0,
                    ),
                    child: Center(
                      child: Texts().body2('Current'),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Texts().body2('Completed',color: AppColors.Grey1),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InkWell completedToggle() {
    return InkWell(
      onTap: () => {
        setState(() {
          isCurrent = !isCurrent;
        })
      },
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          color: AppColors.Grey2,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Center(
                child: Texts().body2('Current',color: AppColors.Grey1),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 3.0,
                  right: 12.5,
                  top: 3.0,
                  bottom: 3.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: AppColors.Primary2,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 8.0,
                    ),
                    child: Center(
                      child: Texts().body2('Completed'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
