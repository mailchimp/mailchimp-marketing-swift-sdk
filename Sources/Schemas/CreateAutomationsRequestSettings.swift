import Foundation

/// The settings for the Automation workflow.
public struct CreateAutomationsRequestSettings: Codable, Hashable, Sendable {
    /// The 'from' name for the Automation (not an email address).
    public let fromName: String?
    /// The reply-to email address for the Automation.
    public let replyTo: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fromName: String? = nil,
        replyTo: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fromName = fromName
        self.replyTo = replyTo
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fromName = try container.decodeIfPresent(String.self, forKey: .fromName)
        self.replyTo = try container.decodeIfPresent(String.self, forKey: .replyTo)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.fromName, forKey: .fromName)
        try container.encodeIfPresent(self.replyTo, forKey: .replyTo)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fromName = "from_name"
        case replyTo = "reply_to"
    }
}