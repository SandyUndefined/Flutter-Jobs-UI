import 'package:flutter/material.dart';

class ItemView extends StatelessWidget {
  final String inquiryNo;
  final String amount;
  final String name;
  final String brand;
  final String mobile;
  final String address;
  final String model;
  final String dateTime;
  final String reason;
  final String deliveryType;

  ItemView(this.inquiryNo, this.amount, this.name, this.brand, this.mobile,
      this.address, this.model, this.dateTime, this.reason, this.deliveryType);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
          child: nameCallMap(name, mobile, address),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  expandStyle(3, widgetInquiryNo(inquiryNo)),
                  expandStyle(2, widgetRs(amount)),
                  expandStyle(2, widgetDateTime(dateTime)),
                ]),
                widgetName(name),
                widgetModel(brand, model),
                widgetMobile(mobile),
                widgetAddress(address),
                widgetReason(reason),
                widgetDeliveryType(deliveryType)
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//TODO PICK UP DETAIL WIDGETS
nameCallMap(String name, String mobile, String address) => Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            radius: 21.0,
            child: new Text(
              name.substring(0, 1),
              style: new TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.grey.withOpacity(0.1)),
            ),
            backgroundColor: Colors.grey.withOpacity(0.1),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            radius: 21.0,
            child: new Icon(Icons.phone, color: Colors.orange.shade200),
            backgroundColor: Colors.transparent,
          ),
        ),
        GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              radius: 21.0,
              child: new Icon(Icons.map, color: Colors.blue.shade200),
              backgroundColor: Colors.transparent,
            )),
      ],
    );

widgetInquiryNo(String inquiryNo) => new Column(children: [
      new Text(
        inquiryNo.contains(".") ? inquiryNo.split(".")[0] : inquiryNo,
        style: new TextStyle(
            fontFamily: 'Raleway', fontSize: 15.0, color: Colors.lightBlue),
      ),
      new Container(
        color: Colors.lightBlue,
        width: inquiryNo.length <= 3 ? 7.0 * inquiryNo.length : 21.0,
        height: 1.5,
      ),
    ], crossAxisAlignment: CrossAxisAlignment.start);

widgetDateTime(String dateTime) => new Text(
      dateTime.split(" ")[0] + "\n" + dateTime.split(" ")[1],
      textAlign: TextAlign.right,
      style: new TextStyle(fontSize: 11.0, color: Colors.black26),
    );

widgetRs(String amount) => new Text(
      amount.isEmpty ? "" : "Rs. " + amount,
      textAlign: TextAlign.right,
      style: new TextStyle(fontSize: 14.0, color: Colors.black26),
    );

widgetName(String name) => new Container(
      margin: new EdgeInsetsDirectional.only(top: 10.0),
      child: Text(
        name,
        style: new TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 17.0,
            color: Colors.black,
            fontWeight: FontWeight.bold),
      ),
    );

widgetModel(String brand, String model) => new Text(
      brand + " - " + model,
      style: new TextStyle(fontSize: 14.0, color: Colors.black45),
    );

widgetMobile(String mobile) => new Text(
      "Mobile - " + mobile,
      style: new TextStyle(fontSize: 14.0, color: Colors.grey),
    );

widgetAddress(String address) => new Padding(
      padding: const EdgeInsets.only(top: 2.0),
      child: Text(
        address,
        style: new TextStyle(fontSize: 15.0, color: Colors.black87),
      ),
    );

widgetReason(String reason) => reason.isEmpty
    ? Container()
    : new Padding(
        padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
        child: Text(
          reason,
          style: new TextStyle(fontSize: 13, color: Colors.deepOrangeAccent),
        ),
      );

widgetDeliveryType(String deliveryType) => deliveryType.isEmpty
    ? Container()
    : new Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          new Text(deliveryType, style: new TextStyle(fontSize: 12.0))
        ],
      );

buttonTextStyle(String btnName) =>
    new Text(btnName, style: new TextStyle(fontSize: 12.0));

expandStyle(int flex, Widget child) => Expanded(flex: flex, child: child);
