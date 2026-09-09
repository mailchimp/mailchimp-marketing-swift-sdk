import Foundation

/// A survey section. On PATCH, include the section id to update it; omit the section from the sections array to delete it (and any question it contains).
public struct SurveySectionRequest: Codable, Hashable, Sendable {
    /// The section ID. On PATCH, include to update an existing section; omit to add a new section.
    public let id: String?
    /// The section type.
    public let type: SurveySectionRequestType
    /// Rich text content for introduction or context sections.
    public let text: String?
    /// Additional section options.
    public let options: [String: JSONValue]?
    /// A survey question. On PATCH, include the question id to update it. Omitting question id creates a new question; it does not delete an existing one. To delete a question, omit its section from the sections array.
    public let question: SurveySectionRequestQuestion?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String? = nil,
        type: SurveySectionRequestType,
        text: String? = nil,
        options: [String: JSONValue]? = nil,
        question: SurveySectionRequestQuestion? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.type = type
        self.text = text
        self.options = options
        self.question = question
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.type = try container.decode(SurveySectionRequestType.self, forKey: .type)
        self.text = try container.decodeIfPresent(String.self, forKey: .text)
        self.options = try container.decodeIfPresent([String: JSONValue].self, forKey: .options)
        self.question = try container.decodeIfPresent(SurveySectionRequestQuestion.self, forKey: .question)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encode(self.type, forKey: .type)
        try container.encodeIfPresent(self.text, forKey: .text)
        try container.encodeIfPresent(self.options, forKey: .options)
        try container.encodeIfPresent(self.question, forKey: .question)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case type
        case text
        case options
        case question
    }
}