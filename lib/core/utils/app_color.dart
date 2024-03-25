import 'package:manage_money/core/core.dart';

class AppColor {

  // Standards
  static const primary = MaterialColor(0xFF00D66A, _primaryColor);
  static const grey = MaterialColor(0xFFEFEFEF, _greyColor);
  static const greyWhite = Color(0xFFFCFCFC);
  static const warning = MaterialColor(0xFFFFB72D, _warningColor);
  static const success = MaterialColor(0xFF01AF66, _successColor);
  static const error = MaterialColor(0xFFFE5349, _errorColor);
  static const black = MaterialColor(0xFF202020, _blackColor);
  static const white = Color(0xFFFFFFFF);
  //Primary Color
  // static Color primaryColor = green40;

  //Green 80ebb5 4de297
  // static Color green5 = const Color(0xFFccf7e1);
  // static Color green10 = const Color(0xFF99efc3);
  // static Color green15 = const Color(0xFF66e6a6);
  // static Color green20 = const Color(0xFF33de88);
  // static Color green30 = const Color(0xFF1ada79);
  // static Color green40 = const Color(0xFF00d66a);
  // static Color green50 = const Color(0xFF008040);
  // static Color green60 = const Color(0xFF00562a);
  // static Color green70 = const Color(0xFF004020);
  // static Color green80 = const Color(0xFF002b15);
  // static Color green90 = const Color(0xFF00150b);



  // //! black
  // static Color black5 = const Color(0xFFD6D6D6);
  // static Color black10 = const Color(0xFFBBBBBB);
  // static Color black15 = const Color(0xFF999999);
  // static Color black20 = const Color(0xFF777777);
  // static Color black30 = const Color(0xFF555555);
  // static Color black40 = const Color(0xFF333333);
  // static Color black50 = const Color(0xFF2B2B2B);
  // static Color black60 = const Color(0xFF222222);
  // static Color black70 = const Color(0xFF1A1A1A);
  // static Color black80 = const Color(0xFF111111);
  // static Color black90 = const Color(0xFF0A0A0A);
  //
  // //! neutral
  // static Color neutralWhite = const Color(0xFFFFFFFF);
  // static Color neutralBlackShade = black40;
  // static Color neutral100 = const Color(0xFFF5F5F5);
  // static Color neutral300 = const Color(0xFFD2D3D3);
  // static Color neutral600 = const Color(0xFF797A7B);
  // static Color neutral700 = const Color(0xFF757575);
  // static Color neutral800 = const Color(0xFF363939);
  //
  // //! white
  // static Color whiteOffWhite = const Color(0xFFF4F4F4);
  // static Color whiteWhite = const Color(0xFFFFFFFF);
  //
  // //! others
  // static Color skyBlue = const Color(0xFFD9D9D9);
  // static Color red = const Color(0xFFFF302F);
  // static Color greenAccent = const Color(0xFF13893D);
  // static Color green = const Color(0xFF20B15A);
  // static Color blue = const Color(0xFF224DA2);
  // static Color grey = const Color(0xFF747474);
  // static Color greySilver = const Color(0xFFBBBBBB);
  // static Color sonicSilver = const Color(0xFF757575);
  // static Color davyGrey = const Color(0xFF555555);
  // static Color grey27 = const Color(0xFF454545);
  // static Color yellow = const Color(0xFFFFEA30);
  // static Color stroke = const Color(0xFFE8EAED);
  // static Color errorLightMode = const Color(0xFFFF3B2D);
}

//
const Map<int, Color> _primaryColor = {
  10: Color(0xFFCCF7E1),
  50: Color(0xFFAAF1CD),
  100: Color(0xFF80EAB4),
  200: Color(0xFF55E49C),
  300: Color(0xFF2BDD83),
  400: Color(0xFF00D66A),
  500: Color(0xFF00B258),
  600: Color(0xFF008F47),
  700: Color(0xFF006B35),
  800: Color(0xFF004723),
  900: Color(0xFF002B15),
};

const Map<int, Color> _successColor = {
  10: Color(0xFFCCEFE0),
  50: Color(0xFFAAE4CC),
  100: Color(0xFF80D7B2),
  200: Color(0xFF56CA99),
  300: Color(0xFF2BBC80),
  400: Color(0xFF01AF66),
  500: Color(0xFF019255),
  600: Color(0xFF017544),
  700: Color(0xFF015833),
  800: Color(0xFF003A22),
  900: Color(0xFF002314),
};

const Map<int, Color> _warningColor = {
  10: Color(0xFFFFF1D5),
  50: Color(0xFFFFE7B9),
  100: Color(0xFFFFDB96),
  200: Color(0xFFFFCF73),
  300: Color(0xFFFFC350),
  400: Color(0xFFFFB72D),
  500: Color(0xFFD49826),
  600: Color(0xFFAA7A1E),
  700: Color(0xFF805C17),
  800: Color(0xFF553D0F),
  900: Color(0xFF332509),
};

const Map<int, Color> _errorColor = {
  10: Color(0xFFFFDDDB),
  50: Color(0xFFFFC6C2),
  100: Color(0xFFFEA9A4),
  200: Color(0xFFFE8C86),
  300: Color(0xFFFE7067),
  400: Color(0xFFFE5349),
  500: Color(0xFFD4453D),
  600: Color(0xFFA93731),
  700: Color(0xFF7F2A25),
  800: Color(0xFF551C18),
  900: Color(0xFF33110F),
};

const Map<int, Color> _greyColor = {
  10: Color(0xFFFCFCFC),
  50: Color(0xFFFAFAFA),
  100: Color(0xFFF7F7F7),
  200: Color(0xFFF4F4F4),
  300: Color(0xFFF2F2F2),
  400: Color(0xFFEFEFEF),
  500: Color(0xFFC7C7C7),
  600: Color(0xFF9F9F9F),
  700: Color(0xFF787878),
  800: Color(0xFF505050),
  900: Color(0xFF303030),
};

const Map<int, Color> _blackColor = {
  10: Color(0xFFD2D2D2),
  50: Color(0xFFB5B5B5),
  100: Color(0xFF8F8F8F),
  200: Color(0xFF6A6A6A),
  300: Color(0xFF454545),
  400: Color(0xFF202020),
  500: Color(0xFF1B1B1B),
  600: Color(0xFF151515),
  700: Color(0xFF101010),
  800: Color(0xFF0B0B0B),
  900: Color(0xFF060606),
};
