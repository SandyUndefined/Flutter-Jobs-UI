class PostPoneResponse {
  final String description;
  final double refNo;
  final double id;
  final String lonerPhone;
  final String assignTime;
  final String postponeTime;
  final String postponedReason;
  final String contactNo;
  final String endCustomer;
  final String fullAddress;
  final String brand;
  final String model;
  final double codAmount;

  PostPoneResponse(
      {required this.description,
      required this.refNo,
      required this.id,
      required this.lonerPhone,
      required this.assignTime,
      required this.postponeTime,
      required this.postponedReason,
      required this.contactNo,
      required this.endCustomer,
      required this.fullAddress,
      required this.brand,
      required this.model,
      required this.codAmount});

  factory PostPoneResponse.fromJson(Map<String, dynamic> json) {
    return PostPoneResponse(
      description: json['DESCR'],
      refNo: json['REFNO'],
      id: json['ID'],
      lonerPhone: json['LNRPHONE'],
      assignTime: json['ASSIGNTIME'],
      postponeTime: json['POSTPONTIME'],
      postponedReason: json['POSTPONDRSN'],
      contactNo: json['CONTACTNO'],
      endCustomer: json['ENDCUST'],
      fullAddress: json['FULLADDRESS'],
      brand: json['BRAND'],
      model: json['MODEL'],
      codAmount: json['CODAMT'],
    );
  }
}
