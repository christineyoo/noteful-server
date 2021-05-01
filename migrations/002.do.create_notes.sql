CREATE TABLE notes (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  note_name TEXT NOT NULL,
  modified TIMESTAMPTZ DEFAULT now() NOT NULL,
  content TEXT NOT NULL
);

ALTER TABLE notes
  ADD COLUMN
    folderId INTEGER REFERENCES folders(id) ON DELETE CASCADE NOT NULL;