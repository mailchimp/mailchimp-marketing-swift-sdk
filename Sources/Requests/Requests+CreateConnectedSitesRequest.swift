import Foundation

extension Requests {
    public struct CreateConnectedSitesRequest: Codable, Hashable, Sendable {
        /// The connected site domain.
        public let domain: String
        /// The unique identifier for the site.
        public let foreignId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            domain: String,
            foreignId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.domain = domain
            self.foreignId = foreignId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.domain = try container.decode(String.self, forKey: .domain)
            self.foreignId = try container.decode(String.self, forKey: .foreignId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.domain, forKey: .domain)
            try container.encode(self.foreignId, forKey: .foreignId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case domain
            case foreignId = "foreign_id"
        }
    }
}