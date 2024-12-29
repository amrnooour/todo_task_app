abstract class SigninStates {}
class IsObsecure extends SigninStates{}
class IinitialSignin extends SigninStates{}
class LoadingSignin extends SigninStates{}
class SuccessSignin extends SigninStates{}
class FailureSignin extends SigninStates{
  final String errorMessage;

  FailureSignin({required this.errorMessage});

}

