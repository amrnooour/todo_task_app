class SigninModel {
  final String id;
  final String accessToken;
  final String refreshToken;

  SigninModel({required this.id, required this.accessToken, required this.refreshToken});

  factory SigninModel.fromJson(Map<String,dynamic> json){
    return SigninModel(
      id: json["_id"],
       accessToken: json["access_token"],
        refreshToken: json["refresh_token"]);
  }
}