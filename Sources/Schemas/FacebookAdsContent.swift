import Foundation

public struct FacebookAdsContent: Codable, Hashable, Sendable {
    public let attachments: [FacebookAdsContentAttachmentsItem]?
    public let callToAction: String?
    public let description: String?
    public let imageUrl: String?
    public let linkUrl: String?
    public let message: String?
    public let title: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        attachments: [FacebookAdsContentAttachmentsItem]? = nil,
        callToAction: String? = nil,
        description: String? = nil,
        imageUrl: String? = nil,
        linkUrl: String? = nil,
        message: String? = nil,
        title: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.attachments = attachments
        self.callToAction = callToAction
        self.description = description
        self.imageUrl = imageUrl
        self.linkUrl = linkUrl
        self.message = message
        self.title = title
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.attachments = try container.decodeIfPresent([FacebookAdsContentAttachmentsItem].self, forKey: .attachments)
        self.callToAction = try container.decodeIfPresent(String.self, forKey: .callToAction)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.imageUrl = try container.decodeIfPresent(String.self, forKey: .imageUrl)
        self.linkUrl = try container.decodeIfPresent(String.self, forKey: .linkUrl)
        self.message = try container.decodeIfPresent(String.self, forKey: .message)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.attachments, forKey: .attachments)
        try container.encodeIfPresent(self.callToAction, forKey: .callToAction)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.imageUrl, forKey: .imageUrl)
        try container.encodeIfPresent(self.linkUrl, forKey: .linkUrl)
        try container.encodeIfPresent(self.message, forKey: .message)
        try container.encodeIfPresent(self.title, forKey: .title)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case attachments
        case callToAction = "call_to_action"
        case description
        case imageUrl = "image_url"
        case linkUrl = "link_url"
        case message
        case title
    }
}