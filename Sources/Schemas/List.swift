import Foundation

/// Information about a specific segment.
public struct List: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListLinksItem]?
    /// The date and time the segment was created in ISO 8601 format.
    public let createdAt: Date?
    /// The unique id for the segment.
    public let id: Int?
    /// The list id.
    public let listId: String?
    /// The number of active subscribers currently included in the segment.
    public let memberCount: Int?
    /// The name of the segment.
    public let name: String?
    /// The conditions of the segment. Static segments (tags) and fuzzy segments don't have conditions.
    public let options: ListOptions?
    /// The type of segment. Static segments are now known as tags. Learn more about [tags](https://mailchimp.com/help/getting-started-tags?utm_source=mc-api&utm_medium=docs&utm_campaign=apidocs).
    public let type: ListType?
    /// The date and time the segment was last updated in ISO 8601 format.
    public let updatedAt: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListLinksItem]? = nil,
        createdAt: Date? = nil,
        id: Int? = nil,
        listId: String? = nil,
        memberCount: Int? = nil,
        name: String? = nil,
        options: ListOptions? = nil,
        type: ListType? = nil,
        updatedAt: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.createdAt = createdAt
        self.id = id
        self.listId = listId
        self.memberCount = memberCount
        self.name = name
        self.options = options
        self.type = type
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListLinksItem].self, forKey: .links)
        self.createdAt = try container.decodeIfPresent(Date.self, forKey: .createdAt)
        self.id = try container.decodeIfPresent(Int.self, forKey: .id)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.memberCount = try container.decodeIfPresent(Int.self, forKey: .memberCount)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.options = try container.decodeIfPresent(ListOptions.self, forKey: .options)
        self.type = try container.decodeIfPresent(ListType.self, forKey: .type)
        self.updatedAt = try container.decodeIfPresent(Date.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.memberCount, forKey: .memberCount)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.options, forKey: .options)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case createdAt = "created_at"
        case id
        case listId = "list_id"
        case memberCount = "member_count"
        case name
        case options
        case type
        case updatedAt = "updated_at"
    }
}