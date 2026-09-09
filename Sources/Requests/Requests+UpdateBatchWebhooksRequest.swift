import Foundation

extension Requests {
    public struct UpdateBatchWebhooksRequest: Codable, Hashable, Sendable {
        /// Whether the webhook receives requests or not.
        public let enabled: Bool?
        /// A valid URL for the Webhook.
        public let url: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            enabled: Bool? = nil,
            url: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.enabled = enabled
            self.url = url
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.enabled = try container.decodeIfPresent(Bool.self, forKey: .enabled)
            self.url = try container.decodeIfPresent(String.self, forKey: .url)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.enabled, forKey: .enabled)
            try container.encodeIfPresent(self.url, forKey: .url)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case enabled
            case url
        }
    }
}