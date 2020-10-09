import 'package:flutter/widgets.dart';

class UpdateTickets {
  String information;
  String updateDate;

  UpdateTickets({this.information, this.updateDate});
}

final List<UpdateTickets> upTickets = [
  UpdateTickets(
      information: 'Felizia Tanzil Escalated “Tanya duplikat AJB” to you',
      updateDate: '9 Minutes Ago'),
  UpdateTickets(
      information: 'Customer Ida Replied “Tanya duplikat AJB” #0000',
      updateDate: '11   Minutes Ago')
];
