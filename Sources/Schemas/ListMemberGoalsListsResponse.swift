import Foundation

/// The last 50 Goal events for a member on a specific list.
public struct ListMemberGoalsListsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListMemberGoalsListsResponseLinksItem]?
    /// The MD5 hash of the lowercase version of the list member's email address.
    public let emailId: String?
    /// The last 50 Goal events triggered by a member.
    public let goals: [ListMemberGoalsListsResponseGoalsItem]?
    /// The list id.
    public let listId: String?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListMemberGoalsListsResponseLinksItem]? = nil,
        emailId: String? = nil,
        goals: [ListMemberGoalsListsResponseGoalsItem]? = nil,
        listId: String? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.emailId = emailId
        self.goals = goals
        self.listId = listId
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListMemberGoalsListsResponseLinksItem].self, forKey: .links)
        self.emailId = try container.decodeIfPresent(String.self, forKey: .emailId)
        self.goals = try container.decodeIfPresent([ListMemberGoalsListsResponseGoalsItem].self, forKey: .goals)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.emailId, forKey: .emailId)
        try container.encodeIfPresent(self.goals, forKey: .goals)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case emailId = "email_id"
        case goals
        case listId = "list_id"
        case totalItems = "total_items"
    }
}