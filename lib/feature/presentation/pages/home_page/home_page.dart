import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nef_app/feature/presentation/pages/home_page/widgets/newslist.dart';
import '../../../../common/app_colors.dart';
import '../../widgets/appbars.dart';
import '../../widgets/bottombars.dart';
import '../../widgets/texts.dart';
import '../profile_page/main/profile_page.dart';
import 'widgets/toplist.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars().main(),
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
                    child: Texts().heading2('News',color: AppColors.Secondary)
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10.0, right: 16.0),
                          child: Texts().small1_regular('All news',color:AppColors.Grey1)
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
      bottomNavigationBar: BotoomNefBar(routeName: HomePage.routeName,),
    );
  }
}


