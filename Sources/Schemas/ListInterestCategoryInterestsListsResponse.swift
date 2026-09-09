import Foundation

/// A list of this category's interests
public struct ListInterestCategoryInterestsListsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListInterestCategoryInterestsListsResponseLinksItem]?
    /// The id for the interest category.
    public let categoryId: String?
    /// An array of this category's interests
    public let interests: [Interest]?
    /// The unique list id that the interests belong to.
    public let listId: String?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListInterestCategoryInterestsListsResponseLinksItem]? = nil,
        categoryId: String? = nil,
        interests: [Interest]? = nil,
        listId: String? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.categoryId = categoryId
        self.interests = interests
        self.listId = listId
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListInterestCategoryInterestsListsResponseLinksItem].self, forKey: .links)
        self.categoryId = try container.decodeIfPresent(String.self, forKey: .categoryId)
        self.interests = try container.decodeIfPresent([Interest].self, forKey: .interests)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.categoryId, forKey: .categoryId)
        try container.encodeIfPresent(self.interests, forKey: .interests)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case categoryId = "category_id"
        case interests
        case listId = "list_id"
        case totalItems = "total_items"
    }
}