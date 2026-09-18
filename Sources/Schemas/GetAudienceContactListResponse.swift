import Foundation

/// An array of objects, each representing a contact record.
public struct GetAudienceContactListResponse: Codable, Hashable, Sendable {
    /// An array of objects, each representing a contact record.
    public let contacts: [AudiencesContact]?
    /// A cursor pointing to the last item on this page of the collection. Paginate through a collection of records by setting the `cursor` parameter on a subsequent request to this value.
    public let nextCursor: String?
    /// A list of link types and descriptions for the API schema documents.
    public let links: [GetAudienceContactListResponseLinksItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        contacts: [AudiencesContact]? = nil,
        nextCursor: String? = nil,
        links: [GetAudienceContactListResponseLinksItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.contacts = contacts
        self.nextCursor = nextCursor
        self.links = links
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.contacts = try container.decodeIfPresent([AudiencesContact].self, forKey: .contacts)
        self.nextCursor = try container.decodeIfPresent(String.self, forKey: .nextCursor)
        self.links = try container.decodeIfPresent([GetAudienceContactListResponseLinksItem].self, forKey: .links)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.contacts, forKey: .contacts)
        try container.encodeIfPresent(self.nextCursor, forKey: .nextCursor)
        try container.encodeIfPresent(self.links, forKey: .links)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case contacts
        case nextCursor = "next_cursor"
        case links = "_links"
    }
}