import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:uzum_bank/core/models/request/sign_up_request.dart';
import 'package:uzum_bank/core/models/response/sign_up_response.dart';
import '../../../core/api/auth_api/auth_api.dart';
part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AuthApi _api;

  SignupBloc(this._api) : super(SignupState()) {
    on<SignUpEvent>((event, emit) async{
      emit(state.copyWith(status: Status.loading,));
      final response=await _api.signUp(signUpRequest: event.signUpRequest);
      final token=SignUpResponse.fromJson(response as Map<String, dynamic>).token;
      if(response.statusCode! >=200 && response.statusCode! <=300){
        emit(state.copyWith(status: Status.success));
      }
    });
  }
}
