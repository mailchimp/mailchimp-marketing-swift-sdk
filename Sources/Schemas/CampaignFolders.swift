import Foundation

/// A list of campaign folders
public struct CampaignFolders: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [CampaignFoldersLinksItem]?
    /// An array of objects representing campaign folders.
    public let folders: [CampaignFoldersFoldersItem]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [CampaignFoldersLinksItem]? = nil,
        folders: [CampaignFoldersFoldersItem]? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.folders = folders
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([CampaignFoldersLinksItem].self, forKey: .links)
        self.folders = try container.decodeIfPresent([CampaignFoldersFoldersItem].self, forKey: .folders)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.folders, forKey: .folders)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case folders
        case totalItems = "total_items"
    }
}