import Foundation
import Apollo

fileprivate let simpleURL = URL(string: "https://api.graph.cool/simple/v1/cjx389uec58rs0139zjo300oj")
private let apollo = ApolloClient(url: simpleURL!)

class GraphAPI {
    static func queryAllNotes(_ completion: @escaping (Swift.Result<[NoteFullDetails]?, Error>) -> Void) {
        apollo.fetch(query: NotesDetailsQuery(), cachePolicy: .fetchIgnoringCacheData) { result, error in
            if let error = error {
                completion(.failure(error))
            }
            let notes = result?.data?.allNotes.map { $0.fragments.noteFullDetails }
            completion(.success(notes))
        }
    }
    
    static func addNote(title: String, body: String, creationDate: String, _ completion: @escaping (Error?) -> Void) {
        let createNoteMutation = CreateNoteMutation(title: title, body: body, creationDate: creationDate)
        
        apollo.perform(mutation: createNoteMutation) { _, error in
            completion(error)
        }
    }
    
    static func updateNote(note: NoteFullDetails, _ completion: @escaping (Error?) -> Void) {
        let updateNoteMutation = UpdateNoteMutation(id: note.id,
                                                    title: note.title ?? "null",  //these are non null graphQL values... don't know why the API makes them optional
                                                    body: note.body ?? "null",
                                                    creationDate: note.creationDate ?? "null")
        
        apollo.perform(mutation: updateNoteMutation) { _, error in
            completion(error)
        }
    }
}
