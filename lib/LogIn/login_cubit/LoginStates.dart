abstract class ShopLoginStates{}
class ShopLoginInitialState extends ShopLoginStates{}
class SuccessLoginInitialState extends ShopLoginStates{}
class LoadingLoginInitialState extends ShopLoginStates{}
class ErrorLoginInitialState extends ShopLoginStates{
  String error;
  ErrorLoginInitialState(this.error);
}

class ChangePasswordVisibilityState extends ShopLoginStates{}
