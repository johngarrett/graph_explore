//  This file was automatically generated and should not be edited.

import Apollo

public final class CreatePostMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation CreatePost($description: String!, $imageUrl: String!) {\n  createPost(description: $description, imageUrl: $imageUrl) {\n    __typename\n    ...PostDetails\n  }\n}"

  public var queryDocument: String { return operationDefinition.appending(PostDetails.fragmentDefinition) }

  public var description: String
  public var imageUrl: String

  public init(description: String, imageUrl: String) {
    self.description = description
    self.imageUrl = imageUrl
  }

  public var variables: GraphQLMap? {
    return ["description": description, "imageUrl": imageUrl]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createPost", arguments: ["description": GraphQLVariable("description"), "imageUrl": GraphQLVariable("imageUrl")], type: .object(CreatePost.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createPost: CreatePost? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createPost": createPost.flatMap { (value: CreatePost) -> ResultMap in value.resultMap }])
    }

    public var createPost: CreatePost? {
      get {
        return (resultMap["createPost"] as? ResultMap).flatMap { CreatePost(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createPost")
      }
    }

    public struct CreatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(PostDetails.self),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, imageUrl: String, description: String) {
        self.init(unsafeResultMap: ["__typename": "Post", "id": id, "imageUrl": imageUrl, "description": description])
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

        public var postDetails: PostDetails {
          get {
            return PostDetails(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public final class AllPostsQuery: GraphQLQuery {
  public let operationDefinition =
    "query AllPosts {\n  allPosts {\n    __typename\n    ...PostDetails\n  }\n}"

  public var queryDocument: String { return operationDefinition.appending(PostDetails.fragmentDefinition) }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("allPosts", type: .nonNull(.list(.nonNull(.object(AllPost.selections))))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(allPosts: [AllPost]) {
      self.init(unsafeResultMap: ["__typename": "Query", "allPosts": allPosts.map { (value: AllPost) -> ResultMap in value.resultMap }])
    }

    public var allPosts: [AllPost] {
      get {
        return (resultMap["allPosts"] as! [ResultMap]).map { (value: ResultMap) -> AllPost in AllPost(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: AllPost) -> ResultMap in value.resultMap }, forKey: "allPosts")
      }
    }

    public struct AllPost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(PostDetails.self),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, imageUrl: String, description: String) {
        self.init(unsafeResultMap: ["__typename": "Post", "id": id, "imageUrl": imageUrl, "description": description])
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

        public var postDetails: PostDetails {
          get {
            return PostDetails(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public struct PostDetails: GraphQLFragment {
  public static let fragmentDefinition =
    "fragment PostDetails on Post {\n  __typename\n  id\n  imageUrl\n  description\n}"

  public static let possibleTypes = ["Post"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("imageUrl", type: .nonNull(.scalar(String.self))),
    GraphQLField("description", type: .nonNull(.scalar(String.self))),
  ]

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: GraphQLID, imageUrl: String, description: String) {
    self.init(unsafeResultMap: ["__typename": "Post", "id": id, "imageUrl": imageUrl, "description": description])
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

  public var imageUrl: String {
    get {
      return resultMap["imageUrl"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "imageUrl")
    }
  }

  public var description: String {
    get {
      return resultMap["description"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }
}