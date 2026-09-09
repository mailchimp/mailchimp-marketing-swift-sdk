import Foundation

/// The last 50 member events for a list.
public struct ListMemberActivityListsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListMemberActivityListsResponseLinksItem]?
    /// An array of objects, each representing a member event.
    public let activity: [ListMemberActivityListsResponseActivityItem]?
    /// As Mailchimp evolves beyond email, you may eventually have contacts without email addresses. While the `email_id` is the MD5 hash of their email address, this `contact_id` is agnostic of contact’s inclusion of an email address.
    public let contactId: String?
    /// The MD5 hash of the lowercase version of the list member's email address.
    public let emailId: String?
    /// The list id.
    public let listId: String?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListMemberActivityListsResponseLinksItem]? = nil,
        activity: [ListMemberActivityListsResponseActivityItem]? = nil,
        contactId: String? = nil,
        emailId: String? = nil,
        listId: String? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.activity = activity
        self.contactId = contactId
        self.emailId = emailId
        self.listId = listId
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListMemberActivityListsResponseLinksItem].self, forKey: .links)
        self.activity = try container.decodeIfPresent([ListMemberActivityListsResponseActivityItem].self, forKey: .activity)
        self.contactId = try container.decodeIfPresent(String.self, forKey: .contactId)
        self.emailId = try container.decodeIfPresent(String.self, forKey: .emailId)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.activity, forKey: .activity)
        try container.encodeIfPresent(self.contactId, forKey: .contactId)
        try container.encodeIfPresent(self.emailId, forKey: .emailId)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case activity
        case contactId = "contact_id"
        case emailId = "email_id"
        case listId = "list_id"
        case totalItems = "total_items"
    }
}