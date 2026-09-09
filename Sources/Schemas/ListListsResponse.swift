import Foundation

/// A collection of subscriber lists for this account.
public struct ListListsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListListsResponseLinksItem]?
    /// Do particular authorization constraints around this collection limit creation of new instances?
    public let constraints: ListListsResponseConstraints?
    /// An array of objects, each representing a list.
    public let lists: [SubscriberList]
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListListsResponseLinksItem]? = nil,
        constraints: ListListsResponseConstraints? = nil,
        lists: [SubscriberList],
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.constraints = constraints
        self.lists = lists
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListListsResponseLinksItem].self, forKey: .links)
        self.constraints = try container.decodeIfPresent(ListListsResponseConstraints.self, forKey: .constraints)
        self.lists = try container.decode([SubscriberList].self, forKey: .lists)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.constraints, forKey: .constraints)
        try container.encode(self.lists, forKey: .lists)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case constraints
        case lists
        case totalItems = "total_items"
    }
}