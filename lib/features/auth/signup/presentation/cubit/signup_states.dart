abstract class SignupStates {}
class InialSignupStates extends SignupStates{}
class ChandeDropDownButton extends SignupStates{}
class LoadingSignupStates extends SignupStates{}
class SuccessSignupStates extends SignupStates{}
class FailureSignupStates extends SignupStates{
  final String errorMessage;

  FailureSignupStates({required this.errorMessage});

}

