import 'package:http/http.dart' as http;
import 'package:quiz_time/apimodel/bookingmodel.dart';

String bookingInfoUrl =
    'http://3.216.245.230:8080/api/v1.0/displayAllBookingInfo';

class BookingInfoService {
  Future<BookingModel> createPostForBookingInfo({Map body}) async {
    return http.post(bookingInfoUrl, body: body).then((http.Response response) {
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400) {
        print("Error while fetching data");
        throw new Exception("Error while fetching data");
      }
      return BookingModel.fromJson(response.body);
    });
  }
}
