import Foundation

/// The last 10 notes for a specific list member, based on date created.
public struct ListMemberNotesListsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListMemberNotesListsResponseLinksItem]?
    /// The MD5 hash of the lowercase version of the list member's email address.
    public let emailId: String?
    /// The list id.
    public let listId: String?
    /// An array of objects, each representing a note resource.
    public let notes: [MemberNotes]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListMemberNotesListsResponseLinksItem]? = nil,
        emailId: String? = nil,
        listId: String? = nil,
        notes: [MemberNotes]? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.emailId = emailId
        self.listId = listId
        self.notes = notes
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListMemberNotesListsResponseLinksItem].self, forKey: .links)
        self.emailId = try container.decodeIfPresent(String.self, forKey: .emailId)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.notes = try container.decodeIfPresent([MemberNotes].self, forKey: .notes)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.emailId, forKey: .emailId)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.notes, forKey: .notes)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case emailId = "email_id"
        case listId = "list_id"
        case notes
        case totalItems = "total_items"
    }
}