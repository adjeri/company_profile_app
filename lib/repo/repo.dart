import 'package:company_profile/model/company.dart';

class RepoData {
  static final Company company = Company(
      name: "Adjeri & Co",
      location: "Tokyo, JP,",
      logo: "assets/webdev.png",
      backdropPhoto: "assets/businessman.png",
      about: "Happy developer improving his skills",
      activities: <Activity>[
        Activity(title: 'App development', thumbnail: "assets/android.png", url: "https://en.wikipedia.org/wiki/Flutter_(software)"),
        Activity(title: 'E-commerce', thumbnail: "assets/ecommerce.png", url: "https://en.wikipedia.org/wiki/E-commerce"),
        Activity(title: 'Home delivery', thumbnail: "assets/delivery.png", url: "https://en.wikipedia.org/wiki/Package_delivery"),
        Activity(title: 'Digital marketing', thumbnail: "assets/marketing.png", url: "https://en.wikipedia.org/wiki/Digital_marketing"),
        Activity(title: 'Training', thumbnail: "assets/socialmedia.png", url: "https://en.wikipedia.org/wiki/Training"),
      ]
  );
}