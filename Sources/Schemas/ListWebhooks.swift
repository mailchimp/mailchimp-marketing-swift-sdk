import Foundation

/// Webhook configured for the given list.
public struct ListWebhooks: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListWebhooksLinksItem]?
    /// The events that can trigger the webhook and whether they are enabled.
    public let events: ListWebhooksEvents?
    /// An string that uniquely identifies this webhook.
    public let id: String?
    /// The unique id for the list.
    public let listId: String?
    /// Whether outbound deliveries are HMAC-signed.
    public let signingEnabled: Bool?
    /// The HMAC signing secret. Returned exactly once at creation. This should be stored securely; if lost, delete and recreate the webhook to obtain a new secret.
    public let signingSecret: String?
    /// The possible sources of any events that can trigger the webhook and whether they are enabled.
    public let sources: ListWebhooksSources?
    /// A valid URL for the Webhook.
    public let url: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListWebhooksLinksItem]? = nil,
        events: ListWebhooksEvents? = nil,
        id: String? = nil,
        listId: String? = nil,
        signingEnabled: Bool? = nil,
        signingSecret: String? = nil,
        sources: ListWebhooksSources? = nil,
        url: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.events = events
        self.id = id
        self.listId = listId
        self.signingEnabled = signingEnabled
        self.signingSecret = signingSecret
        self.sources = sources
        self.url = url
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListWebhooksLinksItem].self, forKey: .links)
        self.events = try container.decodeIfPresent(ListWebhooksEvents.self, forKey: .events)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.signingEnabled = try container.decodeIfPresent(Bool.self, forKey: .signingEnabled)
        self.signingSecret = try container.decodeIfPresent(String.self, forKey: .signingSecret)
        self.sources = try container.decodeIfPresent(ListWebhooksSources.self, forKey: .sources)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.events, forKey: .events)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.signingEnabled, forKey: .signingEnabled)
        try container.encodeIfPresent(self.signingSecret, forKey: .signingSecret)
        try container.encodeIfPresent(self.sources, forKey: .sources)
        try container.encodeIfPresent(self.url, forKey: .url)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case events
        case id
        case listId = "list_id"
        case signingEnabled = "signing_enabled"
        case signingSecret = "signing_secret"
        case sources
        case url
    }
}