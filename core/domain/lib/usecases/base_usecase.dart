
abstract class BaseUseCaseWithParams<R,P>{
  Future<R> call(P params);
}

abstract class BaseUseCase<R>{
  Future<R> call();
}
