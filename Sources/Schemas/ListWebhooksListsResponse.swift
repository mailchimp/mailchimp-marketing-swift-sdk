import Foundation

/// Manage webhooks for a specific list.
public struct ListWebhooksListsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListWebhooksListsResponseLinksItem]?
    /// The list id.
    public let listId: String?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// An array of objects, each representing a specific list member.
    public let webhooks: [ListWebhooks]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListWebhooksListsResponseLinksItem]? = nil,
        listId: String? = nil,
        totalItems: Int? = nil,
        webhooks: [ListWebhooks]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.listId = listId
        self.totalItems = totalItems
        self.webhooks = webhooks
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListWebhooksListsResponseLinksItem].self, forKey: .links)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.webhooks = try container.decodeIfPresent([ListWebhooks].self, forKey: .webhooks)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
        try container.encodeIfPresent(self.webhooks, forKey: .webhooks)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case listId = "list_id"
        case totalItems = "total_items"
        case webhooks
    }
}