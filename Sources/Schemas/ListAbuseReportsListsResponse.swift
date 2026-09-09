import Foundation

/// A collection of abuse complaints for a specific list. An abuse complaint occurs when your recipient clicks to 'report spam' in their email program.
public struct ListAbuseReportsListsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListAbuseReportsListsResponseLinksItem]?
    /// An array of objects, each representing an abuse report resource.
    public let abuseReports: [ListsAbuseReports]?
    /// The list id for the abuse report.
    public let listId: String?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListAbuseReportsListsResponseLinksItem]? = nil,
        abuseReports: [ListsAbuseReports]? = nil,
        listId: String? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.abuseReports = abuseReports
        self.listId = listId
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListAbuseReportsListsResponseLinksItem].self, forKey: .links)
        self.abuseReports = try container.decodeIfPresent([ListsAbuseReports].self, forKey: .abuseReports)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.abuseReports, forKey: .abuseReports)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case abuseReports = "abuse_reports"
        case listId = "list_id"
        case totalItems = "total_items"
    }
}