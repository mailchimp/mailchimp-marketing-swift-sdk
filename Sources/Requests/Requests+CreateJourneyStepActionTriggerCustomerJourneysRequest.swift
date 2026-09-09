import Foundation

extension Requests {
    public struct CreateJourneyStepActionTriggerCustomerJourneysRequest: Codable, Hashable, Sendable {
        /// The list member's email address.
        public let emailAddress: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            emailAddress: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.emailAddress = emailAddress
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.emailAddress = try container.decode(String.self, forKey: .emailAddress)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.emailAddress, forKey: .emailAddress)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case emailAddress = "email_address"
        }
    }
}