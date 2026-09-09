import Foundation

/// For email question types, how many are new, known, or unknown contacts.
public struct SurveyQuestionReportContactCounts: Codable, Hashable, Sendable {
    /// The number of known contacts that responded to this survey.
    public let known: Int?
    /// The number of new contacts that responded to this survey.
    public let new: Int?
    /// The number of unknown contacts that responded to this survey.
    public let unknown: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        known: Int? = nil,
        new: Int? = nil,
        unknown: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.known = known
        self.new = new
        self.unknown = unknown
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.known = try container.decodeIfPresent(Int.self, forKey: .known)
        self.new = try container.decodeIfPresent(Int.self, forKey: .new)
        self.unknown = try container.decodeIfPresent(Int.self, forKey: .unknown)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.known, forKey: .known)
        try container.encodeIfPresent(self.new, forKey: .new)
        try container.encodeIfPresent(self.unknown, forKey: .unknown)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case known
        case new
        case unknown
    }
}