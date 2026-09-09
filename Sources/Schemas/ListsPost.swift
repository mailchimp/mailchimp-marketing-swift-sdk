import Foundation

/// Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed.
public struct ListsPost: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListsPostLinksItem]?
    /// A unique ID for the contact record.
    public let contactId: String?
    /// Email address for a subscriber.
    public let emailAddress: String?
    /// The list member's email client.
    public let emailClient: String?
    /// Type of email this member asked to get ('html' or 'text').
    public let emailType: String?
    /// The MD5 hash of the lowercase version of the list member's email address.
    public let id: String?
    /// The key of this object's properties is the ID of the interest in question.
    public let interests: [String: Bool]?
    /// The IP address the subscriber used to confirm their opt-in status.
    public let ipOpt: String?
    /// IP address the subscriber signed up from.
    public let ipSignup: String?
    /// If set/detected, the [subscriber's language](https://mailchimp.com/help/view-and-edit-contact-languages/).
    public let language: String?
    /// The date and time the member's info was last changed in ISO 8601 format.
    public let lastChanged: Date?
    /// The most recent Note added about this member.
    public let lastNote: ListsPostLastNote?
    /// The list id.
    public let listId: String?
    /// Subscriber location information.
    public let location: ListsPostLocation?
    /// Star rating for this member, between 1 and 5.
    public let memberRating: Int?
    /// An individual merge var and value for a member.
    public let mergeFields: [String: JSONValue]?
    /// Open and click rates for this subscriber.
    public let stats: ListsPostStats?
    /// Subscriber's current status.
    public let status: ListsPostStatus?
    /// The tags applied to this member.
    public let tags: [ListsPostTagsItem]?
    /// The number of tags applied to this member.
    public let tagsCount: Int?
    /// The date and time the subscriber confirmed their opt-in status in ISO 8601 format.
    public let timestampOpt: Date?
    /// The date and time the subscriber signed up for the list in ISO 8601 format.
    public let timestampSignup: Date?
    /// An identifier for the address across all of Mailchimp.
    public let uniqueEmailId: String?
    /// [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.
    public let vip: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListsPostLinksItem]? = nil,
        contactId: String? = nil,
        emailAddress: String? = nil,
        emailClient: String? = nil,
        emailType: String? = nil,
        id: String? = nil,
        interests: [String: Bool]? = nil,
        ipOpt: String? = nil,
        ipSignup: String? = nil,
        language: String? = nil,
        lastChanged: Date? = nil,
        lastNote: ListsPostLastNote? = nil,
        listId: String? = nil,
        location: ListsPostLocation? = nil,
        memberRating: Int? = nil,
        mergeFields: [String: JSONValue]? = nil,
        stats: ListsPostStats? = nil,
        status: ListsPostStatus? = nil,
        tags: [ListsPostTagsItem]? = nil,
        tagsCount: Int? = nil,
        timestampOpt: Date? = nil,
        timestampSignup: Date? = nil,
        uniqueEmailId: String? = nil,
        vip: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.contactId = contactId
        self.emailAddress = emailAddress
        self.emailClient = emailClient
        self.emailType = emailType
        self.id = id
        self.interests = interests
        self.ipOpt = ipOpt
        self.ipSignup = ipSignup
        self.language = language
        self.lastChanged = lastChanged
        self.lastNote = lastNote
        self.listId = listId
        self.location = location
        self.memberRating = memberRating
        self.mergeFields = mergeFields
        self.stats = stats
        self.status = status
        self.tags = tags
        self.tagsCount = tagsCount
        self.timestampOpt = timestampOpt
        self.timestampSignup = timestampSignup
        self.uniqueEmailId = uniqueEmailId
        self.vip = vip
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListsPostLinksItem].self, forKey: .links)
        self.contactId = try container.decodeIfPresent(String.self, forKey: .contactId)
        self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        self.emailClient = try container.decodeIfPresent(String.self, forKey: .emailClient)
        self.emailType = try container.decodeIfPresent(String.self, forKey: .emailType)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.interests = try container.decodeIfPresent([String: Bool].self, forKey: .interests)
        self.ipOpt = try container.decodeIfPresent(String.self, forKey: .ipOpt)
        self.ipSignup = try container.decodeIfPresent(String.self, forKey: .ipSignup)
        self.language = try container.decodeIfPresent(String.self, forKey: .language)
        self.lastChanged = try container.decodeIfPresent(Date.self, forKey: .lastChanged)
        self.lastNote = try container.decodeIfPresent(ListsPostLastNote.self, forKey: .lastNote)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.location = try container.decodeIfPresent(ListsPostLocation.self, forKey: .location)
        self.memberRating = try container.decodeIfPresent(Int.self, forKey: .memberRating)
        self.mergeFields = try container.decodeIfPresent([String: JSONValue].self, forKey: .mergeFields)
        self.stats = try container.decodeIfPresent(ListsPostStats.self, forKey: .stats)
        self.status = try container.decodeIfPresent(ListsPostStatus.self, forKey: .status)
        self.tags = try container.decodeIfPresent([ListsPostTagsItem].self, forKey: .tags)
        self.tagsCount = try container.decodeIfPresent(Int.self, forKey: .tagsCount)
        self.timestampOpt = try container.decodeIfPresent(Date.self, forKey: .timestampOpt)
        self.timestampSignup = try container.decodeIfPresent(Date.self, forKey: .timestampSignup)
        self.uniqueEmailId = try container.decodeIfPresent(String.self, forKey: .uniqueEmailId)
        self.vip = try container.decodeIfPresent(Bool.self, forKey: .vip)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.contactId, forKey: .contactId)
        try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.emailClient, forKey: .emailClient)
        try container.encodeIfPresent(self.emailType, forKey: .emailType)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.interests, forKey: .interests)
        try container.encodeIfPresent(self.ipOpt, forKey: .ipOpt)
        try container.encodeIfPresent(self.ipSignup, forKey: .ipSignup)
        try container.encodeIfPresent(self.language, forKey: .language)
        try container.encodeIfPresent(self.lastChanged, forKey: .lastChanged)
        try container.encodeIfPresent(self.lastNote, forKey: .lastNote)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.memberRating, forKey: .memberRating)
        try container.encodeIfPresent(self.mergeFields, forKey: .mergeFields)
        try container.encodeIfPresent(self.stats, forKey: .stats)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.tags, forKey: .tags)
        try container.encodeIfPresent(self.tagsCount, forKey: .tagsCount)
        try container.encodeIfPresent(self.timestampOpt, forKey: .timestampOpt)
        try container.encodeIfPresent(self.timestampSignup, forKey: .timestampSignup)
        try container.encodeIfPresent(self.uniqueEmailId, forKey: .uniqueEmailId)
        try container.encodeIfPresent(self.vip, forKey: .vip)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case contactId = "contact_id"
        case emailAddress = "email_address"
        case emailClient = "email_client"
        case emailType = "email_type"
        case id
        case interests
        case ipOpt = "ip_opt"
        case ipSignup = "ip_signup"
        case language
        case lastChanged = "last_changed"
        case lastNote = "last_note"
        case listId = "list_id"
        case location
        case memberRating = "member_rating"
        case mergeFields = "merge_fields"
        case stats
        case status
        case tags
        case tagsCount = "tags_count"
        case timestampOpt = "timestamp_opt"
        case timestampSignup = "timestamp_signup"
        case uniqueEmailId = "unique_email_id"
        case vip
    }
}