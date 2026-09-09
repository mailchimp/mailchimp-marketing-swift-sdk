import Foundation

extension Requests {
    public struct UpdateEmailAutomationsRequest: Codable, Hashable, Sendable {
        /// The delay settings for an automation email.
        public let delay: UpdateEmailAutomationsRequestDelay?
        /// Settings for the campaign including the email subject, from name, and from email address.
        public let settings: UpdateEmailAutomationsRequestSettings?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            delay: UpdateEmailAutomationsRequestDelay? = nil,
            settings: UpdateEmailAutomationsRequestSettings? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.delay = delay
            self.settings = settings
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.delay = try container.decodeIfPresent(UpdateEmailAutomationsRequestDelay.self, forKey: .delay)
            self.settings = try container.decodeIfPresent(UpdateEmailAutomationsRequestSettings.self, forKey: .settings)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.delay, forKey: .delay)
            try container.encodeIfPresent(self.settings, forKey: .settings)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case delay
            case settings
        }
    }
}