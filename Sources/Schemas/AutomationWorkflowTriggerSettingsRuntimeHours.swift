import Foundation

/// The hours an Automation workflow can send.
public struct AutomationWorkflowTriggerSettingsRuntimeHours: Codable, Hashable, Sendable {
    /// When to send the Automation email.
    public let type: AutomationWorkflowTriggerSettingsRuntimeHoursType
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        type: AutomationWorkflowTriggerSettingsRuntimeHoursType,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode(AutomationWorkflowTriggerSettingsRuntimeHoursType.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case type
    }
}