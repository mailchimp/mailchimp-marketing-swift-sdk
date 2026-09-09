import Foundation

/// Trigger settings for the Automation.
public struct CreateAutomationsRequestTriggerSettings: Codable, Hashable, Sendable {
    /// The type of Automation workflow.
    public let workflowType: CreateAutomationsRequestTriggerSettingsWorkflowType
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        workflowType: CreateAutomationsRequestTriggerSettingsWorkflowType,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.workflowType = workflowType
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.workflowType = try container.decode(CreateAutomationsRequestTriggerSettingsWorkflowType.self, forKey: .workflowType)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.workflowType, forKey: .workflowType)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case workflowType = "workflow_type"
    }
}