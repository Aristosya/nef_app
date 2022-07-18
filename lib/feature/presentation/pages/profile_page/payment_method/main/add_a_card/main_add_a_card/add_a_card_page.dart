import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../common/app_colors.dart';
import '../success_add_a_card/success_added_page.dart';

class AddACardPage extends StatelessWidget {
  const AddACardPage({super.key});

  static const routeName = '/profile/payment/add-a-card';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            toolbarHeight: 44.0,
            leading: SizedBox(
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
              'Add a bank card',
              style: TextStyle(
                  color: AppColors.Secondary,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SFProDisplay',
                  fontSize: 17),
            ),
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: AppColors.Background1,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 50),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Text(
                                  'Card number',
                                  style: TextStyle(
                                      color: AppColors.Secondary,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'SFProDisplay',
                                      fontSize: 15),
                                ),
                              ),
                              TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                      decimal: true),
                                  cursorColor: AppColors.Primary2,
                                  style: TextStyle(
                                    color: AppColors.Grey1,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                      left: 16,
                                      top: 14,
                                      bottom: 14,
                                    ),
                                    labelText: '0000 0000 0000 0000',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    // when the field is not in focus
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)),
                                        borderSide:
                                            BorderSide(color: AppColors.Grey1)),
                                    // when the field is in focus
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)),
                                        borderSide: BorderSide(
                                            color: AppColors.Primary2)),
                                  ),
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(16),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ]
                                  // validator: (String? value) => _validatePassword(value),),
                                  ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 6),
                                          child: Text(
                                            'Expiration date',
                                            style: TextStyle(
                                                color: AppColors.Secondary,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'SFProDisplay',
                                                fontSize: 15),
                                          ),
                                        ),
                                        TextFormField(
                                            keyboardType:
                                                TextInputType.numberWithOptions(
                                                    decimal: true),
                                            cursorColor: AppColors.Primary2,
                                            style: TextStyle(
                                              color: AppColors.Grey1,
                                            ),
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.only(
                                                left: 16,
                                                top: 14,
                                                bottom: 14,
                                              ),
                                              labelText: 'MM/YY',
                                              floatingLabelBehavior:
                                                  FloatingLabelBehavior.never,
                                              // when the field is not in focus
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(6)),
                                                  borderSide: BorderSide(
                                                      color: AppColors.Grey1)),
                                              // when the field is in focus
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(6)),
                                                  borderSide: BorderSide(
                                                      color:
                                                          AppColors.Primary2)),
                                            ),
                                            inputFormatters: [
                                              LengthLimitingTextInputFormatter(
                                                  4),
                                              FilteringTextInputFormatter
                                                  .digitsOnly,
                                            ]
                                            // validator: (String? value) => _validatePassword(value),),
                                            ),
                                      ],
                                    )),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 6),
                                          child: Text(
                                            'CVC/CVV',
                                            style: TextStyle(
                                                color: AppColors.Secondary,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'SFProDisplay',
                                                fontSize: 15),
                                          ),
                                        ),
                                        TextFormField(
                                            keyboardType:
                                                TextInputType.numberWithOptions(
                                                    decimal: true),
                                            cursorColor: AppColors.Primary2,
                                            style: TextStyle(
                                              color: AppColors.Grey1,
                                            ),
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.only(
                                                left: 16,
                                                top: 14,
                                                bottom: 14,
                                              ),
                                              labelText: '000',
                                              floatingLabelBehavior:
                                                  FloatingLabelBehavior.never,
                                              // when the field is not in focus
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(6)),
                                                  borderSide: BorderSide(
                                                      color: AppColors.Grey1)),
                                              // when the field is in focus
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(6)),
                                                  borderSide: BorderSide(
                                                      color:
                                                          AppColors.Primary2)),
                                            ),
                                            inputFormatters: [
                                              LengthLimitingTextInputFormatter(
                                                  3),
                                              FilteringTextInputFormatter
                                                  .digitsOnly,
                                            ]
                                            // validator: (String? value) => _validatePassword(value),),
                                            ),
                                      ],
                                    ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                InkWell(
                  onTap: () => {Navigator.popAndPushNamed(context, SuccessAddedPage.routeName)},
                  child: Ink(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: AppColors.Primary2,
                    ),
                    child: Center(
                      child: Text(
                        'Add',
                        style: TextStyle(
                            color: AppColors.White,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SFProDisplay',
                            fontSize: 17),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
