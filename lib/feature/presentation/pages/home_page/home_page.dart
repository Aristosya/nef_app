import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nef_app/feature/presentation/pages/home_page/widgets/newslist.dart';
import '../../../../common/app_colors.dart';
import '../profile_page/main/profile_page.dart';
import 'widgets/toplist.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 74,
        automaticallyImplyLeading: false,
        toolbarHeight: 44.0,
        leading: Container(
          margin: const EdgeInsets.only(top: 6.0, left: 16.0, bottom: 6.0),
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
          width: 58,
          height: 32,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: AppColors.Grey2),
          child: Text(
            '3 000',
            style: TextStyle(
            fontFamily: 'SFProDisplay',
            color: AppColors.Primary2,
            fontWeight: FontWeight.w500,
            fontSize: 13),
          ),
        ),
        title: Center(
          child: SizedBox(
            width: 110,
            height: 22,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 82,
                  height: 22,
                  child: Center(
                    child: Text(
                      'Nef Uptown',
                      style: TextStyle(
                          color: AppColors.Primary1,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SFProDisplay',
                          fontSize: 15),
                    ),
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(left: 8.0),
                  child: Center(
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => {},
                      icon: SvgPicture.asset(
                          'assets/icons/icon-arrow.svg',
                          color: AppColors.Primary1,
                          semanticsLabel: 'arrow-down',
                        width: 12.5,
                        height: 6.25,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: SvgPicture.asset(
              'assets/icons/notification.svg',
              color: AppColors.Grey1,
              semanticsLabel: 'Notification',
              width: 18,
              height: 20,
            ),
          )
        ],
        elevation: 0.0,
        backgroundColor: AppColors.Background1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              height: 144,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  TopList(img: 'https://pimmedia.egger.com/l/decor/U960_9/s/Detail/f/881x513/8812252921886',),
                  TopList(img: 'https://pimmedia.egger.com/l/decor/U960_9/s/Detail/f/881x513/8812252921886',),
                ],
              ),
            ),
            Container(
              // padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16.0, top: 6.0, bottom: 6.0),
                    child: Text(
                      'News',
                      style: TextStyle(
                          color: AppColors.Secondary,
                          fontFamily: 'SFProDisplay',
                          fontSize: 21,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10.0, right: 16.0),
                          child: Text(
                            'All news',
                            style: TextStyle(
                                color: AppColors.Grey1,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                fontFamily: 'SFProDisplay'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NewsList(img: 'https://pimmedia.egger.com/l/decor/U960_9/s/Detail/f/881x513/8812252921886', title:'Possible water shutdown' ,date:'18.03.2022' ,prevText:'Amet enim diam nunc consequat aliquam diam enim diam nunc... ' ,),
                  NewsList(img: 'https://pimmedia.egger.com/l/decor/U960_9/s/Detail/f/881x513/8812252921886', title: 'Cafe opening',date:'18.03.2022' ,prevText:'Amet enim diam nunc consequat aliquam diam enim diam nunc... ' ,),
                  NewsList(img: 'https://pimmedia.egger.com/l/decor/U960_9/s/Detail/f/881x513/8812252921886', title: 'Neighbors’ meeting ',date: '18.03.2022',prevText:'Amet enim diam nunc consequat aliquam diam enim diam nunc... ' ,),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
    borderRadius: const BorderRadius.only(
    topRight: Radius.circular(6),
    topLeft: Radius.circular(6),
    ),
      child: Container(
        height: 97,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(100))
        ),
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    margin: EdgeInsets.only(top:16,bottom: 2,),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/home.svg',
                        color: AppColors.Primary2,
                        semanticsLabel: 'Home',
                        width: 25,
                        height: 23.75,
                      ),
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                    ),
                  ),
                  Text(
                    'Main',
                    style: TextStyle(
                        color: AppColors.Primary2,
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        fontFamily: 'SFProDisplay'),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    margin: EdgeInsets.only(top:16,bottom: 2,),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/tab-bar-phase.svg',
                        color: AppColors.Grey1,
                        semanticsLabel: 'Booking',
                        width: 26.88,
                        height: 21.88,
                      ),
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                    ),
                  ),
                  Text(
                    'Online booking',
                    style: TextStyle(
                        color: AppColors.Grey1,
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        fontFamily: 'SFProDisplay'),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    margin: EdgeInsets.only(top:16,bottom: 2,),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/user.svg',
                        color: AppColors.Grey1,
                        semanticsLabel: 'Profile',
                        width: 22.5,
                        height: 25,
                      ),
                      onPressed: () {Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              ProfilePage(),
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                        ),
                      );
                        },
                      padding: EdgeInsets.zero,
                    ),
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                        color: AppColors.Grey1,
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        fontFamily: 'SFProDisplay'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
