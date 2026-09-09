import Foundation

/// An array of Chimp Chatter messages. There's a maximum of 200 messages present for an account.
public struct ListChimpChatterActivityFeedResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListChimpChatterActivityFeedResponseLinksItem]?
    /// An array of Chimp Chatter messages. There's a maximum of 200 messages present for an account.
    public let chimpChatter: [ListChimpChatterActivityFeedResponseChimpChatterItem]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListChimpChatterActivityFeedResponseLinksItem]? = nil,
        chimpChatter: [ListChimpChatterActivityFeedResponseChimpChatterItem]? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.chimpChatter = chimpChatter
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListChimpChatterActivityFeedResponseLinksItem].self, forKey: .links)
        self.chimpChatter = try container.decodeIfPresent([ListChimpChatterActivityFeedResponseChimpChatterItem].self, forKey: .chimpChatter)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.chimpChatter, forKey: .chimpChatter)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case chimpChatter = "chimp_chatter"
        case totalItems = "total_items"
    }
}