import Foundation

/// A specific note for a specific member.
public struct MemberNotes: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [MemberNotesLinksItem]?
    /// As Mailchimp evolves beyond email, you may eventually have contacts without email addresses. While the `email_id` is the MD5 hash of their email address, this `contact_id` is agnostic of contact’s inclusion of an email address.
    public let contactId: String?
    /// The date and time the note was created in ISO 8601 format.
    public let createdAt: Date?
    /// The author of the note.
    public let createdBy: String?
    /// The MD5 hash of the lowercase version of the list member's email address.
    public let emailId: String?
    /// The note id.
    public let id: Int?
    /// The unique id for the list.
    public let listId: String?
    /// The content of the note.
    public let note: String?
    /// The date and time the note was last updated in ISO 8601 format.
    public let updatedAt: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [MemberNotesLinksItem]? = nil,
        contactId: String? = nil,
        createdAt: Date? = nil,
        createdBy: String? = nil,
        emailId: String? = nil,
        id: Int? = nil,
        listId: String? = nil,
        note: String? = nil,
        updatedAt: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.contactId = contactId
        self.createdAt = createdAt
        self.createdBy = createdBy
        self.emailId = emailId
        self.id = id
        self.listId = listId
        self.note = note
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([MemberNotesLinksItem].self, forKey: .links)
        self.contactId = try container.decodeIfPresent(String.self, forKey: .contactId)
        self.createdAt = try container.decodeIfPresent(Date.self, forKey: .createdAt)
        self.createdBy = try container.decodeIfPresent(String.self, forKey: .createdBy)
        self.emailId = try container.decodeIfPresent(String.self, forKey: .emailId)
        self.id = try container.decodeIfPresent(Int.self, forKey: .id)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.note = try container.decodeIfPresent(String.self, forKey: .note)
        self.updatedAt = try container.decodeIfPresent(Date.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.contactId, forKey: .contactId)
        try container.encodeIfPresent(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.createdBy, forKey: .createdBy)
        try container.encodeIfPresent(self.emailId, forKey: .emailId)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.note, forKey: .note)
        try container.encodeIfPresent(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case contactId = "contact_id"
        case createdAt = "created_at"
        case createdBy = "created_by"
        case emailId = "email_id"
        case id
        case listId = "list_id"
        case note
        case updatedAt = "updated_at"
    }
}