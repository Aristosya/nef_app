import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../common/app_colors.dart';
import '../../../../../../widgets/appbars.dart';
import '../../../../../../widgets/texts.dart';
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
          appBar: AppBars().back_noRight(context, 'Add a bank card'),
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
                                child: Texts().body1('Card number',color:AppColors.Secondary ),
                              ),
                              TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                      decimal: true),
                                  cursorColor: AppColors.Primary2,
                                  style: TextStyle(
                                    color: AppColors.Grey1,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(16,14,0,14),
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
                                          child: Texts().body1('Expiration date',color:AppColors.Secondary ),
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
                                              contentPadding: EdgeInsets.fromLTRB(16,14,0,14),
                                              labelText: 'MM/YY',
                                              floatingLabelBehavior:
                                                  FloatingLabelBehavior.never,
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(6)),
                                                  borderSide: BorderSide(
                                                      color: AppColors.Grey1)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(6)),
                                                  borderSide: BorderSide(
                                                      color:
                                                          AppColors.Primary2)),
                                            ),
                                            inputFormatters: [LengthLimitingTextInputFormatter(4), FilteringTextInputFormatter.digitsOnly,]
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
                                          child: Texts().body1('CVC/CVV',color: AppColors.Secondary),
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
                                              contentPadding: EdgeInsets.fromLTRB(16,14,0,14),
                                              labelText: '000',
                                              floatingLabelBehavior:
                                                  FloatingLabelBehavior.never,
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(6)),
                                                  borderSide: BorderSide(
                                                      color: AppColors.Grey1)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(6)),
                                                  borderSide: BorderSide(
                                                      color:
                                                          AppColors.Primary2)),
                                            ),
                                            inputFormatters: [LengthLimitingTextInputFormatter(3), FilteringTextInputFormatter.digitsOnly,]
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
                      child: Texts().button('Add'),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
