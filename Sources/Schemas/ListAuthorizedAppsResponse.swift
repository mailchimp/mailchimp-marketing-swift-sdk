import Foundation

/// An array of objects, each representing an authorized application.
public struct ListAuthorizedAppsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListAuthorizedAppsResponseLinksItem]?
    /// An array of objects, each representing an authorized application.
    public let apps: [ListAuthorizedAppsResponseAppsItem]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListAuthorizedAppsResponseLinksItem]? = nil,
        apps: [ListAuthorizedAppsResponseAppsItem]? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.apps = apps
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListAuthorizedAppsResponseLinksItem].self, forKey: .links)
        self.apps = try container.decodeIfPresent([ListAuthorizedAppsResponseAppsItem].self, forKey: .apps)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.apps, forKey: .apps)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case apps
        case totalItems = "total_items"
    }
}