import Foundation

public struct CampaignContentVariateContentsItem: Codable, Hashable, Sendable {
    /// Label used to identify the content option.
    public let contentLabel: String?
    /// The raw HTML for the campaign.
    public let html: String?
    /// The plain-text portion of the campaign. If left unspecified, we'll generate this automatically.
    public let plainText: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        contentLabel: String? = nil,
        html: String? = nil,
        plainText: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.contentLabel = contentLabel
        self.html = html
        self.plainText = plainText
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.contentLabel = try container.decodeIfPresent(String.self, forKey: .contentLabel)
        self.html = try container.decodeIfPresent(String.self, forKey: .html)
        self.plainText = try container.decodeIfPresent(String.self, forKey: .plainText)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.contentLabel, forKey: .contentLabel)
        try container.encodeIfPresent(self.html, forKey: .html)
        try container.encodeIfPresent(self.plainText, forKey: .plainText)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case contentLabel = "content_label"
        case html
        case plainText = "plain_text"
    }
}