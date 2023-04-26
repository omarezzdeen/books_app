//
// import 'mapper.dart';
//
// class ListMapper<I, O> implements Mapper<List<I>, List<O>> {
//   final Mapper<I, O> mapper;
//
//   ListMapper(this.mapper);
//
//   List<O> mapList(List<I?>? input) {
//     return input?.let((it) => mapNullItem(it)) ?? <O>[];
//   }
//
//   List<O> mapNullItem(List<I?> input) {
//     return input
//         .map((it) => it?.((value) => mapper.map(value)))
//         .whereType<O>()
//         .toList();
//   }
//
//   @override
//   List<O> map(List<I> input) {
//     return input.map((it) => mapper.map(it)).whereType<O>().toList();
//   }
//
// }