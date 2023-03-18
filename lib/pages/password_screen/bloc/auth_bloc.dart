import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../core/api/auth_api/auth_api.dart';
import '../../../core/models/request/sign_in_request.dart';

part 'auth_event.dart';
part 'auth_state.dart';



class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthApi _api;

  AuthBloc(this._api) : super(AuthState()) {
    on<SignUpEvent>((event, emit) async {
      emit(state.copyWith(status: Status.loading,));
      //final response= await _api.signIn(phone: event.signInRequest.phoneNumber!, password: event.signInRequest.password!);
     // print("Hello  ==============================================================================  ${response.statusCode}");
     //  if(response.statusCode! >= 200 && response.statusCode!  <=300){
     //   // print("Hello   ${response.statusCode}");
     //    emit(state.copyWith(status: Status.success));
     //  }else{
     //    emit(state.copyWith(status: Status.fail));
     //  }
    });
  }
}
