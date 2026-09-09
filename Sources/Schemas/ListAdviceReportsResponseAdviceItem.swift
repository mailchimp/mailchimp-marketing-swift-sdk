import Foundation

/// Campaign feedback details.
public struct ListAdviceReportsResponseAdviceItem: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListAdviceReportsResponseAdviceItemLinksItem]?
    /// The advice message.
    public let message: String?
    /// The sentiment type for a feedback message.
    public let type: ListAdviceReportsResponseAdviceItemType?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListAdviceReportsResponseAdviceItemLinksItem]? = nil,
        message: String? = nil,
        type: ListAdviceReportsResponseAdviceItemType? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.message = message
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListAdviceReportsResponseAdviceItemLinksItem].self, forKey: .links)
        self.message = try container.decodeIfPresent(String.self, forKey: .message)
        self.type = try container.decodeIfPresent(ListAdviceReportsResponseAdviceItemType.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.message, forKey: .message)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case message
        case type
    }
}