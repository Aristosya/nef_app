import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../common/app_colors.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  static const routeName = '/profile/settings/FAQ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 44.0,
        leading: Container(
          width: 24,
          height: 24,
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/chevron-left.svg',
              color: AppColors.Primary2,
              semanticsLabel: 'Arrow-back',
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Text(
          'FAQ',
          style: TextStyle(
              color: AppColors.Secondary,
              fontWeight: FontWeight.w500,
              fontFamily: 'SFProDisplay',
              fontSize: 17),
        ),
        elevation: 0.0,
        backgroundColor: AppColors.Background1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                child: Column(
                  children: [
                    FAQExpanderWidget(),
                    FAQExpanderWidget(),
                    FAQExpanderWidget(),
                    FAQExpanderWidget(),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class FAQExpanderWidget extends StatefulWidget {
  FAQExpanderWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<FAQExpanderWidget> createState() => _FAQExpanderWidgetState();
}

class _FAQExpanderWidgetState extends State<FAQExpanderWidget> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    if (isOpen) {
      return openedWidget();
    }
    return closedWidget();
  }

  openedWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Ink(
        decoration: BoxDecoration(
          color: AppColors.White,
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () => {
                setState(() {
                  isOpen = false;
                })
              },
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16,
                          top: 16,
                          bottom: 10,
                        ),
                        child: Text(
                          'How can I cancel booking?',
                          style: TextStyle(
                              color: AppColors.Secondary,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SFProDisplay',
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        width: 24,
                        height: 24,
                        margin: EdgeInsets.only(top: 16, bottom: 16, right: 16),
                        padding: EdgeInsets.only(
                            left: 6, right: 6, top: 9, bottom: 8),
                        child: SvgPicture.asset(
                          'assets/icons/chevron-up.svg',
                          color: AppColors.Primary2,
                          semanticsLabel: 'To close',
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 16,
                    ),
                    child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Text(
                                'Risus, ut blandit cursus commodo varius malesuada. Consequat, accumsan augue vel gravida turpis. Hac massa massa pretium nulla risus ullamcorper at gravida.',
                            overflow: TextOverflow.visible),
                          )
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  closedWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Ink(
        decoration: BoxDecoration(
          color: AppColors.White,
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () => {
                setState(() {
                  isOpen = true;
                })
              },
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          top: 16,
                          bottom: 18,
                        ),
                        child: Text(
                          'How can I cancel booking?',
                          style: TextStyle(
                              color: AppColors.Secondary,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SFProDisplay',
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        width: 24,
                        height: 24,
                        margin: EdgeInsets.only(top: 16, bottom: 16, right: 16),
                        padding: EdgeInsets.only(
                            left: 6, right: 6, top: 9, bottom: 8),
                        child: SvgPicture.asset(
                          'assets/icons/icon-arrow.svg',
                          color: AppColors.Primary2,
                          semanticsLabel: 'To open',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
