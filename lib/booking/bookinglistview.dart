import 'package:flutter/material.dart';
import 'package:quiz_time/alertcontrollers/listviewtext.dart';
import 'package:quiz_time/apimodel/bookingmodel.dart';

class BookingListView extends StatelessWidget {
  final List<BookingInfoList> bookingInfoList;

  BookingListView(this.bookingInfoList);

  Widget _buildBookingItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            ListViewText(
              text: "Booking Id : ",
            ),
            ListViewText(text: bookingInfoList[index].bookingId.toString()),
          ]),
          Row(children: <Widget>[
            ListViewText(text: "Booking From : "),
            ListViewText(text: bookingInfoList[index].bookingFrom),
          ]),
          Row(children: <Widget>[
            ListViewText(text: "Booking To : "),
            ListViewText(text: bookingInfoList[index].bookingTo),
          ]),
          Row(children: <Widget>[
            ListViewText(text: "Booking Type : "),
            ListViewText(
                text: bookingInfoList[index].bookingRecurring.length > 0
                    ? "Recurring"
                    : "Onetime"),
          ]),
          Row(children: <Widget>[
            ListViewText(text: "Booking Status : "),
            Text(
              bookingInfoList[index].bookingStatus,
              style: TextStyle(
                  fontSize: 20,
                  color: bookingInfoList[index].bookingStatus == "confimred"
                      ? Colors.green
                      : bookingInfoList[index].bookingStatus == "pending"
                          ? Colors.grey
                          : Colors.blue),
            ),
          ]),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildBookingItem,
      itemCount: bookingInfoList.length,
    );
  }
}
