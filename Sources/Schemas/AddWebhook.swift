import Foundation

/// Configure a webhook for the given list.
public struct AddWebhook: Codable, Hashable, Sendable {
    /// The events that can trigger the webhook and whether they are enabled.
    public let events: AddWebhookEvents?
    /// The possible sources of any events that can trigger the webhook and whether they are enabled.
    public let sources: AddWebhookSources?
    /// A valid URL for the Webhook.
    public let url: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        events: AddWebhookEvents? = nil,
        sources: AddWebhookSources? = nil,
        url: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.events = events
        self.sources = sources
        self.url = url
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.events = try container.decodeIfPresent(AddWebhookEvents.self, forKey: .events)
        self.sources = try container.decodeIfPresent(AddWebhookSources.self, forKey: .sources)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.events, forKey: .events)
        try container.encodeIfPresent(self.sources, forKey: .sources)
        try container.encodeIfPresent(self.url, forKey: .url)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case events
        case sources
        case url
    }
}