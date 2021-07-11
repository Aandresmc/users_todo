abstract class UseCase<T, R> {
  Future<R> call(T params);
}
