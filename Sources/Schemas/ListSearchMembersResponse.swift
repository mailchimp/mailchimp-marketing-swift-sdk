import Foundation

/// Members found for given search term
public struct ListSearchMembersResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListSearchMembersResponseLinksItem]?
    /// Exact matches of the provided search query.
    public let exactMatches: ListSearchMembersResponseExactMatches?
    /// Partial matches of the provided search query.
    public let fullSearch: ListSearchMembersResponseFullSearch?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListSearchMembersResponseLinksItem]? = nil,
        exactMatches: ListSearchMembersResponseExactMatches? = nil,
        fullSearch: ListSearchMembersResponseFullSearch? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.exactMatches = exactMatches
        self.fullSearch = fullSearch
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListSearchMembersResponseLinksItem].self, forKey: .links)
        self.exactMatches = try container.decodeIfPresent(ListSearchMembersResponseExactMatches.self, forKey: .exactMatches)
        self.fullSearch = try container.decodeIfPresent(ListSearchMembersResponseFullSearch.self, forKey: .fullSearch)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.exactMatches, forKey: .exactMatches)
        try container.encodeIfPresent(self.fullSearch, forKey: .fullSearch)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case exactMatches = "exact_matches"
        case fullSearch = "full_search"
    }
}