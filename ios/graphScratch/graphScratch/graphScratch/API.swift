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

      public init(id: GraphQLID, title: String? = nil, creationDate: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Note", "id": id, "title": title, "creationDate": creationDate])
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

public struct NoteFullDetails: GraphQLFragment {
  public static let fragmentDefinition =
    "fragment NoteFullDetails on Note {\n  __typename\n  id\n  title\n  id\n  creationDate\n}"

  public static let possibleTypes = ["Note"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("title", type: .scalar(String.self)),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("creationDate", type: .scalar(String.self)),
  ]

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: GraphQLID, title: String? = nil, creationDate: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "Note", "id": id, "title": title, "creationDate": creationDate])
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

  public var creationDate: String? {
    get {
      return resultMap["creationDate"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "creationDate")
    }
  }
}