class BasicResponse {
  String? message;
  bool? status;
  BasicResponse({this.message, this.status});
  BasicResponse.fromJson(Map<String, dynamic> json){
    message = json['message'];
    status = json['status'];
  }

}