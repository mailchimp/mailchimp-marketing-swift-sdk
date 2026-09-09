import Foundation

/// The HTML and plain-text content for a campaign.
public struct CampaignContent: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [CampaignContentLinksItem]?
    /// The Archive HTML for the campaign.
    public let archiveHtml: String?
    /// The raw HTML for the campaign.
    public let html: String?
    /// The plain-text portion of the campaign. If left unspecified, we'll generate this automatically.
    public let plainText: String?
    /// Content options for multivariate campaigns.
    public let variateContents: [CampaignContentVariateContentsItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [CampaignContentLinksItem]? = nil,
        archiveHtml: String? = nil,
        html: String? = nil,
        plainText: String? = nil,
        variateContents: [CampaignContentVariateContentsItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.archiveHtml = archiveHtml
        self.html = html
        self.plainText = plainText
        self.variateContents = variateContents
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([CampaignContentLinksItem].self, forKey: .links)
        self.archiveHtml = try container.decodeIfPresent(String.self, forKey: .archiveHtml)
        self.html = try container.decodeIfPresent(String.self, forKey: .html)
        self.plainText = try container.decodeIfPresent(String.self, forKey: .plainText)
        self.variateContents = try container.decodeIfPresent([CampaignContentVariateContentsItem].self, forKey: .variateContents)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.archiveHtml, forKey: .archiveHtml)
        try container.encodeIfPresent(self.html, forKey: .html)
        try container.encodeIfPresent(self.plainText, forKey: .plainText)
        try container.encodeIfPresent(self.variateContents, forKey: .variateContents)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case archiveHtml = "archive_html"
        case html
        case plainText = "plain_text"
        case variateContents = "variate_contents"
    }
}