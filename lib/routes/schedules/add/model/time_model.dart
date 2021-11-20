/// id : 0
/// days : [1,2,3]
/// time : "09:00"

class TimeModel {
  TimeModel({
      int? id, 
      List<int>? days, 
      String? time,}){
    _id = id;
    _days = days;
    _time = time;
}

  TimeModel.fromJson(dynamic json) {
    _id = json['id'];
    _days = json['days'] != null ? json['days'].cast<int>() : [];
    _time = json['time'];
  }
  int? _id;
  List<int>? _days;
  String? _time;

  int? get id => _id;
  List<int>? get days => _days;
  String? get time => _time;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['days'] = _days;
    map['time'] = _time;
    return map;
  }

}