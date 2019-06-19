//  This file was automatically generated and should not be edited.

import Apollo

public final class NotesDetailsQuery: GraphQLQuery {
  public let operationDefinition =
    "query NotesDetails {\n  allNotes {\n    __typename\n    ...NoteFullDetails\n  }\n}"

  public var queryDocument: String { return operationDefinition.appending(NoteFullDetails.fragmentDefinition) }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("allNotes", type: .nonNull(.list(.nonNull(.object(AllNote.selections))))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(allNotes: [AllNote]) {
      self.init(unsafeResultMap: ["__typename": "Query", "allNotes": allNotes.map { (value: AllNote) -> ResultMap in value.resultMap }])
    }

    public var allNotes: [AllNote] {
      get {
        return (resultMap["allNotes"] as! [ResultMap]).map { (value: ResultMap) -> AllNote in AllNote(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: AllNote) -> ResultMap in value.resultMap }, forKey: "allNotes")
      }
    }

    public struct AllNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Note"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(NoteFullDetails.self),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, title: String? = nil, body: String? = nil, creationDate: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Note", "id": id, "title": title, "body": body, "creationDate": creationDate])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var noteFullDetails: NoteFullDetails {
          get {
            return NoteFullDetails(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public final class CreateNoteMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation CreateNote($title: String!, $body: String!, $creationDate: DateTime!) {\n  createNote(title: $title, body: $body, creationDate: $creationDate) {\n    __typename\n    id\n  }\n}"

  public var title: String
  public var body: String
  public var creationDate: String

  public init(title: String, body: String, creationDate: String) {
    self.title = title
    self.body = body
    self.creationDate = creationDate
  }

  public var variables: GraphQLMap? {
    return ["title": title, "body": body, "creationDate": creationDate]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createNote", arguments: ["title": GraphQLVariable("title"), "body": GraphQLVariable("body"), "creationDate": GraphQLVariable("creationDate")], type: .object(CreateNote.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createNote: CreateNote? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createNote": createNote.flatMap { (value: CreateNote) -> ResultMap in value.resultMap }])
    }

    public var createNote: CreateNote? {
      get {
        return (resultMap["createNote"] as? ResultMap).flatMap { CreateNote(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createNote")
      }
    }

    public struct CreateNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Note"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID) {
        self.init(unsafeResultMap: ["__typename": "Note", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class UpdateNoteMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation UpdateNote($id: ID!, $title: String!, $body: String!, $creationDate: DateTime!) {\n  updateNote(id: $id, title: $title, body: $body, creationDate: $creationDate) {\n    __typename\n    id\n  }\n}"

  public var id: GraphQLID
  public var title: String
  public var body: String
  public var creationDate: String

  public init(id: GraphQLID, title: String, body: String, creationDate: String) {
    self.id = id
    self.title = title
    self.body = body
    self.creationDate = creationDate
  }

  public var variables: GraphQLMap? {
    return ["id": id, "title": title, "body": body, "creationDate": creationDate]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateNote", arguments: ["id": GraphQLVariable("id"), "title": GraphQLVariable("title"), "body": GraphQLVariable("body"), "creationDate": GraphQLVariable("creationDate")], type: .object(UpdateNote.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateNote: UpdateNote? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateNote": updateNote.flatMap { (value: UpdateNote) -> ResultMap in value.resultMap }])
    }

    public var updateNote: UpdateNote? {
      get {
        return (resultMap["updateNote"] as? ResultMap).flatMap { UpdateNote(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "updateNote")
      }
    }

    public struct UpdateNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Note"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID) {
        self.init(unsafeResultMap: ["__typename": "Note", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public struct NoteFullDetails: GraphQLFragment {
  public static let fragmentDefinition =
    "fragment NoteFullDetails on Note {\n  __typename\n  id\n  title\n  body\n  id\n  creationDate\n}"

  public static let possibleTypes = ["Note"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("title", type: .scalar(String.self)),
    GraphQLField("body", type: .scalar(String.self)),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("creationDate", type: .scalar(String.self)),
  ]

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: GraphQLID, title: String? = nil, body: String? = nil, creationDate: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "Note", "id": id, "title": title, "body": body, "creationDate": creationDate])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: GraphQLID {
    get {
      return resultMap["id"]! as! GraphQLID
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var body: String? {
    get {
      return resultMap["body"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "body")
    }
  }

  public var creationDate: String? {
    get {
      return resultMap["creationDate"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "creationDate")
    }
  }
}