import 'package:hmpaisrn/data/autogenerated.dart';
import 'package:hmpaisrn/data/launch.dart';

class AppDataState {
  final Autogenerated peopleInSpace;
  final Launch upcomingLaunch;
  final Launch previousLaunch;
  final Launch searchLaunch;
  final bool loading;

  AppDataState(
      {this.peopleInSpace,
      this.upcomingLaunch,
      this.previousLaunch,
      this.searchLaunch,
      this.loading});

  static AppDataState fromJson(dynamic json) => AppDataState(
      peopleInSpace: Autogenerated.fromJson(json['peopleInSpace']),
      upcomingLaunch: Launch.fromJson(json['upcomingLaunch']),
      previousLaunch: Launch.fromJson(json['previousLaunch']),
      searchLaunch: Launch());

  dynamic toJson() => {
        'peopleInSpace': peopleInSpace == null ? null : peopleInSpace.toJson(),
        'upcomingLaunch':
            upcomingLaunch == null ? null : upcomingLaunch.toJson(),
        'previousLaunch':
            previousLaunch == null ? null : previousLaunch.toJson()
      };

  AppDataState copyWith(
      {peopleInSpace, upcomingLaunch, previousLaunch, searchLaunch, loading}) {
    return new AppDataState(
      peopleInSpace: peopleInSpace ?? this.peopleInSpace,
      upcomingLaunch: upcomingLaunch ?? this.upcomingLaunch,
      previousLaunch: previousLaunch ?? this.previousLaunch,
      searchLaunch: searchLaunch ?? this.searchLaunch,
      loading: loading ?? this.loading,
    );
  }
}
