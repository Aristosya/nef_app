import 'package:flutter/material.dart';
import 'feature/presentation/pages/home_page/home_page.dart';
import 'feature/presentation/pages/error_page/error_page.dart';
import 'feature/presentation/pages/profile_page/booking_history/main/booking_history_page.dart';
import 'feature/presentation/pages/profile_page/main/profile_page.dart';
import 'feature/presentation/pages/profile_page/payment_method/main/add_a_card/main_add_a_card/add_a_card_page.dart';
import 'feature/presentation/pages/profile_page/payment_method/main/add_a_card/success_add_a_card/success_added_page.dart';
import 'feature/presentation/pages/profile_page/payment_method/main/payment_method_page.dart';
import 'feature/presentation/pages/profile_page/settings/About_application/about_application_page.dart';
import 'feature/presentation/pages/profile_page/settings/Contacts/contacts_page.dart';
import 'feature/presentation/pages/profile_page/settings/FAQ/faq_page.dart';
import 'feature/presentation/pages/profile_page/settings/about_application/privacy_policy/privacy_policy_page.dart';
import 'feature/presentation/pages/profile_page/settings/language/language_page.dart';
import 'feature/presentation/pages/profile_page/settings/main/settings_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(dynamic settings) {
    return MaterialPageRoute(builder: (context) {
      switch (settings.name) {
        case HomePage.routeName:
          return const HomePage();
        case ProfilePage.routeName:
          return ProfilePage();
        case PaymentPage.routeName:
          return PaymentPage();
        case AddACardPage.routeName:
          return AddACardPage();
        case SuccessAddedPage.routeName:
          return SuccessAddedPage();
        case SettingsPage.routeName:
          return SettingsPage();
        case LanguagePage.routeName:
          return LanguagePage();
        case ContactsPage.routeName:
          return ContactsPage();
        case FaqPage.routeName:
          return FaqPage();
        case AboutPage.routeName:
          return AboutPage();
        case PrivacyPage.routeName:
          return PrivacyPage();
        case BookingHistoryPage.routeName:
          return BookingHistoryPage();
        default:
          return ErrorPage();
      }
    });
  }
}
