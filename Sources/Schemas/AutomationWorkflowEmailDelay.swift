import Foundation

/// The delay settings for an Automation email.
public struct AutomationWorkflowEmailDelay: Codable, Hashable, Sendable {
    /// The action that triggers the delay of an Automation email.
    public let action: AutomationWorkflowEmailDelayAction?
    /// The user-friendly description of the action that triggers an Automation email.
    public let actionDescription: String?
    /// The delay amount for an Automation email.
    public let amount: Int?
    /// Whether the delay settings describe before or after the delay action of an Automation email.
    public let direction: AutomationWorkflowEmailDelayDirection?
    /// The user-friendly description of the delay and trigger action settings for an Automation email.
    public let fullDescription: String?
    /// The type of delay for an Automation email.
    public let type: AutomationWorkflowEmailDelayType?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        action: AutomationWorkflowEmailDelayAction? = nil,
        actionDescription: String? = nil,
        amount: Int? = nil,
        direction: AutomationWorkflowEmailDelayDirection? = nil,
        fullDescription: String? = nil,
        type: AutomationWorkflowEmailDelayType? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.action = action
        self.actionDescription = actionDescription
        self.amount = amount
        self.direction = direction
        self.fullDescription = fullDescription
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.action = try container.decodeIfPresent(AutomationWorkflowEmailDelayAction.self, forKey: .action)
        self.actionDescription = try container.decodeIfPresent(String.self, forKey: .actionDescription)
        self.amount = try container.decodeIfPresent(Int.self, forKey: .amount)
        self.direction = try container.decodeIfPresent(AutomationWorkflowEmailDelayDirection.self, forKey: .direction)
        self.fullDescription = try container.decodeIfPresent(String.self, forKey: .fullDescription)
        self.type = try container.decodeIfPresent(AutomationWorkflowEmailDelayType.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.actionDescription, forKey: .actionDescription)
        try container.encodeIfPresent(self.amount, forKey: .amount)
        try container.encodeIfPresent(self.direction, forKey: .direction)
        try container.encodeIfPresent(self.fullDescription, forKey: .fullDescription)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case actionDescription = "action_description"
        case amount
        case direction
        case fullDescription = "full_description"
        case type
    }
}