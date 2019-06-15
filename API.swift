//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateTodoInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, name: String, description: String? = nil) {
    graphQLMap = ["id": id, "name": name, "description": description]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: String? {
    get {
      return graphQLMap["description"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }
}

public struct UpdateTodoInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, name: String? = nil, description: String? = nil) {
    graphQLMap = ["id": id, "name": name, "description": description]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: String? {
    get {
      return graphQLMap["description"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }
}

public struct DeleteTodoInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, firstName: String, familyName: String, email: String, password: String? = nil) {
    graphQLMap = ["id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var firstName: String {
    get {
      return graphQLMap["firstName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var familyName: String {
    get {
      return graphQLMap["familyName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "familyName")
    }
  }

  public var email: String {
    get {
      return graphQLMap["email"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var password: String? {
    get {
      return graphQLMap["password"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "password")
    }
  }
}

public enum OrderStatus: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case registered
  case arrived
  case recieved
  case returned
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "registered": self = .registered
      case "arrived": self = .arrived
      case "recieved": self = .recieved
      case "returned": self = .returned
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .registered: return "registered"
      case .arrived: return "arrived"
      case .recieved: return "recieved"
      case .returned: return "returned"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: OrderStatus, rhs: OrderStatus) -> Bool {
    switch (lhs, rhs) {
      case (.registered, .registered): return true
      case (.arrived, .arrived): return true
      case (.recieved, .recieved): return true
      case (.returned, .returned): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct UpdateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, firstName: String? = nil, familyName: String? = nil, email: String? = nil, password: String? = nil) {
    graphQLMap = ["id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var firstName: String? {
    get {
      return graphQLMap["firstName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var familyName: String? {
    get {
      return graphQLMap["familyName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "familyName")
    }
  }

  public var email: String? {
    get {
      return graphQLMap["email"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var password: String? {
    get {
      return graphQLMap["password"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "password")
    }
  }
}

public struct DeleteUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateOrderInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil, orderSentById: GraphQLID? = nil, orderReceivedById: GraphQLID? = nil, orderSentFromId: GraphQLID? = nil, orderSentToId: GraphQLID? = nil) {
    graphQLMap = ["id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate, "orderSentById": orderSentById, "orderReceivedById": orderReceivedById, "orderSentFromId": orderSentFromId, "orderSentToId": orderSentToId]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var status: OrderStatus? {
    get {
      return graphQLMap["status"] as! OrderStatus?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "status")
    }
  }

  public var deadline: String? {
    get {
      return graphQLMap["deadline"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "deadline")
    }
  }

  public var arrivalDate: String? {
    get {
      return graphQLMap["arrivalDate"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "arrivalDate")
    }
  }

  public var orderSentById: GraphQLID? {
    get {
      return graphQLMap["orderSentById"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "orderSentById")
    }
  }

  public var orderReceivedById: GraphQLID? {
    get {
      return graphQLMap["orderReceivedById"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "orderReceivedById")
    }
  }

  public var orderSentFromId: GraphQLID? {
    get {
      return graphQLMap["orderSentFromId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "orderSentFromId")
    }
  }

  public var orderSentToId: GraphQLID? {
    get {
      return graphQLMap["orderSentToId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "orderSentToId")
    }
  }
}

public struct UpdateOrderInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, name: String? = nil, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil, orderSentById: GraphQLID? = nil, orderReceivedById: GraphQLID? = nil, orderSentFromId: GraphQLID? = nil, orderSentToId: GraphQLID? = nil) {
    graphQLMap = ["id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate, "orderSentById": orderSentById, "orderReceivedById": orderReceivedById, "orderSentFromId": orderSentFromId, "orderSentToId": orderSentToId]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var status: OrderStatus? {
    get {
      return graphQLMap["status"] as! OrderStatus?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "status")
    }
  }

  public var deadline: String? {
    get {
      return graphQLMap["deadline"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "deadline")
    }
  }

  public var arrivalDate: String? {
    get {
      return graphQLMap["arrivalDate"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "arrivalDate")
    }
  }

  public var orderSentById: GraphQLID? {
    get {
      return graphQLMap["orderSentById"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "orderSentById")
    }
  }

  public var orderReceivedById: GraphQLID? {
    get {
      return graphQLMap["orderReceivedById"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "orderReceivedById")
    }
  }

  public var orderSentFromId: GraphQLID? {
    get {
      return graphQLMap["orderSentFromId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "orderSentFromId")
    }
  }

  public var orderSentToId: GraphQLID? {
    get {
      return graphQLMap["orderSentToId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "orderSentToId")
    }
  }
}

public struct DeleteOrderInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateLocationInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, name: String? = nil, address: String? = nil) {
    graphQLMap = ["id": id, "name": name, "address": address]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var address: String? {
    get {
      return graphQLMap["address"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "address")
    }
  }
}

public struct UpdateLocationInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, name: String? = nil, address: String? = nil) {
    graphQLMap = ["id": id, "name": name, "address": address]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var address: String? {
    get {
      return graphQLMap["address"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "address")
    }
  }
}

public struct DeleteLocationInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelTodoFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDFilterInput? = nil, name: ModelStringFilterInput? = nil, description: ModelStringFilterInput? = nil, and: [ModelTodoFilterInput?]? = nil, or: [ModelTodoFilterInput?]? = nil, not: ModelTodoFilterInput? = nil) {
    graphQLMap = ["id": id, "name": name, "description": description, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDFilterInput? {
    get {
      return graphQLMap["id"] as! ModelIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: ModelStringFilterInput? {
    get {
      return graphQLMap["name"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: ModelStringFilterInput? {
    get {
      return graphQLMap["description"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var and: [ModelTodoFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelTodoFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelTodoFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelTodoFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelTodoFilterInput? {
    get {
      return graphQLMap["not"] as! ModelTodoFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct ModelStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct ModelUserFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDFilterInput? = nil, firstName: ModelStringFilterInput? = nil, familyName: ModelStringFilterInput? = nil, email: ModelStringFilterInput? = nil, password: ModelStringFilterInput? = nil, and: [ModelUserFilterInput?]? = nil, or: [ModelUserFilterInput?]? = nil, not: ModelUserFilterInput? = nil) {
    graphQLMap = ["id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDFilterInput? {
    get {
      return graphQLMap["id"] as! ModelIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var firstName: ModelStringFilterInput? {
    get {
      return graphQLMap["firstName"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var familyName: ModelStringFilterInput? {
    get {
      return graphQLMap["familyName"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "familyName")
    }
  }

  public var email: ModelStringFilterInput? {
    get {
      return graphQLMap["email"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var password: ModelStringFilterInput? {
    get {
      return graphQLMap["password"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "password")
    }
  }

  public var and: [ModelUserFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserFilterInput? {
    get {
      return graphQLMap["not"] as! ModelUserFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelOrderFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDFilterInput? = nil, name: ModelStringFilterInput? = nil, status: ModelOrderStatusFilterInput? = nil, deadline: ModelStringFilterInput? = nil, arrivalDate: ModelStringFilterInput? = nil, and: [ModelOrderFilterInput?]? = nil, or: [ModelOrderFilterInput?]? = nil, not: ModelOrderFilterInput? = nil) {
    graphQLMap = ["id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDFilterInput? {
    get {
      return graphQLMap["id"] as! ModelIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: ModelStringFilterInput? {
    get {
      return graphQLMap["name"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var status: ModelOrderStatusFilterInput? {
    get {
      return graphQLMap["status"] as! ModelOrderStatusFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "status")
    }
  }

  public var deadline: ModelStringFilterInput? {
    get {
      return graphQLMap["deadline"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "deadline")
    }
  }

  public var arrivalDate: ModelStringFilterInput? {
    get {
      return graphQLMap["arrivalDate"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "arrivalDate")
    }
  }

  public var and: [ModelOrderFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelOrderFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelOrderFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelOrderFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelOrderFilterInput? {
    get {
      return graphQLMap["not"] as! ModelOrderFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelOrderStatusFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(eq: OrderStatus? = nil, ne: OrderStatus? = nil) {
    graphQLMap = ["eq": eq, "ne": ne]
  }

  public var eq: OrderStatus? {
    get {
      return graphQLMap["eq"] as! OrderStatus?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var ne: OrderStatus? {
    get {
      return graphQLMap["ne"] as! OrderStatus?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }
}

public struct ModelLocationFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDFilterInput? = nil, name: ModelStringFilterInput? = nil, address: ModelStringFilterInput? = nil, and: [ModelLocationFilterInput?]? = nil, or: [ModelLocationFilterInput?]? = nil, not: ModelLocationFilterInput? = nil) {
    graphQLMap = ["id": id, "name": name, "address": address, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDFilterInput? {
    get {
      return graphQLMap["id"] as! ModelIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: ModelStringFilterInput? {
    get {
      return graphQLMap["name"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var address: ModelStringFilterInput? {
    get {
      return graphQLMap["address"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "address")
    }
  }

  public var and: [ModelLocationFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelLocationFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelLocationFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelLocationFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelLocationFilterInput? {
    get {
      return graphQLMap["not"] as! ModelLocationFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public final class CreateTodoMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateTodo($input: CreateTodoInput!) {\n  createTodo(input: $input) {\n    __typename\n    id\n    name\n    description\n  }\n}"

  public var input: CreateTodoInput

  public init(input: CreateTodoInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createTodo", arguments: ["input": GraphQLVariable("input")], type: .object(CreateTodo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createTodo: CreateTodo? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createTodo": createTodo.flatMap { $0.snapshot }])
    }

    public var createTodo: CreateTodo? {
      get {
        return (snapshot["createTodo"] as? Snapshot).flatMap { CreateTodo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createTodo")
      }
    }

    public struct CreateTodo: GraphQLSelectionSet {
      public static let possibleTypes = ["Todo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Todo", "id": id, "name": name, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }
    }
  }
}

public final class UpdateTodoMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateTodo($input: UpdateTodoInput!) {\n  updateTodo(input: $input) {\n    __typename\n    id\n    name\n    description\n  }\n}"

  public var input: UpdateTodoInput

  public init(input: UpdateTodoInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateTodo", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateTodo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateTodo: UpdateTodo? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateTodo": updateTodo.flatMap { $0.snapshot }])
    }

    public var updateTodo: UpdateTodo? {
      get {
        return (snapshot["updateTodo"] as? Snapshot).flatMap { UpdateTodo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateTodo")
      }
    }

    public struct UpdateTodo: GraphQLSelectionSet {
      public static let possibleTypes = ["Todo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Todo", "id": id, "name": name, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }
    }
  }
}

public final class DeleteTodoMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteTodo($input: DeleteTodoInput!) {\n  deleteTodo(input: $input) {\n    __typename\n    id\n    name\n    description\n  }\n}"

  public var input: DeleteTodoInput

  public init(input: DeleteTodoInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteTodo", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteTodo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteTodo: DeleteTodo? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteTodo": deleteTodo.flatMap { $0.snapshot }])
    }

    public var deleteTodo: DeleteTodo? {
      get {
        return (snapshot["deleteTodo"] as? Snapshot).flatMap { DeleteTodo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteTodo")
      }
    }

    public struct DeleteTodo: GraphQLSelectionSet {
      public static let possibleTypes = ["Todo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Todo", "id": id, "name": name, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }
    }
  }
}

public final class CreateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUser($input: CreateUserInput!) {\n  createUser(input: $input) {\n    __typename\n    id\n    firstName\n    familyName\n    email\n    password\n    sentOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n    receivedOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n  }\n}"

  public var input: CreateUserInput

  public init(input: CreateUserInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUser", arguments: ["input": GraphQLVariable("input")], type: .object(CreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUser: CreateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUser": createUser.flatMap { $0.snapshot }])
    }

    public var createUser: CreateUser? {
      get {
        return (snapshot["createUser"] as? Snapshot).flatMap { CreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUser")
      }
    }

    public struct CreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("password", type: .scalar(String.self)),
        GraphQLField("sentOrders", type: .object(SentOrder.selections)),
        GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var familyName: String {
        get {
          return snapshot["familyName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "familyName")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var password: String? {
        get {
          return snapshot["password"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "password")
        }
      }

      public var sentOrders: SentOrder? {
        get {
          return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
        }
      }

      public var receivedOrders: ReceivedOrder? {
        get {
          return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
        }
      }

      public struct SentOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }

      public struct ReceivedOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }
    }
  }
}

public final class UpdateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUser($input: UpdateUserInput!) {\n  updateUser(input: $input) {\n    __typename\n    id\n    firstName\n    familyName\n    email\n    password\n    sentOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n    receivedOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n  }\n}"

  public var input: UpdateUserInput

  public init(input: UpdateUserInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUser", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUser: UpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUser": updateUser.flatMap { $0.snapshot }])
    }

    public var updateUser: UpdateUser? {
      get {
        return (snapshot["updateUser"] as? Snapshot).flatMap { UpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUser")
      }
    }

    public struct UpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("password", type: .scalar(String.self)),
        GraphQLField("sentOrders", type: .object(SentOrder.selections)),
        GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var familyName: String {
        get {
          return snapshot["familyName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "familyName")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var password: String? {
        get {
          return snapshot["password"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "password")
        }
      }

      public var sentOrders: SentOrder? {
        get {
          return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
        }
      }

      public var receivedOrders: ReceivedOrder? {
        get {
          return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
        }
      }

      public struct SentOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }

      public struct ReceivedOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }
    }
  }
}

public final class DeleteUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUser($input: DeleteUserInput!) {\n  deleteUser(input: $input) {\n    __typename\n    id\n    firstName\n    familyName\n    email\n    password\n    sentOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n    receivedOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n  }\n}"

  public var input: DeleteUserInput

  public init(input: DeleteUserInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUser", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUser: DeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUser": deleteUser.flatMap { $0.snapshot }])
    }

    public var deleteUser: DeleteUser? {
      get {
        return (snapshot["deleteUser"] as? Snapshot).flatMap { DeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUser")
      }
    }

    public struct DeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("password", type: .scalar(String.self)),
        GraphQLField("sentOrders", type: .object(SentOrder.selections)),
        GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var familyName: String {
        get {
          return snapshot["familyName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "familyName")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var password: String? {
        get {
          return snapshot["password"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "password")
        }
      }

      public var sentOrders: SentOrder? {
        get {
          return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
        }
      }

      public var receivedOrders: ReceivedOrder? {
        get {
          return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
        }
      }

      public struct SentOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }

      public struct ReceivedOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }
    }
  }
}

public final class CreateOrderMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateOrder($input: CreateOrderInput!) {\n  createOrder(input: $input) {\n    __typename\n    id\n    name\n    sentBy {\n      __typename\n      id\n      firstName\n      familyName\n      email\n      password\n      sentOrders {\n        __typename\n        nextToken\n      }\n      receivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    receivedBy {\n      __typename\n      id\n      firstName\n      familyName\n      email\n      password\n      sentOrders {\n        __typename\n        nextToken\n      }\n      receivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    sentFrom {\n      __typename\n      id\n      name\n      address\n      sentOrders {\n        __typename\n        nextToken\n      }\n      arrivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    sentTo {\n      __typename\n      id\n      name\n      address\n      sentOrders {\n        __typename\n        nextToken\n      }\n      arrivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    status\n    deadline\n    arrivalDate\n  }\n}"

  public var input: CreateOrderInput

  public init(input: CreateOrderInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createOrder", arguments: ["input": GraphQLVariable("input")], type: .object(CreateOrder.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createOrder: CreateOrder? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createOrder": createOrder.flatMap { $0.snapshot }])
    }

    public var createOrder: CreateOrder? {
      get {
        return (snapshot["createOrder"] as? Snapshot).flatMap { CreateOrder(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createOrder")
      }
    }

    public struct CreateOrder: GraphQLSelectionSet {
      public static let possibleTypes = ["Order"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("sentBy", type: .object(SentBy.selections)),
        GraphQLField("receivedBy", type: .object(ReceivedBy.selections)),
        GraphQLField("sentFrom", type: .object(SentFrom.selections)),
        GraphQLField("sentTo", type: .object(SentTo.selections)),
        GraphQLField("status", type: .scalar(OrderStatus.self)),
        GraphQLField("deadline", type: .scalar(String.self)),
        GraphQLField("arrivalDate", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, sentBy: SentBy? = nil, receivedBy: ReceivedBy? = nil, sentFrom: SentFrom? = nil, sentTo: SentTo? = nil, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
        self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "sentBy": sentBy.flatMap { $0.snapshot }, "receivedBy": receivedBy.flatMap { $0.snapshot }, "sentFrom": sentFrom.flatMap { $0.snapshot }, "sentTo": sentTo.flatMap { $0.snapshot }, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var sentBy: SentBy? {
        get {
          return (snapshot["sentBy"] as? Snapshot).flatMap { SentBy(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentBy")
        }
      }

      public var receivedBy: ReceivedBy? {
        get {
          return (snapshot["receivedBy"] as? Snapshot).flatMap { ReceivedBy(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "receivedBy")
        }
      }

      public var sentFrom: SentFrom? {
        get {
          return (snapshot["sentFrom"] as? Snapshot).flatMap { SentFrom(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentFrom")
        }
      }

      public var sentTo: SentTo? {
        get {
          return (snapshot["sentTo"] as? Snapshot).flatMap { SentTo(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentTo")
        }
      }

      public var status: OrderStatus? {
        get {
          return snapshot["status"] as? OrderStatus
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      public var deadline: String? {
        get {
          return snapshot["deadline"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deadline")
        }
      }

      public var arrivalDate: String? {
        get {
          return snapshot["arrivalDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrivalDate")
        }
      }

      public struct SentBy: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var familyName: String {
          get {
            return snapshot["familyName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "familyName")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var receivedOrders: ReceivedOrder? {
          get {
            return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ReceivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct ReceivedBy: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var familyName: String {
          get {
            return snapshot["familyName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "familyName")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var receivedOrders: ReceivedOrder? {
          get {
            return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ReceivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct SentFrom: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
          self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var address: String? {
          get {
            return snapshot["address"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "address")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var arrivedOrders: ArrivedOrder? {
          get {
            return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ArrivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct SentTo: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
          self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var address: String? {
          get {
            return snapshot["address"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "address")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var arrivedOrders: ArrivedOrder? {
          get {
            return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ArrivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class UpdateOrderMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateOrder($input: UpdateOrderInput!) {\n  updateOrder(input: $input) {\n    __typename\n    id\n    name\n    sentBy {\n      __typename\n      id\n      firstName\n      familyName\n      email\n      password\n      sentOrders {\n        __typename\n        nextToken\n      }\n      receivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    receivedBy {\n      __typename\n      id\n      firstName\n      familyName\n      email\n      password\n      sentOrders {\n        __typename\n        nextToken\n      }\n      receivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    sentFrom {\n      __typename\n      id\n      name\n      address\n      sentOrders {\n        __typename\n        nextToken\n      }\n      arrivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    sentTo {\n      __typename\n      id\n      name\n      address\n      sentOrders {\n        __typename\n        nextToken\n      }\n      arrivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    status\n    deadline\n    arrivalDate\n  }\n}"

  public var input: UpdateOrderInput

  public init(input: UpdateOrderInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateOrder", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateOrder.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateOrder: UpdateOrder? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateOrder": updateOrder.flatMap { $0.snapshot }])
    }

    public var updateOrder: UpdateOrder? {
      get {
        return (snapshot["updateOrder"] as? Snapshot).flatMap { UpdateOrder(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateOrder")
      }
    }

    public struct UpdateOrder: GraphQLSelectionSet {
      public static let possibleTypes = ["Order"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("sentBy", type: .object(SentBy.selections)),
        GraphQLField("receivedBy", type: .object(ReceivedBy.selections)),
        GraphQLField("sentFrom", type: .object(SentFrom.selections)),
        GraphQLField("sentTo", type: .object(SentTo.selections)),
        GraphQLField("status", type: .scalar(OrderStatus.self)),
        GraphQLField("deadline", type: .scalar(String.self)),
        GraphQLField("arrivalDate", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, sentBy: SentBy? = nil, receivedBy: ReceivedBy? = nil, sentFrom: SentFrom? = nil, sentTo: SentTo? = nil, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
        self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "sentBy": sentBy.flatMap { $0.snapshot }, "receivedBy": receivedBy.flatMap { $0.snapshot }, "sentFrom": sentFrom.flatMap { $0.snapshot }, "sentTo": sentTo.flatMap { $0.snapshot }, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var sentBy: SentBy? {
        get {
          return (snapshot["sentBy"] as? Snapshot).flatMap { SentBy(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentBy")
        }
      }

      public var receivedBy: ReceivedBy? {
        get {
          return (snapshot["receivedBy"] as? Snapshot).flatMap { ReceivedBy(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "receivedBy")
        }
      }

      public var sentFrom: SentFrom? {
        get {
          return (snapshot["sentFrom"] as? Snapshot).flatMap { SentFrom(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentFrom")
        }
      }

      public var sentTo: SentTo? {
        get {
          return (snapshot["sentTo"] as? Snapshot).flatMap { SentTo(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentTo")
        }
      }

      public var status: OrderStatus? {
        get {
          return snapshot["status"] as? OrderStatus
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      public var deadline: String? {
        get {
          return snapshot["deadline"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deadline")
        }
      }

      public var arrivalDate: String? {
        get {
          return snapshot["arrivalDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrivalDate")
        }
      }

      public struct SentBy: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var familyName: String {
          get {
            return snapshot["familyName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "familyName")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var receivedOrders: ReceivedOrder? {
          get {
            return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ReceivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct ReceivedBy: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var familyName: String {
          get {
            return snapshot["familyName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "familyName")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var receivedOrders: ReceivedOrder? {
          get {
            return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ReceivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct SentFrom: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
          self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var address: String? {
          get {
            return snapshot["address"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "address")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var arrivedOrders: ArrivedOrder? {
          get {
            return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ArrivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct SentTo: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
          self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var address: String? {
          get {
            return snapshot["address"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "address")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var arrivedOrders: ArrivedOrder? {
          get {
            return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ArrivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class DeleteOrderMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteOrder($input: DeleteOrderInput!) {\n  deleteOrder(input: $input) {\n    __typename\n    id\n    name\n    sentBy {\n      __typename\n      id\n      firstName\n      familyName\n      email\n      password\n      sentOrders {\n        __typename\n        nextToken\n      }\n      receivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    receivedBy {\n      __typename\n      id\n      firstName\n      familyName\n      email\n      password\n      sentOrders {\n        __typename\n        nextToken\n      }\n      receivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    sentFrom {\n      __typename\n      id\n      name\n      address\n      sentOrders {\n        __typename\n        nextToken\n      }\n      arrivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    sentTo {\n      __typename\n      id\n      name\n      address\n      sentOrders {\n        __typename\n        nextToken\n      }\n      arrivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    status\n    deadline\n    arrivalDate\n  }\n}"

  public var input: DeleteOrderInput

  public init(input: DeleteOrderInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteOrder", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteOrder.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteOrder: DeleteOrder? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteOrder": deleteOrder.flatMap { $0.snapshot }])
    }

    public var deleteOrder: DeleteOrder? {
      get {
        return (snapshot["deleteOrder"] as? Snapshot).flatMap { DeleteOrder(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteOrder")
      }
    }

    public struct DeleteOrder: GraphQLSelectionSet {
      public static let possibleTypes = ["Order"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("sentBy", type: .object(SentBy.selections)),
        GraphQLField("receivedBy", type: .object(ReceivedBy.selections)),
        GraphQLField("sentFrom", type: .object(SentFrom.selections)),
        GraphQLField("sentTo", type: .object(SentTo.selections)),
        GraphQLField("status", type: .scalar(OrderStatus.self)),
        GraphQLField("deadline", type: .scalar(String.self)),
        GraphQLField("arrivalDate", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, sentBy: SentBy? = nil, receivedBy: ReceivedBy? = nil, sentFrom: SentFrom? = nil, sentTo: SentTo? = nil, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
        self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "sentBy": sentBy.flatMap { $0.snapshot }, "receivedBy": receivedBy.flatMap { $0.snapshot }, "sentFrom": sentFrom.flatMap { $0.snapshot }, "sentTo": sentTo.flatMap { $0.snapshot }, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var sentBy: SentBy? {
        get {
          return (snapshot["sentBy"] as? Snapshot).flatMap { SentBy(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentBy")
        }
      }

      public var receivedBy: ReceivedBy? {
        get {
          return (snapshot["receivedBy"] as? Snapshot).flatMap { ReceivedBy(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "receivedBy")
        }
      }

      public var sentFrom: SentFrom? {
        get {
          return (snapshot["sentFrom"] as? Snapshot).flatMap { SentFrom(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentFrom")
        }
      }

      public var sentTo: SentTo? {
        get {
          return (snapshot["sentTo"] as? Snapshot).flatMap { SentTo(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentTo")
        }
      }

      public var status: OrderStatus? {
        get {
          return snapshot["status"] as? OrderStatus
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      public var deadline: String? {
        get {
          return snapshot["deadline"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deadline")
        }
      }

      public var arrivalDate: String? {
        get {
          return snapshot["arrivalDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrivalDate")
        }
      }

      public struct SentBy: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var familyName: String {
          get {
            return snapshot["familyName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "familyName")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var receivedOrders: ReceivedOrder? {
          get {
            return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ReceivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct ReceivedBy: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var familyName: String {
          get {
            return snapshot["familyName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "familyName")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var receivedOrders: ReceivedOrder? {
          get {
            return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ReceivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct SentFrom: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
          self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var address: String? {
          get {
            return snapshot["address"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "address")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var arrivedOrders: ArrivedOrder? {
          get {
            return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ArrivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct SentTo: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
          self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var address: String? {
          get {
            return snapshot["address"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "address")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var arrivedOrders: ArrivedOrder? {
          get {
            return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ArrivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class CreateLocationMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateLocation($input: CreateLocationInput!) {\n  createLocation(input: $input) {\n    __typename\n    id\n    name\n    address\n    sentOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n    arrivedOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n  }\n}"

  public var input: CreateLocationInput

  public init(input: CreateLocationInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createLocation", arguments: ["input": GraphQLVariable("input")], type: .object(CreateLocation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createLocation: CreateLocation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createLocation": createLocation.flatMap { $0.snapshot }])
    }

    public var createLocation: CreateLocation? {
      get {
        return (snapshot["createLocation"] as? Snapshot).flatMap { CreateLocation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createLocation")
      }
    }

    public struct CreateLocation: GraphQLSelectionSet {
      public static let possibleTypes = ["Location"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("address", type: .scalar(String.self)),
        GraphQLField("sentOrders", type: .object(SentOrder.selections)),
        GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
        self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var address: String? {
        get {
          return snapshot["address"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "address")
        }
      }

      public var sentOrders: SentOrder? {
        get {
          return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
        }
      }

      public var arrivedOrders: ArrivedOrder? {
        get {
          return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
        }
      }

      public struct SentOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }

      public struct ArrivedOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }
    }
  }
}

public final class UpdateLocationMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateLocation($input: UpdateLocationInput!) {\n  updateLocation(input: $input) {\n    __typename\n    id\n    name\n    address\n    sentOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n    arrivedOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n  }\n}"

  public var input: UpdateLocationInput

  public init(input: UpdateLocationInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateLocation", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateLocation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateLocation: UpdateLocation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateLocation": updateLocation.flatMap { $0.snapshot }])
    }

    public var updateLocation: UpdateLocation? {
      get {
        return (snapshot["updateLocation"] as? Snapshot).flatMap { UpdateLocation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateLocation")
      }
    }

    public struct UpdateLocation: GraphQLSelectionSet {
      public static let possibleTypes = ["Location"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("address", type: .scalar(String.self)),
        GraphQLField("sentOrders", type: .object(SentOrder.selections)),
        GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
        self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var address: String? {
        get {
          return snapshot["address"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "address")
        }
      }

      public var sentOrders: SentOrder? {
        get {
          return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
        }
      }

      public var arrivedOrders: ArrivedOrder? {
        get {
          return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
        }
      }

      public struct SentOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }

      public struct ArrivedOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }
    }
  }
}

public final class DeleteLocationMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteLocation($input: DeleteLocationInput!) {\n  deleteLocation(input: $input) {\n    __typename\n    id\n    name\n    address\n    sentOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n    arrivedOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n  }\n}"

  public var input: DeleteLocationInput

  public init(input: DeleteLocationInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteLocation", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteLocation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteLocation: DeleteLocation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteLocation": deleteLocation.flatMap { $0.snapshot }])
    }

    public var deleteLocation: DeleteLocation? {
      get {
        return (snapshot["deleteLocation"] as? Snapshot).flatMap { DeleteLocation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteLocation")
      }
    }

    public struct DeleteLocation: GraphQLSelectionSet {
      public static let possibleTypes = ["Location"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("address", type: .scalar(String.self)),
        GraphQLField("sentOrders", type: .object(SentOrder.selections)),
        GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
        self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var address: String? {
        get {
          return snapshot["address"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "address")
        }
      }

      public var sentOrders: SentOrder? {
        get {
          return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
        }
      }

      public var arrivedOrders: ArrivedOrder? {
        get {
          return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
        }
      }

      public struct SentOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }

      public struct ArrivedOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }
    }
  }
}

public final class GetTodoQuery: GraphQLQuery {
  public static let operationString =
    "query GetTodo($id: ID!) {\n  getTodo(id: $id) {\n    __typename\n    id\n    name\n    description\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getTodo", arguments: ["id": GraphQLVariable("id")], type: .object(GetTodo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getTodo: GetTodo? = nil) {
      self.init(snapshot: ["__typename": "Query", "getTodo": getTodo.flatMap { $0.snapshot }])
    }

    public var getTodo: GetTodo? {
      get {
        return (snapshot["getTodo"] as? Snapshot).flatMap { GetTodo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getTodo")
      }
    }

    public struct GetTodo: GraphQLSelectionSet {
      public static let possibleTypes = ["Todo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Todo", "id": id, "name": name, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }
    }
  }
}

public final class ListTodosQuery: GraphQLQuery {
  public static let operationString =
    "query ListTodos($filter: ModelTodoFilterInput, $limit: Int, $nextToken: String) {\n  listTodos(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      description\n    }\n    nextToken\n  }\n}"

  public var filter: ModelTodoFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelTodoFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listTodos", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListTodo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listTodos: ListTodo? = nil) {
      self.init(snapshot: ["__typename": "Query", "listTodos": listTodos.flatMap { $0.snapshot }])
    }

    public var listTodos: ListTodo? {
      get {
        return (snapshot["listTodos"] as? Snapshot).flatMap { ListTodo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listTodos")
      }
    }

    public struct ListTodo: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelTodoConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelTodoConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Todo"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String? = nil) {
          self.init(snapshot: ["__typename": "Todo", "id": id, "name": name, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }
      }
    }
  }
}

public final class GetUserQuery: GraphQLQuery {
  public static let operationString =
    "query GetUser($id: ID!) {\n  getUser(id: $id) {\n    __typename\n    id\n    firstName\n    familyName\n    email\n    password\n    sentOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n    receivedOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUser", arguments: ["id": GraphQLVariable("id")], type: .object(GetUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUser: GetUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUser": getUser.flatMap { $0.snapshot }])
    }

    public var getUser: GetUser? {
      get {
        return (snapshot["getUser"] as? Snapshot).flatMap { GetUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUser")
      }
    }

    public struct GetUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("password", type: .scalar(String.self)),
        GraphQLField("sentOrders", type: .object(SentOrder.selections)),
        GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var familyName: String {
        get {
          return snapshot["familyName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "familyName")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var password: String? {
        get {
          return snapshot["password"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "password")
        }
      }

      public var sentOrders: SentOrder? {
        get {
          return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
        }
      }

      public var receivedOrders: ReceivedOrder? {
        get {
          return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
        }
      }

      public struct SentOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }

      public struct ReceivedOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }
    }
  }
}

public final class ListUsersQuery: GraphQLQuery {
  public static let operationString =
    "query ListUsers($filter: ModelUserFilterInput, $limit: Int, $nextToken: String) {\n  listUsers(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      firstName\n      familyName\n      email\n      password\n      sentOrders {\n        __typename\n        nextToken\n      }\n      receivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    nextToken\n  }\n}"

  public var filter: ModelUserFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelUserFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listUsers", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUsers: ListUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUsers": listUsers.flatMap { $0.snapshot }])
    }

    public var listUsers: ListUser? {
      get {
        return (snapshot["listUsers"] as? Snapshot).flatMap { ListUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUsers")
      }
    }

    public struct ListUser: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelUserConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelUserConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var familyName: String {
          get {
            return snapshot["familyName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "familyName")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var receivedOrders: ReceivedOrder? {
          get {
            return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ReceivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class GetOrderQuery: GraphQLQuery {
  public static let operationString =
    "query GetOrder($id: ID!) {\n  getOrder(id: $id) {\n    __typename\n    id\n    name\n    sentBy {\n      __typename\n      id\n      firstName\n      familyName\n      email\n      password\n      sentOrders {\n        __typename\n        nextToken\n      }\n      receivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    receivedBy {\n      __typename\n      id\n      firstName\n      familyName\n      email\n      password\n      sentOrders {\n        __typename\n        nextToken\n      }\n      receivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    sentFrom {\n      __typename\n      id\n      name\n      address\n      sentOrders {\n        __typename\n        nextToken\n      }\n      arrivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    sentTo {\n      __typename\n      id\n      name\n      address\n      sentOrders {\n        __typename\n        nextToken\n      }\n      arrivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    status\n    deadline\n    arrivalDate\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getOrder", arguments: ["id": GraphQLVariable("id")], type: .object(GetOrder.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getOrder: GetOrder? = nil) {
      self.init(snapshot: ["__typename": "Query", "getOrder": getOrder.flatMap { $0.snapshot }])
    }

    public var getOrder: GetOrder? {
      get {
        return (snapshot["getOrder"] as? Snapshot).flatMap { GetOrder(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getOrder")
      }
    }

    public struct GetOrder: GraphQLSelectionSet {
      public static let possibleTypes = ["Order"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("sentBy", type: .object(SentBy.selections)),
        GraphQLField("receivedBy", type: .object(ReceivedBy.selections)),
        GraphQLField("sentFrom", type: .object(SentFrom.selections)),
        GraphQLField("sentTo", type: .object(SentTo.selections)),
        GraphQLField("status", type: .scalar(OrderStatus.self)),
        GraphQLField("deadline", type: .scalar(String.self)),
        GraphQLField("arrivalDate", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, sentBy: SentBy? = nil, receivedBy: ReceivedBy? = nil, sentFrom: SentFrom? = nil, sentTo: SentTo? = nil, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
        self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "sentBy": sentBy.flatMap { $0.snapshot }, "receivedBy": receivedBy.flatMap { $0.snapshot }, "sentFrom": sentFrom.flatMap { $0.snapshot }, "sentTo": sentTo.flatMap { $0.snapshot }, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var sentBy: SentBy? {
        get {
          return (snapshot["sentBy"] as? Snapshot).flatMap { SentBy(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentBy")
        }
      }

      public var receivedBy: ReceivedBy? {
        get {
          return (snapshot["receivedBy"] as? Snapshot).flatMap { ReceivedBy(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "receivedBy")
        }
      }

      public var sentFrom: SentFrom? {
        get {
          return (snapshot["sentFrom"] as? Snapshot).flatMap { SentFrom(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentFrom")
        }
      }

      public var sentTo: SentTo? {
        get {
          return (snapshot["sentTo"] as? Snapshot).flatMap { SentTo(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentTo")
        }
      }

      public var status: OrderStatus? {
        get {
          return snapshot["status"] as? OrderStatus
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      public var deadline: String? {
        get {
          return snapshot["deadline"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deadline")
        }
      }

      public var arrivalDate: String? {
        get {
          return snapshot["arrivalDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrivalDate")
        }
      }

      public struct SentBy: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var familyName: String {
          get {
            return snapshot["familyName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "familyName")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var receivedOrders: ReceivedOrder? {
          get {
            return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ReceivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct ReceivedBy: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var familyName: String {
          get {
            return snapshot["familyName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "familyName")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var receivedOrders: ReceivedOrder? {
          get {
            return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ReceivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct SentFrom: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
          self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var address: String? {
          get {
            return snapshot["address"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "address")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var arrivedOrders: ArrivedOrder? {
          get {
            return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ArrivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct SentTo: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
          self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var address: String? {
          get {
            return snapshot["address"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "address")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var arrivedOrders: ArrivedOrder? {
          get {
            return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ArrivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class ListOrdersQuery: GraphQLQuery {
  public static let operationString =
    "query ListOrders($filter: ModelOrderFilterInput, $limit: Int, $nextToken: String) {\n  listOrders(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      sentBy {\n        __typename\n        id\n        firstName\n        familyName\n        email\n        password\n      }\n      receivedBy {\n        __typename\n        id\n        firstName\n        familyName\n        email\n        password\n      }\n      sentFrom {\n        __typename\n        id\n        name\n        address\n      }\n      sentTo {\n        __typename\n        id\n        name\n        address\n      }\n      status\n      deadline\n      arrivalDate\n    }\n    nextToken\n  }\n}"

  public var filter: ModelOrderFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelOrderFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listOrders", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListOrder.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listOrders: ListOrder? = nil) {
      self.init(snapshot: ["__typename": "Query", "listOrders": listOrders.flatMap { $0.snapshot }])
    }

    public var listOrders: ListOrder? {
      get {
        return (snapshot["listOrders"] as? Snapshot).flatMap { ListOrder(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listOrders")
      }
    }

    public struct ListOrder: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelOrderConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Order"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("sentBy", type: .object(SentBy.selections)),
          GraphQLField("receivedBy", type: .object(ReceivedBy.selections)),
          GraphQLField("sentFrom", type: .object(SentFrom.selections)),
          GraphQLField("sentTo", type: .object(SentTo.selections)),
          GraphQLField("status", type: .scalar(OrderStatus.self)),
          GraphQLField("deadline", type: .scalar(String.self)),
          GraphQLField("arrivalDate", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, sentBy: SentBy? = nil, receivedBy: ReceivedBy? = nil, sentFrom: SentFrom? = nil, sentTo: SentTo? = nil, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
          self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "sentBy": sentBy.flatMap { $0.snapshot }, "receivedBy": receivedBy.flatMap { $0.snapshot }, "sentFrom": sentFrom.flatMap { $0.snapshot }, "sentTo": sentTo.flatMap { $0.snapshot }, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var sentBy: SentBy? {
          get {
            return (snapshot["sentBy"] as? Snapshot).flatMap { SentBy(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentBy")
          }
        }

        public var receivedBy: ReceivedBy? {
          get {
            return (snapshot["receivedBy"] as? Snapshot).flatMap { ReceivedBy(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "receivedBy")
          }
        }

        public var sentFrom: SentFrom? {
          get {
            return (snapshot["sentFrom"] as? Snapshot).flatMap { SentFrom(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentFrom")
          }
        }

        public var sentTo: SentTo? {
          get {
            return (snapshot["sentTo"] as? Snapshot).flatMap { SentTo(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentTo")
          }
        }

        public var status: OrderStatus? {
          get {
            return snapshot["status"] as? OrderStatus
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        public var deadline: String? {
          get {
            return snapshot["deadline"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "deadline")
          }
        }

        public var arrivalDate: String? {
          get {
            return snapshot["arrivalDate"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "arrivalDate")
          }
        }

        public struct SentBy: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
            GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
            GraphQLField("email", type: .nonNull(.scalar(String.self))),
            GraphQLField("password", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil) {
            self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var firstName: String {
            get {
              return snapshot["firstName"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "firstName")
            }
          }

          public var familyName: String {
            get {
              return snapshot["familyName"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "familyName")
            }
          }

          public var email: String {
            get {
              return snapshot["email"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "email")
            }
          }

          public var password: String? {
            get {
              return snapshot["password"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "password")
            }
          }
        }

        public struct ReceivedBy: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
            GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
            GraphQLField("email", type: .nonNull(.scalar(String.self))),
            GraphQLField("password", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil) {
            self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var firstName: String {
            get {
              return snapshot["firstName"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "firstName")
            }
          }

          public var familyName: String {
            get {
              return snapshot["familyName"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "familyName")
            }
          }

          public var email: String {
            get {
              return snapshot["email"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "email")
            }
          }

          public var password: String? {
            get {
              return snapshot["password"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "password")
            }
          }
        }

        public struct SentFrom: GraphQLSelectionSet {
          public static let possibleTypes = ["Location"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("address", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String? = nil, address: String? = nil) {
            self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var address: String? {
            get {
              return snapshot["address"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "address")
            }
          }
        }

        public struct SentTo: GraphQLSelectionSet {
          public static let possibleTypes = ["Location"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("address", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String? = nil, address: String? = nil) {
            self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var address: String? {
            get {
              return snapshot["address"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "address")
            }
          }
        }
      }
    }
  }
}

public final class GetLocationQuery: GraphQLQuery {
  public static let operationString =
    "query GetLocation($id: ID!) {\n  getLocation(id: $id) {\n    __typename\n    id\n    name\n    address\n    sentOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n    arrivedOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getLocation", arguments: ["id": GraphQLVariable("id")], type: .object(GetLocation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getLocation: GetLocation? = nil) {
      self.init(snapshot: ["__typename": "Query", "getLocation": getLocation.flatMap { $0.snapshot }])
    }

    public var getLocation: GetLocation? {
      get {
        return (snapshot["getLocation"] as? Snapshot).flatMap { GetLocation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getLocation")
      }
    }

    public struct GetLocation: GraphQLSelectionSet {
      public static let possibleTypes = ["Location"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("address", type: .scalar(String.self)),
        GraphQLField("sentOrders", type: .object(SentOrder.selections)),
        GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
        self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var address: String? {
        get {
          return snapshot["address"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "address")
        }
      }

      public var sentOrders: SentOrder? {
        get {
          return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
        }
      }

      public var arrivedOrders: ArrivedOrder? {
        get {
          return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
        }
      }

      public struct SentOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }

      public struct ArrivedOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }
    }
  }
}

public final class ListLocationsQuery: GraphQLQuery {
  public static let operationString =
    "query ListLocations($filter: ModelLocationFilterInput, $limit: Int, $nextToken: String) {\n  listLocations(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      address\n      sentOrders {\n        __typename\n        nextToken\n      }\n      arrivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    nextToken\n  }\n}"

  public var filter: ModelLocationFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelLocationFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listLocations", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListLocation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listLocations: ListLocation? = nil) {
      self.init(snapshot: ["__typename": "Query", "listLocations": listLocations.flatMap { $0.snapshot }])
    }

    public var listLocations: ListLocation? {
      get {
        return (snapshot["listLocations"] as? Snapshot).flatMap { ListLocation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listLocations")
      }
    }

    public struct ListLocation: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelLocationConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelLocationConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
          self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var address: String? {
          get {
            return snapshot["address"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "address")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var arrivedOrders: ArrivedOrder? {
          get {
            return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ArrivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class OnCreateTodoSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateTodo {\n  onCreateTodo {\n    __typename\n    id\n    name\n    description\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateTodo", type: .object(OnCreateTodo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateTodo: OnCreateTodo? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateTodo": onCreateTodo.flatMap { $0.snapshot }])
    }

    public var onCreateTodo: OnCreateTodo? {
      get {
        return (snapshot["onCreateTodo"] as? Snapshot).flatMap { OnCreateTodo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateTodo")
      }
    }

    public struct OnCreateTodo: GraphQLSelectionSet {
      public static let possibleTypes = ["Todo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Todo", "id": id, "name": name, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }
    }
  }
}

public final class OnUpdateTodoSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateTodo {\n  onUpdateTodo {\n    __typename\n    id\n    name\n    description\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateTodo", type: .object(OnUpdateTodo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateTodo: OnUpdateTodo? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateTodo": onUpdateTodo.flatMap { $0.snapshot }])
    }

    public var onUpdateTodo: OnUpdateTodo? {
      get {
        return (snapshot["onUpdateTodo"] as? Snapshot).flatMap { OnUpdateTodo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateTodo")
      }
    }

    public struct OnUpdateTodo: GraphQLSelectionSet {
      public static let possibleTypes = ["Todo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Todo", "id": id, "name": name, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }
    }
  }
}

public final class OnDeleteTodoSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteTodo {\n  onDeleteTodo {\n    __typename\n    id\n    name\n    description\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteTodo", type: .object(OnDeleteTodo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteTodo: OnDeleteTodo? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteTodo": onDeleteTodo.flatMap { $0.snapshot }])
    }

    public var onDeleteTodo: OnDeleteTodo? {
      get {
        return (snapshot["onDeleteTodo"] as? Snapshot).flatMap { OnDeleteTodo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteTodo")
      }
    }

    public struct OnDeleteTodo: GraphQLSelectionSet {
      public static let possibleTypes = ["Todo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String? = nil) {
        self.init(snapshot: ["__typename": "Todo", "id": id, "name": name, "description": description])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }
    }
  }
}

public final class OnCreateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUser {\n  onCreateUser {\n    __typename\n    id\n    firstName\n    familyName\n    email\n    password\n    sentOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n    receivedOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUser", type: .object(OnCreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUser: OnCreateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUser": onCreateUser.flatMap { $0.snapshot }])
    }

    public var onCreateUser: OnCreateUser? {
      get {
        return (snapshot["onCreateUser"] as? Snapshot).flatMap { OnCreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUser")
      }
    }

    public struct OnCreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("password", type: .scalar(String.self)),
        GraphQLField("sentOrders", type: .object(SentOrder.selections)),
        GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var familyName: String {
        get {
          return snapshot["familyName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "familyName")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var password: String? {
        get {
          return snapshot["password"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "password")
        }
      }

      public var sentOrders: SentOrder? {
        get {
          return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
        }
      }

      public var receivedOrders: ReceivedOrder? {
        get {
          return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
        }
      }

      public struct SentOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }

      public struct ReceivedOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUser {\n  onUpdateUser {\n    __typename\n    id\n    firstName\n    familyName\n    email\n    password\n    sentOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n    receivedOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateUser", type: .object(OnUpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateUser: OnUpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateUser": onUpdateUser.flatMap { $0.snapshot }])
    }

    public var onUpdateUser: OnUpdateUser? {
      get {
        return (snapshot["onUpdateUser"] as? Snapshot).flatMap { OnUpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUser")
      }
    }

    public struct OnUpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("password", type: .scalar(String.self)),
        GraphQLField("sentOrders", type: .object(SentOrder.selections)),
        GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var familyName: String {
        get {
          return snapshot["familyName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "familyName")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var password: String? {
        get {
          return snapshot["password"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "password")
        }
      }

      public var sentOrders: SentOrder? {
        get {
          return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
        }
      }

      public var receivedOrders: ReceivedOrder? {
        get {
          return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
        }
      }

      public struct SentOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }

      public struct ReceivedOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUser {\n  onDeleteUser {\n    __typename\n    id\n    firstName\n    familyName\n    email\n    password\n    sentOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n    receivedOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUser", type: .object(OnDeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUser: OnDeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUser": onDeleteUser.flatMap { $0.snapshot }])
    }

    public var onDeleteUser: OnDeleteUser? {
      get {
        return (snapshot["onDeleteUser"] as? Snapshot).flatMap { OnDeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUser")
      }
    }

    public struct OnDeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("password", type: .scalar(String.self)),
        GraphQLField("sentOrders", type: .object(SentOrder.selections)),
        GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var familyName: String {
        get {
          return snapshot["familyName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "familyName")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var password: String? {
        get {
          return snapshot["password"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "password")
        }
      }

      public var sentOrders: SentOrder? {
        get {
          return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
        }
      }

      public var receivedOrders: ReceivedOrder? {
        get {
          return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
        }
      }

      public struct SentOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }

      public struct ReceivedOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }
    }
  }
}

public final class OnCreateOrderSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateOrder {\n  onCreateOrder {\n    __typename\n    id\n    name\n    sentBy {\n      __typename\n      id\n      firstName\n      familyName\n      email\n      password\n      sentOrders {\n        __typename\n        nextToken\n      }\n      receivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    receivedBy {\n      __typename\n      id\n      firstName\n      familyName\n      email\n      password\n      sentOrders {\n        __typename\n        nextToken\n      }\n      receivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    sentFrom {\n      __typename\n      id\n      name\n      address\n      sentOrders {\n        __typename\n        nextToken\n      }\n      arrivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    sentTo {\n      __typename\n      id\n      name\n      address\n      sentOrders {\n        __typename\n        nextToken\n      }\n      arrivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    status\n    deadline\n    arrivalDate\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateOrder", type: .object(OnCreateOrder.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateOrder: OnCreateOrder? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateOrder": onCreateOrder.flatMap { $0.snapshot }])
    }

    public var onCreateOrder: OnCreateOrder? {
      get {
        return (snapshot["onCreateOrder"] as? Snapshot).flatMap { OnCreateOrder(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateOrder")
      }
    }

    public struct OnCreateOrder: GraphQLSelectionSet {
      public static let possibleTypes = ["Order"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("sentBy", type: .object(SentBy.selections)),
        GraphQLField("receivedBy", type: .object(ReceivedBy.selections)),
        GraphQLField("sentFrom", type: .object(SentFrom.selections)),
        GraphQLField("sentTo", type: .object(SentTo.selections)),
        GraphQLField("status", type: .scalar(OrderStatus.self)),
        GraphQLField("deadline", type: .scalar(String.self)),
        GraphQLField("arrivalDate", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, sentBy: SentBy? = nil, receivedBy: ReceivedBy? = nil, sentFrom: SentFrom? = nil, sentTo: SentTo? = nil, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
        self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "sentBy": sentBy.flatMap { $0.snapshot }, "receivedBy": receivedBy.flatMap { $0.snapshot }, "sentFrom": sentFrom.flatMap { $0.snapshot }, "sentTo": sentTo.flatMap { $0.snapshot }, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var sentBy: SentBy? {
        get {
          return (snapshot["sentBy"] as? Snapshot).flatMap { SentBy(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentBy")
        }
      }

      public var receivedBy: ReceivedBy? {
        get {
          return (snapshot["receivedBy"] as? Snapshot).flatMap { ReceivedBy(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "receivedBy")
        }
      }

      public var sentFrom: SentFrom? {
        get {
          return (snapshot["sentFrom"] as? Snapshot).flatMap { SentFrom(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentFrom")
        }
      }

      public var sentTo: SentTo? {
        get {
          return (snapshot["sentTo"] as? Snapshot).flatMap { SentTo(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentTo")
        }
      }

      public var status: OrderStatus? {
        get {
          return snapshot["status"] as? OrderStatus
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      public var deadline: String? {
        get {
          return snapshot["deadline"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deadline")
        }
      }

      public var arrivalDate: String? {
        get {
          return snapshot["arrivalDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrivalDate")
        }
      }

      public struct SentBy: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var familyName: String {
          get {
            return snapshot["familyName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "familyName")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var receivedOrders: ReceivedOrder? {
          get {
            return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ReceivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct ReceivedBy: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var familyName: String {
          get {
            return snapshot["familyName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "familyName")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var receivedOrders: ReceivedOrder? {
          get {
            return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ReceivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct SentFrom: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
          self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var address: String? {
          get {
            return snapshot["address"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "address")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var arrivedOrders: ArrivedOrder? {
          get {
            return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ArrivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct SentTo: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
          self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var address: String? {
          get {
            return snapshot["address"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "address")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var arrivedOrders: ArrivedOrder? {
          get {
            return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ArrivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateOrderSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateOrder {\n  onUpdateOrder {\n    __typename\n    id\n    name\n    sentBy {\n      __typename\n      id\n      firstName\n      familyName\n      email\n      password\n      sentOrders {\n        __typename\n        nextToken\n      }\n      receivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    receivedBy {\n      __typename\n      id\n      firstName\n      familyName\n      email\n      password\n      sentOrders {\n        __typename\n        nextToken\n      }\n      receivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    sentFrom {\n      __typename\n      id\n      name\n      address\n      sentOrders {\n        __typename\n        nextToken\n      }\n      arrivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    sentTo {\n      __typename\n      id\n      name\n      address\n      sentOrders {\n        __typename\n        nextToken\n      }\n      arrivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    status\n    deadline\n    arrivalDate\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateOrder", type: .object(OnUpdateOrder.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateOrder: OnUpdateOrder? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateOrder": onUpdateOrder.flatMap { $0.snapshot }])
    }

    public var onUpdateOrder: OnUpdateOrder? {
      get {
        return (snapshot["onUpdateOrder"] as? Snapshot).flatMap { OnUpdateOrder(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateOrder")
      }
    }

    public struct OnUpdateOrder: GraphQLSelectionSet {
      public static let possibleTypes = ["Order"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("sentBy", type: .object(SentBy.selections)),
        GraphQLField("receivedBy", type: .object(ReceivedBy.selections)),
        GraphQLField("sentFrom", type: .object(SentFrom.selections)),
        GraphQLField("sentTo", type: .object(SentTo.selections)),
        GraphQLField("status", type: .scalar(OrderStatus.self)),
        GraphQLField("deadline", type: .scalar(String.self)),
        GraphQLField("arrivalDate", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, sentBy: SentBy? = nil, receivedBy: ReceivedBy? = nil, sentFrom: SentFrom? = nil, sentTo: SentTo? = nil, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
        self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "sentBy": sentBy.flatMap { $0.snapshot }, "receivedBy": receivedBy.flatMap { $0.snapshot }, "sentFrom": sentFrom.flatMap { $0.snapshot }, "sentTo": sentTo.flatMap { $0.snapshot }, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var sentBy: SentBy? {
        get {
          return (snapshot["sentBy"] as? Snapshot).flatMap { SentBy(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentBy")
        }
      }

      public var receivedBy: ReceivedBy? {
        get {
          return (snapshot["receivedBy"] as? Snapshot).flatMap { ReceivedBy(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "receivedBy")
        }
      }

      public var sentFrom: SentFrom? {
        get {
          return (snapshot["sentFrom"] as? Snapshot).flatMap { SentFrom(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentFrom")
        }
      }

      public var sentTo: SentTo? {
        get {
          return (snapshot["sentTo"] as? Snapshot).flatMap { SentTo(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentTo")
        }
      }

      public var status: OrderStatus? {
        get {
          return snapshot["status"] as? OrderStatus
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      public var deadline: String? {
        get {
          return snapshot["deadline"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deadline")
        }
      }

      public var arrivalDate: String? {
        get {
          return snapshot["arrivalDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrivalDate")
        }
      }

      public struct SentBy: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var familyName: String {
          get {
            return snapshot["familyName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "familyName")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var receivedOrders: ReceivedOrder? {
          get {
            return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ReceivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct ReceivedBy: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var familyName: String {
          get {
            return snapshot["familyName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "familyName")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var receivedOrders: ReceivedOrder? {
          get {
            return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ReceivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct SentFrom: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
          self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var address: String? {
          get {
            return snapshot["address"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "address")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var arrivedOrders: ArrivedOrder? {
          get {
            return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ArrivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct SentTo: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
          self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var address: String? {
          get {
            return snapshot["address"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "address")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var arrivedOrders: ArrivedOrder? {
          get {
            return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ArrivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteOrderSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteOrder {\n  onDeleteOrder {\n    __typename\n    id\n    name\n    sentBy {\n      __typename\n      id\n      firstName\n      familyName\n      email\n      password\n      sentOrders {\n        __typename\n        nextToken\n      }\n      receivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    receivedBy {\n      __typename\n      id\n      firstName\n      familyName\n      email\n      password\n      sentOrders {\n        __typename\n        nextToken\n      }\n      receivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    sentFrom {\n      __typename\n      id\n      name\n      address\n      sentOrders {\n        __typename\n        nextToken\n      }\n      arrivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    sentTo {\n      __typename\n      id\n      name\n      address\n      sentOrders {\n        __typename\n        nextToken\n      }\n      arrivedOrders {\n        __typename\n        nextToken\n      }\n    }\n    status\n    deadline\n    arrivalDate\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteOrder", type: .object(OnDeleteOrder.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteOrder: OnDeleteOrder? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteOrder": onDeleteOrder.flatMap { $0.snapshot }])
    }

    public var onDeleteOrder: OnDeleteOrder? {
      get {
        return (snapshot["onDeleteOrder"] as? Snapshot).flatMap { OnDeleteOrder(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteOrder")
      }
    }

    public struct OnDeleteOrder: GraphQLSelectionSet {
      public static let possibleTypes = ["Order"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("sentBy", type: .object(SentBy.selections)),
        GraphQLField("receivedBy", type: .object(ReceivedBy.selections)),
        GraphQLField("sentFrom", type: .object(SentFrom.selections)),
        GraphQLField("sentTo", type: .object(SentTo.selections)),
        GraphQLField("status", type: .scalar(OrderStatus.self)),
        GraphQLField("deadline", type: .scalar(String.self)),
        GraphQLField("arrivalDate", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, sentBy: SentBy? = nil, receivedBy: ReceivedBy? = nil, sentFrom: SentFrom? = nil, sentTo: SentTo? = nil, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
        self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "sentBy": sentBy.flatMap { $0.snapshot }, "receivedBy": receivedBy.flatMap { $0.snapshot }, "sentFrom": sentFrom.flatMap { $0.snapshot }, "sentTo": sentTo.flatMap { $0.snapshot }, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var sentBy: SentBy? {
        get {
          return (snapshot["sentBy"] as? Snapshot).flatMap { SentBy(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentBy")
        }
      }

      public var receivedBy: ReceivedBy? {
        get {
          return (snapshot["receivedBy"] as? Snapshot).flatMap { ReceivedBy(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "receivedBy")
        }
      }

      public var sentFrom: SentFrom? {
        get {
          return (snapshot["sentFrom"] as? Snapshot).flatMap { SentFrom(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentFrom")
        }
      }

      public var sentTo: SentTo? {
        get {
          return (snapshot["sentTo"] as? Snapshot).flatMap { SentTo(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentTo")
        }
      }

      public var status: OrderStatus? {
        get {
          return snapshot["status"] as? OrderStatus
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      public var deadline: String? {
        get {
          return snapshot["deadline"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deadline")
        }
      }

      public var arrivalDate: String? {
        get {
          return snapshot["arrivalDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrivalDate")
        }
      }

      public struct SentBy: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var familyName: String {
          get {
            return snapshot["familyName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "familyName")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var receivedOrders: ReceivedOrder? {
          get {
            return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ReceivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct ReceivedBy: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("receivedOrders", type: .object(ReceivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, firstName: String, familyName: String, email: String, password: String? = nil, sentOrders: SentOrder? = nil, receivedOrders: ReceivedOrder? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "familyName": familyName, "email": email, "password": password, "sentOrders": sentOrders.flatMap { $0.snapshot }, "receivedOrders": receivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var familyName: String {
          get {
            return snapshot["familyName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "familyName")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var password: String? {
          get {
            return snapshot["password"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "password")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var receivedOrders: ReceivedOrder? {
          get {
            return (snapshot["receivedOrders"] as? Snapshot).flatMap { ReceivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "receivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ReceivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct SentFrom: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
          self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var address: String? {
          get {
            return snapshot["address"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "address")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var arrivedOrders: ArrivedOrder? {
          get {
            return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ArrivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }

      public struct SentTo: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("sentOrders", type: .object(SentOrder.selections)),
          GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
          self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var address: String? {
          get {
            return snapshot["address"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "address")
          }
        }

        public var sentOrders: SentOrder? {
          get {
            return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
          }
        }

        public var arrivedOrders: ArrivedOrder? {
          get {
            return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
          }
        }

        public struct SentOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }

        public struct ArrivedOrder: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelOrderConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelOrderConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class OnCreateLocationSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateLocation {\n  onCreateLocation {\n    __typename\n    id\n    name\n    address\n    sentOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n    arrivedOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateLocation", type: .object(OnCreateLocation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateLocation: OnCreateLocation? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateLocation": onCreateLocation.flatMap { $0.snapshot }])
    }

    public var onCreateLocation: OnCreateLocation? {
      get {
        return (snapshot["onCreateLocation"] as? Snapshot).flatMap { OnCreateLocation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateLocation")
      }
    }

    public struct OnCreateLocation: GraphQLSelectionSet {
      public static let possibleTypes = ["Location"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("address", type: .scalar(String.self)),
        GraphQLField("sentOrders", type: .object(SentOrder.selections)),
        GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
        self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var address: String? {
        get {
          return snapshot["address"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "address")
        }
      }

      public var sentOrders: SentOrder? {
        get {
          return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
        }
      }

      public var arrivedOrders: ArrivedOrder? {
        get {
          return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
        }
      }

      public struct SentOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }

      public struct ArrivedOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateLocationSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateLocation {\n  onUpdateLocation {\n    __typename\n    id\n    name\n    address\n    sentOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n    arrivedOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateLocation", type: .object(OnUpdateLocation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateLocation: OnUpdateLocation? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateLocation": onUpdateLocation.flatMap { $0.snapshot }])
    }

    public var onUpdateLocation: OnUpdateLocation? {
      get {
        return (snapshot["onUpdateLocation"] as? Snapshot).flatMap { OnUpdateLocation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateLocation")
      }
    }

    public struct OnUpdateLocation: GraphQLSelectionSet {
      public static let possibleTypes = ["Location"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("address", type: .scalar(String.self)),
        GraphQLField("sentOrders", type: .object(SentOrder.selections)),
        GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
        self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var address: String? {
        get {
          return snapshot["address"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "address")
        }
      }

      public var sentOrders: SentOrder? {
        get {
          return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
        }
      }

      public var arrivedOrders: ArrivedOrder? {
        get {
          return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
        }
      }

      public struct SentOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }

      public struct ArrivedOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteLocationSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteLocation {\n  onDeleteLocation {\n    __typename\n    id\n    name\n    address\n    sentOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n    arrivedOrders {\n      __typename\n      items {\n        __typename\n        id\n        name\n        status\n        deadline\n        arrivalDate\n      }\n      nextToken\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteLocation", type: .object(OnDeleteLocation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteLocation: OnDeleteLocation? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteLocation": onDeleteLocation.flatMap { $0.snapshot }])
    }

    public var onDeleteLocation: OnDeleteLocation? {
      get {
        return (snapshot["onDeleteLocation"] as? Snapshot).flatMap { OnDeleteLocation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteLocation")
      }
    }

    public struct OnDeleteLocation: GraphQLSelectionSet {
      public static let possibleTypes = ["Location"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("address", type: .scalar(String.self)),
        GraphQLField("sentOrders", type: .object(SentOrder.selections)),
        GraphQLField("arrivedOrders", type: .object(ArrivedOrder.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, address: String? = nil, sentOrders: SentOrder? = nil, arrivedOrders: ArrivedOrder? = nil) {
        self.init(snapshot: ["__typename": "Location", "id": id, "name": name, "address": address, "sentOrders": sentOrders.flatMap { $0.snapshot }, "arrivedOrders": arrivedOrders.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var address: String? {
        get {
          return snapshot["address"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "address")
        }
      }

      public var sentOrders: SentOrder? {
        get {
          return (snapshot["sentOrders"] as? Snapshot).flatMap { SentOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "sentOrders")
        }
      }

      public var arrivedOrders: ArrivedOrder? {
        get {
          return (snapshot["arrivedOrders"] as? Snapshot).flatMap { ArrivedOrder(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "arrivedOrders")
        }
      }

      public struct SentOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }

      public struct ArrivedOrder: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelOrderConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelOrderConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Order"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .scalar(OrderStatus.self)),
            GraphQLField("deadline", type: .scalar(String.self)),
            GraphQLField("arrivalDate", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, status: OrderStatus? = nil, deadline: String? = nil, arrivalDate: String? = nil) {
            self.init(snapshot: ["__typename": "Order", "id": id, "name": name, "status": status, "deadline": deadline, "arrivalDate": arrivalDate])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var status: OrderStatus? {
            get {
              return snapshot["status"] as? OrderStatus
            }
            set {
              snapshot.updateValue(newValue, forKey: "status")
            }
          }

          public var deadline: String? {
            get {
              return snapshot["deadline"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deadline")
            }
          }

          public var arrivalDate: String? {
            get {
              return snapshot["arrivalDate"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "arrivalDate")
            }
          }
        }
      }
    }
  }
}