import Foundation

extension Requests {
    public struct CreateMemberEventListsRequest: Codable, Hashable, Sendable {
        /// Events created with the is_syncing value set to `true` will not trigger automations.
        public let isSyncing: Bool?
        /// The name for this type of event ('purchased', 'visited', etc). Must be 2-30 characters in length
        public let name: String
        /// The date and time the event occurred in ISO 8601 format.
        public let occurredAt: Date?
        /// An optional list of properties
        public let properties: [String: String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            isSyncing: Bool? = nil,
            name: String,
            occurredAt: Date? = nil,
            properties: [String: String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.isSyncing = isSyncing
            self.name = name
            self.occurredAt = occurredAt
            self.properties = properties
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.isSyncing = try container.decodeIfPresent(Bool.self, forKey: .isSyncing)
            self.name = try container.decode(String.self, forKey: .name)
            self.occurredAt = try container.decodeIfPresent(Date.self, forKey: .occurredAt)
            self.properties = try container.decodeIfPresent([String: String].self, forKey: .properties)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.isSyncing, forKey: .isSyncing)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.occurredAt, forKey: .occurredAt)
            try container.encodeIfPresent(self.properties, forKey: .properties)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case isSyncing = "is_syncing"
            case name
            case occurredAt = "occurred_at"
            case properties
        }
    }
}