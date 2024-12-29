class SignupModel {
  final String id;
  final String displayName;
  final String accessToken;
  final String refreshToken;

  SignupModel({required this.id, required this.displayName, required this.accessToken, required this.refreshToken});

  factory SignupModel.fromJson(Map<String,dynamic> json){
    return SignupModel(
      id: json["_id"],
       displayName: json["displayName"],
        accessToken: json["access_token"],
         refreshToken: json["refresh_token"]
         );
  }


}