// To parse this JSON data, do
//
//     final bookingModel = bookingModelFromJson(jsonString);

import 'dart:convert';

class BookingModel {
    int statuscode;
    List<BookingInfoList> bookingInfoList;
    String message;

    BookingModel({
        this.statuscode,
        this.bookingInfoList,
        this.message,
    });

    factory BookingModel.fromJson(String str) => BookingModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory BookingModel.fromMap(Map<String, dynamic> json) => BookingModel(
        statuscode: json["statuscode"] == null ? null : json["statuscode"],
        bookingInfoList: json["bookingInfoList"] == null ? null : List<BookingInfoList>.from(json["bookingInfoList"].map((x) => BookingInfoList.fromMap(x))),
        message: json["message"] == null ? null : json["message"],
    );

    Map<String, dynamic> toMap() => {
        "statuscode": statuscode == null ? null : statuscode,
        "bookingInfoList": bookingInfoList == null ? null : List<dynamic>.from(bookingInfoList.map((x) => x.toMap())),
        "message": message == null ? null : message,
    };
}

class BookingInfoList {
    int bookingId;
    int userid;
    String sitterGender;
    String bookingFrom;
    String bookingTo;
    DateTime bookingDateFrom;
    DateTime bookingDateTo;
    String bookingFromTime;
    String bookingToTime;
    int bookingFromDateTime;
    int bookingToDateTime;
    String bookingRecurring;
    String bookingType;
    String bookingAddress;
    String bookingCity;
    String bookingState;
    String bookingStatus;
    String bookingZipcode;
    int monday;
    int tuesday;
    int wednesday;
    int thursday;
    int friday;
    int saturday;
    int sunday;
    dynamic offset;
    DateTime createdAt;
    DateTime updatedAt;
    String sitterName;
    int zipcodes;
    int baseRate;
    int splitBookingId;
    int parentId;
    int sitterId;
    int sitterScheduleId;
    DateTime serviceDateFrom;
    DateTime serviceDateTo;
    String serviceFrom;
    String serviceTo;
    String serviceFromTime;
    String serviceToTime;
    String serviceType;
    String serviceRecurring;
    String serviceStatus;

    BookingInfoList({
        this.bookingId,
        this.userid,
        this.sitterGender,
        this.bookingFrom,
        this.bookingTo,
        this.bookingDateFrom,
        this.bookingDateTo,
        this.bookingFromTime,
        this.bookingToTime,
        this.bookingFromDateTime,
        this.bookingToDateTime,
        this.bookingRecurring,
        this.bookingType,
        this.bookingAddress,
        this.bookingCity,
        this.bookingState,
        this.bookingStatus,
        this.bookingZipcode,
        this.monday,
        this.tuesday,
        this.wednesday,
        this.thursday,
        this.friday,
        this.saturday,
        this.sunday,
        this.offset,
        this.createdAt,
        this.updatedAt,
        this.sitterName,
        this.zipcodes,
        this.baseRate,
        this.splitBookingId,
        this.parentId,
        this.sitterId,
        this.sitterScheduleId,
        this.serviceDateFrom,
        this.serviceDateTo,
        this.serviceFrom,
        this.serviceTo,
        this.serviceFromTime,
        this.serviceToTime,
        this.serviceType,
        this.serviceRecurring,
        this.serviceStatus,
    });

