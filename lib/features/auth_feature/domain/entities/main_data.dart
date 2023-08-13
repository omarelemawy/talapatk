import 'package:equatable/equatable.dart';

class MainData extends Equatable {
  final int countEventsComplete;
  final int countEventsComing;
  final int countEventsSaved;

  const MainData({
    required this.countEventsComplete,
    required this.countEventsComing,
    required this.countEventsSaved,
  });

  @override
  List<Object?> get props => [
        countEventsComplete,
        countEventsComing,
        countEventsSaved,
      ];
}
