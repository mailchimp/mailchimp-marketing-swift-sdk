import Foundation

/// Default content for a template.
public struct ListDefaultContentTemplatesResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListDefaultContentTemplatesResponseLinksItem]?
    /// The sections that you can edit in the template, including each section's default content.
    public let sections: [String: JSONValue]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListDefaultContentTemplatesResponseLinksItem]? = nil,
        sections: [String: JSONValue]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.sections = sections
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListDefaultContentTemplatesResponseLinksItem].self, forKey: .links)
        self.sections = try container.decodeIfPresent([String: JSONValue].self, forKey: .sections)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.sections, forKey: .sections)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case sections
    }
}