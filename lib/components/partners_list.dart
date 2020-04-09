import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'partner_card.dart';
import 'package:accpatapp/models/partner_data.dart';

class PartnersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PartnerData>(builder: (context, partnerData, child) {
      return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final partner = partnerData.partners[index];
          return PartnerCard(
            partnerName: partner.partnerName,
          );
        },
        itemCount: partnerData.partnerCount,
      );
    });
  }
}