    factory BookingInfoList.fromJson(String str) => BookingInfoList.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory BookingInfoList.fromMap(Map<String, dynamic> json) => BookingInfoList(
        bookingId: json["bookingId"] == null ? null : json["bookingId"],
        userid: json["userid"] == null ? null : json["userid"],
        sitterGender: json["sitterGender"] == null ? null : json["sitterGender"],
        bookingFrom: json["bookingFrom"] == null ? null : json["bookingFrom"],
        bookingTo: json["bookingTo"] == null ? null : json["bookingTo"],
        bookingDateFrom: json["bookingDateFrom"] == null ? null : DateTime.parse(json["bookingDateFrom"]),
        bookingDateTo: json["bookingDateTo"] == null ? null : DateTime.parse(json["bookingDateTo"]),
        bookingFromTime: json["bookingFromTime"] == null ? null : json["bookingFromTime"],
        bookingToTime: json["bookingToTime"] == null ? null : json["bookingToTime"],
        bookingFromDateTime: json["bookingFromDateTime"] == null ? null : json["bookingFromDateTime"],
        bookingToDateTime: json["bookingToDateTime"] == null ? null : json["bookingToDateTime"],
        bookingRecurring: json["bookingRecurring"] == null ? null : json["bookingRecurring"],
        bookingType: json["bookingType"] == null ? null : json["bookingType"],
        bookingAddress: json["bookingAddress"] == null ? null : json["bookingAddress"],
        bookingCity: json["bookingCity"] == null ? null : json["bookingCity"],
        bookingState: json["bookingState"] == null ? null : json["bookingState"],
        bookingStatus: json["bookingStatus"] == null ? null : json["bookingStatus"],
        bookingZipcode: json["bookingZipcode"] == null ? null : json["bookingZipcode"],
        monday: json["monday"] == null ? null : json["monday"],
        tuesday: json["tuesday"] == null ? null : json["tuesday"],
        wednesday: json["wednesday"] == null ? null : json["wednesday"],
        thursday: json["thursday"] == null ? null : json["thursday"],
        friday: json["friday"] == null ? null : json["friday"],
        saturday: json["saturday"] == null ? null : json["saturday"],
        sunday: json["sunday"] == null ? null : json["sunday"],
        offset: json["offset"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        sitterName: json["sitterName"] == null ? null : json["sitterName"],
        zipcodes: json["zipcodes"] == null ? null : json["zipcodes"],
        baseRate: json["baseRate"] == null ? null : json["baseRate"],
        splitBookingId: json["splitBookingId"] == null ? null : json["splitBookingId"],
        parentId: json["parentId"] == null ? null : json["parentId"],
        sitterId: json["sitterId"] == null ? null : json["sitterId"],
        sitterScheduleId: json["sitterScheduleId"] == null ? null : json["sitterScheduleId"],
        serviceDateFrom: json["serviceDateFrom"] == null ? null : DateTime.parse(json["serviceDateFrom"]),
        serviceDateTo: json["serviceDateTo"] == null ? null : DateTime.parse(json["serviceDateTo"]),
        serviceFrom: json["serviceFrom"] == null ? null : json["serviceFrom"],
        serviceTo: json["serviceTo"] == null ? null : json["serviceTo"],
        serviceFromTime: json["serviceFromTime"] == null ? null : json["serviceFromTime"],
        serviceToTime: json["serviceToTime"] == null ? null : json["serviceToTime"],
        serviceType: json["serviceType"] == null ? null : json["serviceType"],
        serviceRecurring: json["serviceRecurring"] == null ? null : json["serviceRecurring"],
        serviceStatus: json["serviceStatus"] == null ? null : json["serviceStatus"],
    );

    Map<String, dynamic> toMap() => {
        "bookingId": bookingId == null ? null : bookingId,
        "userid": userid == null ? null : userid,
        "sitterGender": sitterGender == null ? null : sitterGender,
        "bookingFrom": bookingFrom == null ? null : bookingFrom,
        "bookingTo": bookingTo == null ? null : bookingTo,
        "bookingDateFrom": bookingDateFrom == null ? null : bookingDateFrom.toIso8601String(),
        "bookingDateTo": bookingDateTo == null ? null : bookingDateTo.toIso8601String(),
        "bookingFromTime": bookingFromTime == null ? null : bookingFromTime,
        "bookingToTime": bookingToTime == null ? null : bookingToTime,
        "bookingFromDateTime": bookingFromDateTime == null ? null : bookingFromDateTime,
        "bookingToDateTime": bookingToDateTime == null ? null : bookingToDateTime,
        "bookingRecurring": bookingRecurring == null ? null : bookingRecurring,
        "bookingType": bookingType == null ? null : bookingType,
        "bookingAddress": bookingAddress == null ? null : bookingAddress,
        "bookingCity": bookingCity == null ? null : bookingCity,
        "bookingState": bookingState == null ? null : bookingState,
        "bookingStatus": bookingStatus == null ? null : bookingStatus,
        "bookingZipcode": bookingZipcode == null ? null : bookingZipcode,
        "monday": monday == null ? null : monday,
        "tuesday": tuesday == null ? null : tuesday,
        "wednesday": wednesday == null ? null : wednesday,
        "thursday": thursday == null ? null : thursday,
        "friday": friday == null ? null : friday,
        "saturday": saturday == null ? null : saturday,
        "sunday": sunday == null ? null : sunday,
        "offset": offset,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "sitterName": sitterName == null ? null : sitterName,
        "zipcodes": zipcodes == null ? null : zipcodes,
        "baseRate": baseRate == null ? null : baseRate,
        "splitBookingId": splitBookingId == null ? null : splitBookingId,
        "parentId": parentId == null ? null : parentId,
        "sitterId": sitterId == null ? null : sitterId,
        "sitterScheduleId": sitterScheduleId == null ? null : sitterScheduleId,
        "serviceDateFrom": serviceDateFrom == null ? null : serviceDateFrom.toIso8601String(),
        "serviceDateTo": serviceDateTo == null ? null : serviceDateTo.toIso8601String(),
        "serviceFrom": serviceFrom == null ? null : serviceFrom,
        "serviceTo": serviceTo == null ? null : serviceTo,
        "serviceFromTime": serviceFromTime == null ? null : serviceFromTime,
        "serviceToTime": serviceToTime == null ? null : serviceToTime,
        "serviceType": serviceType == null ? null : serviceType,
        "serviceRecurring": serviceRecurring == null ? null : serviceRecurring,
        "serviceStatus": serviceStatus == null ? null : serviceStatus,
    };
}
