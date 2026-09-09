import Foundation

/// A workflow's runtime settings for an Automation.
public struct AutomationWorkflowEmailTriggerSettingsRuntime: Codable, Hashable, Sendable {
    /// The days an Automation workflow can send.
    public let days: [AutomationWorkflowEmailTriggerSettingsRuntimeDaysItem]?
    /// The hours an Automation workflow can send.
    public let hours: AutomationWorkflowEmailTriggerSettingsRuntimeHours?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        days: [AutomationWorkflowEmailTriggerSettingsRuntimeDaysItem]? = nil,
        hours: AutomationWorkflowEmailTriggerSettingsRuntimeHours? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.days = days
        self.hours = hours
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.days = try container.decodeIfPresent([AutomationWorkflowEmailTriggerSettingsRuntimeDaysItem].self, forKey: .days)
        self.hours = try container.decodeIfPresent(AutomationWorkflowEmailTriggerSettingsRuntimeHours.self, forKey: .hours)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.days, forKey: .days)
        try container.encodeIfPresent(self.hours, forKey: .hours)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case days
        case hours
    }
}