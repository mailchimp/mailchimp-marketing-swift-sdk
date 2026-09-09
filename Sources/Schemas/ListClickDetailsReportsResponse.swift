import Foundation

/// A list of URLs and unique IDs included in HTML and plain-text versions of a campaign.
public struct ListClickDetailsReportsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListClickDetailsReportsResponseLinksItem]?
    /// The campaign id.
    public let campaignId: String?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// An array of objects, each representing a specific URL contained in the campaign.
    public let urlsClicked: [ClickDetailReport]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListClickDetailsReportsResponseLinksItem]? = nil,
        campaignId: String? = nil,
        totalItems: Int? = nil,
        urlsClicked: [ClickDetailReport]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.campaignId = campaignId
        self.totalItems = totalItems
        self.urlsClicked = urlsClicked
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListClickDetailsReportsResponseLinksItem].self, forKey: .links)
        self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.urlsClicked = try container.decodeIfPresent([ClickDetailReport].self, forKey: .urlsClicked)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
        try container.encodeIfPresent(self.urlsClicked, forKey: .urlsClicked)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case campaignId = "campaign_id"
        case totalItems = "total_items"
        case urlsClicked = "urls_clicked"
    }
}