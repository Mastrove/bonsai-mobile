import 'package:flutter/foundation.dart';
import 'partner.dart';

class PartnerData extends ChangeNotifier {
  List<Partner> partners = [
    Partner(partnerName: 'Ricky Bender'),
    Partner(partnerName: 'Gracee Long'),
  ];

  int get partnerCount => partners.length;
}
