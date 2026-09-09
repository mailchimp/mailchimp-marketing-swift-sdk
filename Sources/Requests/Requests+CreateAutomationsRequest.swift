import Foundation

extension Requests {
    public struct CreateAutomationsRequest: Codable, Hashable, Sendable {
        /// List settings for the Automation.
        public let recipients: CreateAutomationsRequestRecipients
        /// The settings for the Automation workflow.
        public let settings: CreateAutomationsRequestSettings?
        /// Trigger settings for the Automation.
        public let triggerSettings: CreateAutomationsRequestTriggerSettings
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            recipients: CreateAutomationsRequestRecipients,
            settings: CreateAutomationsRequestSettings? = nil,
            triggerSettings: CreateAutomationsRequestTriggerSettings,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.recipients = recipients
            self.settings = settings
            self.triggerSettings = triggerSettings
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.recipients = try container.decode(CreateAutomationsRequestRecipients.self, forKey: .recipients)
            self.settings = try container.decodeIfPresent(CreateAutomationsRequestSettings.self, forKey: .settings)
            self.triggerSettings = try container.decode(CreateAutomationsRequestTriggerSettings.self, forKey: .triggerSettings)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.recipients, forKey: .recipients)
            try container.encodeIfPresent(self.settings, forKey: .settings)
            try container.encode(self.triggerSettings, forKey: .triggerSettings)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case recipients
            case settings
            case triggerSettings = "trigger_settings"
        }
    }
}