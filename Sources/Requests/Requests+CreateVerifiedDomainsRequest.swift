import Foundation

extension Requests {
    public struct CreateVerifiedDomainsRequest: Codable, Hashable, Sendable {
        /// The e-mail address at the domain you want to verify. This will receive a two-factor challenge to be used in the verify action.
        public let verificationEmail: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            verificationEmail: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.verificationEmail = verificationEmail
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.verificationEmail = try container.decode(String.self, forKey: .verificationEmail)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.verificationEmail, forKey: .verificationEmail)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case verificationEmail = "verification_email"
        }
    }
}