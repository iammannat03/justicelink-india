class UpcomingEvent{
  const UpcomingEvent({required this.eventDescription, required this.dateAndTime, required this.eventName, required this.eventType, required this.roomNo, required this.status,this.additionalNotes});

  final String dateAndTime;
  final String eventName;
  final String eventDescription;
  final String eventType;
  final String roomNo;
  final String status;
  final String? additionalNotes;

}