import Foundation

/// A webhook configured for batch status updates.
public struct BatchWebhook: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [[BatchWebhookLinksItemItem]]?
    /// Whether the webhook receives requests or not.
    public let enabled: Bool?
    /// A string that uniquely identifies this Batch Webhook.
    public let id: String?
    /// Whether outbound deliveries are HMAC-signed.
    public let signingEnabled: Bool?
    /// A valid URL for the Webhook.
    public let url: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [[BatchWebhookLinksItemItem]]? = nil,
        enabled: Bool? = nil,
        id: String? = nil,
        signingEnabled: Bool? = nil,
        url: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.enabled = enabled
        self.id = id
        self.signingEnabled = signingEnabled
        self.url = url
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([[BatchWebhookLinksItemItem]].self, forKey: .links)
        self.enabled = try container.decodeIfPresent(Bool.self, forKey: .enabled)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.signingEnabled = try container.decodeIfPresent(Bool.self, forKey: .signingEnabled)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.enabled, forKey: .enabled)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.signingEnabled, forKey: .signingEnabled)
        try container.encodeIfPresent(self.url, forKey: .url)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case enabled
        case id
        case signingEnabled = "signing_enabled"
        case url
    }
}