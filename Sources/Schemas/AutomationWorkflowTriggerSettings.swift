import Foundation

/// Available triggers for Automation workflows.
public struct AutomationWorkflowTriggerSettings: Codable, Hashable, Sendable {
    /// A workflow's runtime settings for an Automation.
    public let runtime: AutomationWorkflowTriggerSettingsRuntime?
    /// The number of emails in the Automation workflow.
    public let workflowEmailsCount: Int?
    /// The title of the workflow type.
    public let workflowTitle: String?
    /// The type of Automation workflow.
    public let workflowType: AutomationWorkflowTriggerSettingsWorkflowType
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        runtime: AutomationWorkflowTriggerSettingsRuntime? = nil,
        workflowEmailsCount: Int? = nil,
        workflowTitle: String? = nil,
        workflowType: AutomationWorkflowTriggerSettingsWorkflowType,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.runtime = runtime
        self.workflowEmailsCount = workflowEmailsCount
        self.workflowTitle = workflowTitle
        self.workflowType = workflowType
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.runtime = try container.decodeIfPresent(AutomationWorkflowTriggerSettingsRuntime.self, forKey: .runtime)
        self.workflowEmailsCount = try container.decodeIfPresent(Int.self, forKey: .workflowEmailsCount)
        self.workflowTitle = try container.decodeIfPresent(String.self, forKey: .workflowTitle)
        self.workflowType = try container.decode(AutomationWorkflowTriggerSettingsWorkflowType.self, forKey: .workflowType)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.runtime, forKey: .runtime)
        try container.encodeIfPresent(self.workflowEmailsCount, forKey: .workflowEmailsCount)
        try container.encodeIfPresent(self.workflowTitle, forKey: .workflowTitle)
        try container.encode(self.workflowType, forKey: .workflowType)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case runtime
        case workflowEmailsCount = "workflow_emails_count"
        case workflowTitle = "workflow_title"
        case workflowType = "workflow_type"
    }
}