import Foundation

/// Deprecated
public struct AutomationWorkflowTrackingSalesforce: Codable, Hashable, Sendable {
    /// Create a campaign in a connected Salesforce account.
    public let campaign: Bool?
    /// Update contact notes for a campaign based on a subscriber's email address.
    public let notes: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        campaign: Bool? = nil,
        notes: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.campaign = campaign
        self.notes = notes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.campaign = try container.decodeIfPresent(Bool.self, forKey: .campaign)
        self.notes = try container.decodeIfPresent(Bool.self, forKey: .notes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.campaign, forKey: .campaign)
        try container.encodeIfPresent(self.notes, forKey: .notes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case campaign
        case notes
    }
}