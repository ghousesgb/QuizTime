import 'package:flutter/material.dart';

import 'package:quiz_time/Service/bookingInfoService.dart';
import 'package:quiz_time/alertcontrollers/listviewtext.dart';
import 'package:quiz_time/apimodel/bookingmodel.dart';
import 'package:quiz_time/booking/bookinglistview.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class BookingInfoScreen extends StatefulWidget {
  @override
  _BookingInfoScreenState createState() => _BookingInfoScreenState();
}

class _BookingInfoScreenState extends State<BookingInfoScreen> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();
  List<BookingInfoList> bookingInfoList;
  bool isLoading = true;
  int statusCode;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<Null> _fetchData() async {
    var parameter = {"userid": "127"};
    BookingModel bModel =
        await BookingInfoService().createPostForBookingInfo(body: parameter);
    bookingInfoList = bModel.bookingInfoList;
    statusCode = bModel.statuscode;
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Info'),
      ),
      body: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10.0),
                  child: statusCode == 1001
                      ? bookingInfoList.length > 0
                          ? RefreshIndicator(
                              child: BookingListView(bookingInfoList),
                              onRefresh: () {
                                return _fetchData();
                              })
                          : ListViewText(
                              text: "No booking records found",
                              fontSize: 30,
                              color: Colors.blue,
                            )
                      : ListViewText(
                          text: "Sometime went wrong",
                          fontSize: 30,
                          color: Colors.redAccent,
                        ),
                )),
    );
  }
}
