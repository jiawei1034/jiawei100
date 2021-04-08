class Note {
  String title;
  String content;
  DateTime date;

  Note({this.title, this.content, this.date});
}

final Map<String, int> categories = {
  'Daily': 57,
  'Weekly': 789,
  'Monthly': 1003,
  'Yearly': 12012,
};

final List<Note> notes = [
  Note(
    title: 'Buy ticket',
    content: 'Buy airplane ticket through Kayak for \$318.38',
    date: DateTime(2019, 10, 10, 8, 30),
  ),
  Note(
    title: 'Buy coffee',
    content: 'Paid \$2.50 for a cup of coffee',
    date: DateTime(2019, 10, 10, 8, 30),
  ),
];
