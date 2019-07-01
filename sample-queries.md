### query all notes

``` query {
  allNotes {
	title
	created
	id
	thread {
	  id
      title
	}
  }
} ```
