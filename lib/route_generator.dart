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
    if (settings.name == '/') {
      return MaterialPageRoute(builder: (context) {
        return const HomePage();
      });
    }
    else if (settings.name == ProfilePage.routeName) {
      return MaterialPageRoute(
          builder: (context) {
            return ProfilePage();
          }
      );
    }
    else if (settings.name == PaymentPage.routeName) {
      return MaterialPageRoute(
          builder: (context) {
            return PaymentPage();
          }
      );
    }
    else if (settings.name == AddACardPage.routeName) {
      return MaterialPageRoute(
          builder: (context) {
            return AddACardPage();
          }
      );
    }
    else if (settings.name == SuccessAddedPage.routeName) {
      return MaterialPageRoute(
          builder: (context) {
            return SuccessAddedPage();
          }
      );
    }
    else if (settings.name == SettingsPage.routeName) {
      return MaterialPageRoute(
          builder: (context) {
            return SettingsPage();
          }
      );
    }
    else if (settings.name == LanguagePage.routeName) {
      return MaterialPageRoute(
          builder: (context) {
            return LanguagePage();
          }
      );
    }
    else if (settings.name == ContactsPage.routeName) {
      return MaterialPageRoute(
          builder: (context) {
            return ContactsPage();
          }
      );
    }
    else if (settings.name == FaqPage.routeName) {
      return MaterialPageRoute(
          builder: (context) {
            return FaqPage();
          }
      );
    }
    else if (settings.name == AboutPage.routeName) {
      return MaterialPageRoute(
          builder: (context) {
            return AboutPage();
          }
      );
    }
    else if (settings.name == PrivacyPage.routeName) {
      return MaterialPageRoute(
          builder: (context) {
            return PrivacyPage();
          }
      );
    }
    else if (settings.name == BookingHistoryPage.routeName) {
      return MaterialPageRoute(
          builder: (context) {
            return BookingHistoryPage();
          }
      );
    }
    return MaterialPageRoute(builder: (context) => const ErrorPage());
  }
}


