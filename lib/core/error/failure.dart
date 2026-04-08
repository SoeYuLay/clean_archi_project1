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