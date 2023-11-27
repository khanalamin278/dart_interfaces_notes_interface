/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/interfaces_notes_interface_and_mock_database_base.dart';

/*
Practice Question 2: Notes Interface and Mock Database

Design an interface NoteStorage that represents the storage operations
for a note-taking app (e.g., methods like saveNote and fetchNotes).

Implement a mock database class MockNoteDatabase that 
implements NoteStorage and returns predefined data for these methods.
*/

abstract class NoteStorage {
  void saveNote(String note);
  String? fetchNotes();
}

class MockNoteDatabase extends NoteStorage {
  String? note;

  @override
  void saveNote(String note) {
    this.note = note;
  }

  @override
  String? fetchNotes() {
    return note;
  }
}
