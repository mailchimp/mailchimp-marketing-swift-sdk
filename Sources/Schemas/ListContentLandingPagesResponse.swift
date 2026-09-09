import Foundation

/// The HTML content for a landing page.
public struct ListContentLandingPagesResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListContentLandingPagesResponseLinksItem]?
    /// The raw HTML for the landing page.
    public let html: String?
    /// The JSON Structure for the landing page
    public let json: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListContentLandingPagesResponseLinksItem]? = nil,
        html: String? = nil,
        json: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.html = html
        self.json = json
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListContentLandingPagesResponseLinksItem].self, forKey: .links)
        self.html = try container.decodeIfPresent(String.self, forKey: .html)
        self.json = try container.decodeIfPresent(String.self, forKey: .json)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.html, forKey: .html)
        try container.encodeIfPresent(self.json, forKey: .json)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case html
        case json
    }
}