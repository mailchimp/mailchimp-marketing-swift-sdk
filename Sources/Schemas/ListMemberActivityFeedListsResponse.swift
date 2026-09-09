import Foundation

/// The member activity events for a given member.
public struct ListMemberActivityFeedListsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListMemberActivityFeedListsResponseLinksItem]?
    /// An array of objects, each representing a contact event. There are multiple possible types, see the [activity schema documentation](https://mailchimp.com/developer/marketing/docs/alternative-schemas/#activity-schemas).
    public let activity: [JSONValue]?
    /// The MD5 hash of the lowercase version of the list member's email address.
    public let emailId: String?
    /// The list id.
    public let listId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListMemberActivityFeedListsResponseLinksItem]? = nil,
        activity: [JSONValue]? = nil,
        emailId: String? = nil,
        listId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.activity = activity
        self.emailId = emailId
        self.listId = listId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListMemberActivityFeedListsResponseLinksItem].self, forKey: .links)
        self.activity = try container.decodeIfPresent([JSONValue].self, forKey: .activity)
        self.emailId = try container.decodeIfPresent(String.self, forKey: .emailId)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.activity, forKey: .activity)
        try container.encodeIfPresent(self.emailId, forKey: .emailId)
        try container.encodeIfPresent(self.listId, forKey: .listId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case activity
        case emailId = "email_id"
        case listId = "list_id"
    }
}