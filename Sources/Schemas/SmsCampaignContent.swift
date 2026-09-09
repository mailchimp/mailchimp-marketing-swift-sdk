import Foundation

/// The content of an SMS campaign.
public struct SmsCampaignContent: Codable, Hashable, Sendable {
    /// The SMS message body.
    public let messageBody: String?
    /// The estimated number of message segments this content will use.
    public let estimatedSegments: Int?
    /// The merge fields used in the message body.
    public let mergeFields: [String]?
    /// Attached images or files.
    public let media: [SmsCampaignContentMediaItem]?
    /// The source that created or imported this content.
    public let source: SmsCampaignContentSource?
    /// Additional content properties.
    public let properties: SmsCampaignContentProperties?
    /// A list of link types and descriptions for the API schema documents.
    public let links: [SmsCampaignContentLinksItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        messageBody: String? = nil,
        estimatedSegments: Int? = nil,
        mergeFields: [String]? = nil,
        media: [SmsCampaignContentMediaItem]? = nil,
        source: SmsCampaignContentSource? = nil,
        properties: SmsCampaignContentProperties? = nil,
        links: [SmsCampaignContentLinksItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.messageBody = messageBody
        self.estimatedSegments = estimatedSegments
        self.mergeFields = mergeFields
        self.media = media
        self.source = source
        self.properties = properties
        self.links = links
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.messageBody = try container.decodeIfPresent(String.self, forKey: .messageBody)
        self.estimatedSegments = try container.decodeIfPresent(Int.self, forKey: .estimatedSegments)
        self.mergeFields = try container.decodeIfPresent([String].self, forKey: .mergeFields)
        self.media = try container.decodeIfPresent([SmsCampaignContentMediaItem].self, forKey: .media)
        self.source = try container.decodeIfPresent(SmsCampaignContentSource.self, forKey: .source)
        self.properties = try container.decodeIfPresent(SmsCampaignContentProperties.self, forKey: .properties)
        self.links = try container.decodeIfPresent([SmsCampaignContentLinksItem].self, forKey: .links)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.messageBody, forKey: .messageBody)
        try container.encodeIfPresent(self.estimatedSegments, forKey: .estimatedSegments)
        try container.encodeIfPresent(self.mergeFields, forKey: .mergeFields)
        try container.encodeIfPresent(self.media, forKey: .media)
        try container.encodeIfPresent(self.source, forKey: .source)
        try container.encodeIfPresent(self.properties, forKey: .properties)
        try container.encodeIfPresent(self.links, forKey: .links)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case messageBody = "message_body"
        case estimatedSegments = "estimated_segments"
        case mergeFields = "merge_fields"
        case media
        case source
        case properties
        case links = "_links"
    }
}