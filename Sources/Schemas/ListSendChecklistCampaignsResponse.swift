import Foundation

/// The send checklist for the campaign.
public struct ListSendChecklistCampaignsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListSendChecklistCampaignsResponseLinksItem]?
    /// Whether the campaign is ready to send.
    public let isReady: Bool?
    /// A list of feedback items to review before sending your campaign.
    public let items: [ListSendChecklistCampaignsResponseItemsItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListSendChecklistCampaignsResponseLinksItem]? = nil,
        isReady: Bool? = nil,
        items: [ListSendChecklistCampaignsResponseItemsItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.isReady = isReady
        self.items = items
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListSendChecklistCampaignsResponseLinksItem].self, forKey: .links)
        self.isReady = try container.decodeIfPresent(Bool.self, forKey: .isReady)
        self.items = try container.decodeIfPresent([ListSendChecklistCampaignsResponseItemsItem].self, forKey: .items)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.isReady, forKey: .isReady)
        try container.encodeIfPresent(self.items, forKey: .items)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case isReady = "is_ready"
        case items
    }
}