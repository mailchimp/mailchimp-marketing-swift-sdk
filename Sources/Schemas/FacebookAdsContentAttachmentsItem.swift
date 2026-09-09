import Foundation

public struct FacebookAdsContentAttachmentsItem: Codable, Hashable, Sendable {
    public let callToAction: String?
    public let description: String?
    public let imageUrl: String?
    public let linkUrl: String?
    public let name: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        callToAction: String? = nil,
        description: String? = nil,
        imageUrl: String? = nil,
        linkUrl: String? = nil,
        name: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.callToAction = callToAction
        self.description = description
        self.imageUrl = imageUrl
        self.linkUrl = linkUrl
        self.name = name
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.callToAction = try container.decodeIfPresent(String.self, forKey: .callToAction)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.imageUrl = try container.decodeIfPresent(String.self, forKey: .imageUrl)
        self.linkUrl = try container.decodeIfPresent(String.self, forKey: .linkUrl)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.callToAction, forKey: .callToAction)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.imageUrl, forKey: .imageUrl)
        try container.encodeIfPresent(self.linkUrl, forKey: .linkUrl)
        try container.encodeIfPresent(self.name, forKey: .name)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case callToAction = "call_to_action"
        case description
        case imageUrl = "image_url"
        case linkUrl = "link_url"
        case name
    }
}