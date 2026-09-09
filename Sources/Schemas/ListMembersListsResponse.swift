import Foundation

/// Manage members of a specific Mailchimp list, including currently subscribed, unsubscribed, and bounced members.
public struct ListMembersListsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListMembersListsResponseLinksItem]?
    /// The list id.
    public let listId: String?
    /// An array of objects, each representing a specific list member.
    public let members: [ListMembers]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListMembersListsResponseLinksItem]? = nil,
        listId: String? = nil,
        members: [ListMembers]? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.listId = listId
        self.members = members
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListMembersListsResponseLinksItem].self, forKey: .links)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.members = try container.decodeIfPresent([ListMembers].self, forKey: .members)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.members, forKey: .members)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case listId = "list_id"
        case members
        case totalItems = "total_items"
    }
}