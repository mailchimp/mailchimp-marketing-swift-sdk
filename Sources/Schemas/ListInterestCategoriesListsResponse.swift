import Foundation

/// Information about this list's interest categories.
public struct ListInterestCategoriesListsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListInterestCategoriesListsResponseLinksItem]?
    /// This array contains individual interest categories.
    public let categories: [InterestCategory]?
    /// The ID for the list that this category belongs to.
    public let listId: String?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListInterestCategoriesListsResponseLinksItem]? = nil,
        categories: [InterestCategory]? = nil,
        listId: String? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.categories = categories
        self.listId = listId
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListInterestCategoriesListsResponseLinksItem].self, forKey: .links)
        self.categories = try container.decodeIfPresent([InterestCategory].self, forKey: .categories)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.categories, forKey: .categories)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case categories
        case listId = "list_id"
        case totalItems = "total_items"
    }
}