abstract class Failure{
  final String errorMessage;
  const Failure(this.errorMessage);
}

class ServerFailure extends Failure{
  const ServerFailure(super.errorMessage);
  
}

class CacheFailure extends Failure{
  const CacheFailure(super.errorMessage);
}

class NetworkFailure extends Failure{
  const NetworkFailure(super.errorMessage);
}

class AuthFailure extends Failure{
  const AuthFailure(super.errorMessage);
}

class UnExpectedFailure extends Failure{
  const UnExpectedFailure(super.errorMessage);
}