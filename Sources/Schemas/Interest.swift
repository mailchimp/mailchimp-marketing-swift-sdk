import Foundation

/// Assign subscribers to interests to group them together. Interests are referred to as 'group names' in the Mailchimp application.
public struct Interest: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [InterestLinksItem]?
    /// The id for the interest category.
    public let categoryId: String?
    /// The display order for interests.
    public let displayOrder: Int?
    /// The ID for the interest.
    public let id: String?
    /// The ID for the list that this interest belongs to.
    public let listId: String?
    /// The name of the interest. This can be shown publicly on a subscription form.
    public let name: String?
    /// The number of subscribers associated with this interest.
    public let subscriberCount: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [InterestLinksItem]? = nil,
        categoryId: String? = nil,
        displayOrder: Int? = nil,
        id: String? = nil,
        listId: String? = nil,
        name: String? = nil,
        subscriberCount: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.categoryId = categoryId
        self.displayOrder = displayOrder
        self.id = id
        self.listId = listId
        self.name = name
        self.subscriberCount = subscriberCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([InterestLinksItem].self, forKey: .links)
        self.categoryId = try container.decodeIfPresent(String.self, forKey: .categoryId)
        self.displayOrder = try container.decodeIfPresent(Int.self, forKey: .displayOrder)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.subscriberCount = try container.decodeIfPresent(String.self, forKey: .subscriberCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.categoryId, forKey: .categoryId)
        try container.encodeIfPresent(self.displayOrder, forKey: .displayOrder)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.subscriberCount, forKey: .subscriberCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case categoryId = "category_id"
        case displayOrder = "display_order"
        case id
        case listId = "list_id"
        case name
        case subscriberCount = "subscriber_count"
    }
}