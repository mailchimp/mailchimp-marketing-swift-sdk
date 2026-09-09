import Foundation

/// Check if this ad is connected to a facebook page
public struct FacebookAdsFeedback: Codable, Hashable, Sendable {
    /// Feedback regarding the audience of this Ad.
    public let audience: String?
    /// Feedback regarding the budget of this Ad.
    public let budget: String?
    /// Feedback regarding the compliance of this Ad.
    public let compliance: String?
    /// Feedback regarding the content of this Ad.
    public let content: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        audience: String? = nil,
        budget: String? = nil,
        compliance: String? = nil,
        content: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.audience = audience
        self.budget = budget
        self.compliance = compliance
        self.content = content
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.audience = try container.decodeIfPresent(String.self, forKey: .audience)
        self.budget = try container.decodeIfPresent(String.self, forKey: .budget)
        self.compliance = try container.decodeIfPresent(String.self, forKey: .compliance)
        self.content = try container.decodeIfPresent(String.self, forKey: .content)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.audience, forKey: .audience)
        try container.encodeIfPresent(self.budget, forKey: .budget)
        try container.encodeIfPresent(self.compliance, forKey: .compliance)
        try container.encodeIfPresent(self.content, forKey: .content)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case audience
        case budget
        case compliance
        case content
    }
}