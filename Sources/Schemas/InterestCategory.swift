import Foundation

/// Interest categories organize interests, which are used to group subscribers based on their preferences. These correspond to Group Titles the application.
public struct InterestCategory: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [InterestCategoryLinksItem]?
    /// The order that the categories are displayed in the list. Lower numbers display first.
    public let displayOrder: Int?
    /// The id for the interest category.
    public let id: String?
    /// The unique list id for the category.
    public let listId: String?
    /// The text description of this category. This field appears on signup forms and is often phrased as a question.
    public let title: String?
    /// Determines how this category’s interests appear on signup forms.
    public let type: InterestCategoryType?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [InterestCategoryLinksItem]? = nil,
        displayOrder: Int? = nil,
        id: String? = nil,
        listId: String? = nil,
        title: String? = nil,
        type: InterestCategoryType? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.displayOrder = displayOrder
        self.id = id
        self.listId = listId
        self.title = title
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([InterestCategoryLinksItem].self, forKey: .links)
        self.displayOrder = try container.decodeIfPresent(Int.self, forKey: .displayOrder)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.type = try container.decodeIfPresent(InterestCategoryType.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.displayOrder, forKey: .displayOrder)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.title, forKey: .title)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case displayOrder = "display_order"
        case id
        case listId = "list_id"
        case title
        case type
    }
}