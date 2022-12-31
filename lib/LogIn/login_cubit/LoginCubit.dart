import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/LogIn/login_cubit/LoginStates.dart';

class LoginCubit extends Cubit<ShopLoginStates>{
  LoginCubit():super(ShopLoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);
}