import 'dart:math';
import 'package:hairdresser/data/data.dart';
import 'package:hairdresser/models/event.dart';

class DbService {
// List<EventModel> eventList = [];

  Future<List<EventModel>> getEvents() async {
    return await Future.delayed(Duration(seconds: 0), () => eventList);
  }

  Future<void> addEvent(EventModel event) async {
    int idRandom = Random().nextInt(pow(2, 31));

    eventList.add(EventModel(
        id: idRandom,
        title: event.title + idRandom.toString(),
        description: event.description + idRandom.toString(),
        eventDate: event.eventDate));
  }
}
