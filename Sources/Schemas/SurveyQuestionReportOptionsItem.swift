import Foundation

public struct SurveyQuestionReportOptionsItem: Codable, Hashable, Sendable {
    /// The count of responses that selected this survey question option.
    public let count: Int?
    /// The ID for this survey question option.
    public let id: String?
    /// The label for this survey question option.
    public let label: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        count: Int? = nil,
        id: String? = nil,
        label: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.count = count
        self.id = id
        self.label = label
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.count = try container.decodeIfPresent(Int.self, forKey: .count)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.label = try container.decodeIfPresent(String.self, forKey: .label)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.count, forKey: .count)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.label, forKey: .label)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case count
        case id
        case label
    }
}