import Foundation

/// The delay settings for an automation email.
public struct UpdateEmailAutomationsRequestDelay: Codable, Hashable, Sendable {
    /// The action that triggers the delay of an automation emails.
    public let action: UpdateEmailAutomationsRequestDelayAction
    /// The delay amount for an automation email.
    public let amount: Int?
    /// Whether the delay settings describe before or after the delay action of an automation email.
    public let direction: UpdateEmailAutomationsRequestDelayDirection?
    /// The type of delay for an automation email.
    public let type: UpdateEmailAutomationsRequestDelayType?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        action: UpdateEmailAutomationsRequestDelayAction,
        amount: Int? = nil,
        direction: UpdateEmailAutomationsRequestDelayDirection? = nil,
        type: UpdateEmailAutomationsRequestDelayType? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.action = action
        self.amount = amount
        self.direction = direction
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.action = try container.decode(UpdateEmailAutomationsRequestDelayAction.self, forKey: .action)
        self.amount = try container.decodeIfPresent(Int.self, forKey: .amount)
        self.direction = try container.decodeIfPresent(UpdateEmailAutomationsRequestDelayDirection.self, forKey: .direction)
        self.type = try container.decodeIfPresent(UpdateEmailAutomationsRequestDelayType.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.action, forKey: .action)
        try container.encodeIfPresent(self.amount, forKey: .amount)
        try container.encodeIfPresent(self.direction, forKey: .direction)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case amount
        case direction
        case type
    }
}