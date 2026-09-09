import Foundation

/// The top email clients based on user-agent strings.
public struct ListClientsListsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListClientsListsResponseLinksItem]?
    /// An array of top email clients.
    public let clients: [ListClientsListsResponseClientsItem]?
    /// The list id.
    public let listId: String?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListClientsListsResponseLinksItem]? = nil,
        clients: [ListClientsListsResponseClientsItem]? = nil,
        listId: String? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.clients = clients
        self.listId = listId
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListClientsListsResponseLinksItem].self, forKey: .links)
        self.clients = try container.decodeIfPresent([ListClientsListsResponseClientsItem].self, forKey: .clients)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.clients, forKey: .clients)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case clients
        case listId = "list_id"
        case totalItems = "total_items"
    }
}