import Foundation

/// The [merge fields](https://mailchimp.com/developer/marketing/docs/merge-fields/) for an audience.
public struct ListMergeFieldsListsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListMergeFieldsListsResponseLinksItem]?
    /// The list id.
    public let listId: String?
    /// The maximum number of merge fields this audience can hold. The limit is determined by the account's plan. Subtract `total_items` from this value to derive the remaining capacity.
    public let mergeFieldLimit: Int?
    /// An array of objects, each representing a merge field resource.
    public let mergeFields: [MergeField]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListMergeFieldsListsResponseLinksItem]? = nil,
        listId: String? = nil,
        mergeFieldLimit: Int? = nil,
        mergeFields: [MergeField]? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.listId = listId
        self.mergeFieldLimit = mergeFieldLimit
        self.mergeFields = mergeFields
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListMergeFieldsListsResponseLinksItem].self, forKey: .links)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.mergeFieldLimit = try container.decodeIfPresent(Int.self, forKey: .mergeFieldLimit)
        self.mergeFields = try container.decodeIfPresent([MergeField].self, forKey: .mergeFields)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.mergeFieldLimit, forKey: .mergeFieldLimit)
        try container.encodeIfPresent(self.mergeFields, forKey: .mergeFields)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case listId = "list_id"
        case mergeFieldLimit = "merge_field_limit"
        case mergeFields = "merge_fields"
        case totalItems = "total_items"
    }
}