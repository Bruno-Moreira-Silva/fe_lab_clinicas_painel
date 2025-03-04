
import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:fe_lab_clinicas_painel/src/services/login/user_login_service.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../repositories/user/user_repository.dart';

class UserLoginServiceImpl implements UserLoginService {
  UserLoginServiceImpl({
    required this.userRepository,
  });

  final UserRepository userRepository;

  @override
  Future<Either<ServiceException, Unit>> execute(
      String email, String password) async {
    final loginResult = await userRepository.login(email, password);

    switch (loginResult) {
      case Left(value: AuthError()):
        return Left(ServiceException(message: 'Erro a realizar login'));

      case Left(value: AuthUnauthorizedExeption()):
        return Left(ServiceException(message: 'Login ou senha inválidos'));

      case Right(value: final accessToken):
        final sp = await SharedPreferences.getInstance();
        sp.setString(LocalStorageConstants.accessToken, accessToken);
        return Right(unit);
    }
  }
}
