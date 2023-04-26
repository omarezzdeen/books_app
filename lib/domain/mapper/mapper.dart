

abstract class Mapper<I, O> {
  O map(I object);
}

abstract class MapperList<I, O> {
  List<O> map(List<I> object);
}