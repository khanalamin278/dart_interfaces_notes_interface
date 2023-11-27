import 'package:interfaces_notes_interface_and_mock_database/interfaces_notes_interface_and_mock_database.dart';
import 'package:test/test.dart';

void main() {
  var mockDB = MockNoteDatabase();

  test('MockNoteDatabase should implement NoteStorage', () {
    expect(mockDB, isA<NoteStorage>());
  });

  test('MockNoteDatabase saveNote and fetchNotes should work as expected', () {
    var testNote = 'Test Note';
    mockDB.saveNote(testNote);
    var notes = mockDB.fetchNotes();
    expect(notes,
        contains(testNote)); // Ensure the test note is in the returned notes
  });
}
