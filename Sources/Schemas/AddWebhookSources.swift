import Foundation

/// The possible sources of any events that can trigger the webhook and whether they are enabled.
public struct AddWebhookSources: Codable, Hashable, Sendable {
    /// Whether the webhook is triggered by admin-initiated actions in the web interface.
    public let admin: Bool?
    /// Whether the webhook is triggered by actions initiated via the API.
    public let api: Bool?
    /// Whether the webhook is triggered by subscriber-initiated actions.
    public let user: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        admin: Bool? = nil,
        api: Bool? = nil,
        user: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.admin = admin
        self.api = api
        self.user = user
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.admin = try container.decodeIfPresent(Bool.self, forKey: .admin)
        self.api = try container.decodeIfPresent(Bool.self, forKey: .api)
        self.user = try container.decodeIfPresent(Bool.self, forKey: .user)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.admin, forKey: .admin)
        try container.encodeIfPresent(self.api, forKey: .api)
        try container.encodeIfPresent(self.user, forKey: .user)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case admin
        case api
        case user
    }
}