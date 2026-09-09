import Foundation

/// A workflow's runtime settings for an Automation.
public struct AutomationWorkflowTriggerSettingsRuntime: Codable, Hashable, Sendable {
    /// The days an Automation workflow can send.
    public let days: [AutomationWorkflowTriggerSettingsRuntimeDaysItem]?
    /// The hours an Automation workflow can send.
    public let hours: AutomationWorkflowTriggerSettingsRuntimeHours?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        days: [AutomationWorkflowTriggerSettingsRuntimeDaysItem]? = nil,
        hours: AutomationWorkflowTriggerSettingsRuntimeHours? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.days = days
        self.hours = hours
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.days = try container.decodeIfPresent([AutomationWorkflowTriggerSettingsRuntimeDaysItem].self, forKey: .days)
        self.hours = try container.decodeIfPresent(AutomationWorkflowTriggerSettingsRuntimeHours.self, forKey: .hours)
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