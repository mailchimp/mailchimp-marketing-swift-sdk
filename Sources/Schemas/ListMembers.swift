import Foundation

/// Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed.
public struct ListMembers: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListMembersLinksItem]?
    /// Indicates whether a contact consents to 1:1 messaging.
    public let consentsToOneToOneMessaging: Bool?
    /// As Mailchimp evolves beyond email, you may eventually have contacts without email addresses. While the `id` is the MD5 hash of their email address, this `contact_id` is agnostic of contact’s inclusion of an email address.
    public let contactId: String?
    /// Email address for a subscriber.
    public let emailAddress: String?
    /// The list member's email client.
    public let emailClient: String?
    /// Type of email this member asked to get ('html' or 'text').
    public let emailType: JSONValue?
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
    public let lastNote: ListMembersLastNote?
    /// The list id.
    public let listId: String?
    /// Subscriber location information.
    public let location: ListMembersLocation?
    /// The marketing permissions for the subscriber.
    public let marketingPermissions: [ListMembersMarketingPermissionsItem]?
    /// Star rating for this member, between 1 and 5.
    public let memberRating: Int?
    /// A dictionary of merge fields where the keys are the merge tags. See the [Merge Fields documentation](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for more about the structure.
    public let mergeFields: [String: ListMembersMergeFieldsValue]?
    /// A US phone number for SMS contact.
    public let smsPhoneNumber: String?
    /// The datetime when the SMS subscription was last updated
    public let smsSubscriptionLastUpdated: String?
    /// The status of an SMS subscription.
    public let smsSubscriptionStatus: ListMembersSmsSubscriptionStatus?
    /// The source from which the subscriber was added to this list.
    public let source: String?
    /// Open and click rates for this subscriber.
    public let stats: ListMembersStats?
    /// Subscriber's current status.
    public let status: ListMembersStatus?
    /// Returns up to 50 tags applied to this member. To retrieve all tags see [Member Tags](https://mailchimp.com/developer/marketing/api/list-member-tags/).
    public let tags: [ListMembersTagsItem]?
    /// The number of tags applied to this member.
    public let tagsCount: Int?
    /// The date and time the subscriber confirmed their opt-in status in ISO 8601 format.
    public let timestampOpt: Date?
    /// The date and time the subscriber signed up for the list in ISO 8601 format.
    public let timestampSignup: Date?
    /// An identifier for the address across all of Mailchimp.
    public let uniqueEmailId: String?
    /// A subscriber's reason for unsubscribing.
    public let unsubscribeReason: String?
    /// [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.
    public let vip: Bool?
    /// The ID used in the Mailchimp web application. View this member in your Mailchimp account at `https://{dc}.admin.mailchimp.com/lists/members/view?id={web_id}`.
    public let webId: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListMembersLinksItem]? = nil,
        consentsToOneToOneMessaging: Bool? = nil,
        contactId: String? = nil,
        emailAddress: String? = nil,
        emailClient: String? = nil,
        emailType: JSONValue? = nil,
        id: String? = nil,
        interests: [String: Bool]? = nil,
        ipOpt: String? = nil,
        ipSignup: String? = nil,
        language: String? = nil,
        lastChanged: Date? = nil,
        lastNote: ListMembersLastNote? = nil,
        listId: String? = nil,
        location: ListMembersLocation? = nil,
        marketingPermissions: [ListMembersMarketingPermissionsItem]? = nil,
        memberRating: Int? = nil,
        mergeFields: [String: ListMembersMergeFieldsValue]? = nil,
        smsPhoneNumber: String? = nil,
        smsSubscriptionLastUpdated: String? = nil,
        smsSubscriptionStatus: ListMembersSmsSubscriptionStatus? = nil,
        source: String? = nil,
        stats: ListMembersStats? = nil,
        status: ListMembersStatus? = nil,
        tags: [ListMembersTagsItem]? = nil,
        tagsCount: Int? = nil,
        timestampOpt: Date? = nil,
        timestampSignup: Date? = nil,
        uniqueEmailId: String? = nil,
        unsubscribeReason: String? = nil,
        vip: Bool? = nil,
        webId: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.consentsToOneToOneMessaging = consentsToOneToOneMessaging
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
        self.marketingPermissions = marketingPermissions
        self.memberRating = memberRating
        self.mergeFields = mergeFields
        self.smsPhoneNumber = smsPhoneNumber
        self.smsSubscriptionLastUpdated = smsSubscriptionLastUpdated
        self.smsSubscriptionStatus = smsSubscriptionStatus
        self.source = source
        self.stats = stats
        self.status = status
        self.tags = tags
        self.tagsCount = tagsCount
        self.timestampOpt = timestampOpt
        self.timestampSignup = timestampSignup
        self.uniqueEmailId = uniqueEmailId
        self.unsubscribeReason = unsubscribeReason
        self.vip = vip
        self.webId = webId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListMembersLinksItem].self, forKey: .links)
        self.consentsToOneToOneMessaging = try container.decodeIfPresent(Bool.self, forKey: .consentsToOneToOneMessaging)
        self.contactId = try container.decodeIfPresent(String.self, forKey: .contactId)
        self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        self.emailClient = try container.decodeIfPresent(String.self, forKey: .emailClient)
        self.emailType = try container.decodeIfPresent(JSONValue.self, forKey: .emailType)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.interests = try container.decodeIfPresent([String: Bool].self, forKey: .interests)
        self.ipOpt = try container.decodeIfPresent(String.self, forKey: .ipOpt)
        self.ipSignup = try container.decodeIfPresent(String.self, forKey: .ipSignup)
        self.language = try container.decodeIfPresent(String.self, forKey: .language)
        self.lastChanged = try container.decodeIfPresent(Date.self, forKey: .lastChanged)
        self.lastNote = try container.decodeIfPresent(ListMembersLastNote.self, forKey: .lastNote)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.location = try container.decodeIfPresent(ListMembersLocation.self, forKey: .location)
        self.marketingPermissions = try container.decodeIfPresent([ListMembersMarketingPermissionsItem].self, forKey: .marketingPermissions)
        self.memberRating = try container.decodeIfPresent(Int.self, forKey: .memberRating)
        self.mergeFields = try container.decodeIfPresent([String: ListMembersMergeFieldsValue].self, forKey: .mergeFields)
        self.smsPhoneNumber = try container.decodeIfPresent(String.self, forKey: .smsPhoneNumber)
        self.smsSubscriptionLastUpdated = try container.decodeIfPresent(String.self, forKey: .smsSubscriptionLastUpdated)
        self.smsSubscriptionStatus = try container.decodeIfPresent(ListMembersSmsSubscriptionStatus.self, forKey: .smsSubscriptionStatus)
        self.source = try container.decodeIfPresent(String.self, forKey: .source)
        self.stats = try container.decodeIfPresent(ListMembersStats.self, forKey: .stats)
        self.status = try container.decodeIfPresent(ListMembersStatus.self, forKey: .status)
        self.tags = try container.decodeIfPresent([ListMembersTagsItem].self, forKey: .tags)
        self.tagsCount = try container.decodeIfPresent(Int.self, forKey: .tagsCount)
        self.timestampOpt = try container.decodeIfPresent(Date.self, forKey: .timestampOpt)
        self.timestampSignup = try container.decodeIfPresent(Date.self, forKey: .timestampSignup)
        self.uniqueEmailId = try container.decodeIfPresent(String.self, forKey: .uniqueEmailId)
        self.unsubscribeReason = try container.decodeIfPresent(String.self, forKey: .unsubscribeReason)
        self.vip = try container.decodeIfPresent(Bool.self, forKey: .vip)
        self.webId = try container.decodeIfPresent(Int.self, forKey: .webId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.consentsToOneToOneMessaging, forKey: .consentsToOneToOneMessaging)
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
        try container.encodeIfPresent(self.marketingPermissions, forKey: .marketingPermissions)
        try container.encodeIfPresent(self.memberRating, forKey: .memberRating)
        try container.encodeIfPresent(self.mergeFields, forKey: .mergeFields)
        try container.encodeIfPresent(self.smsPhoneNumber, forKey: .smsPhoneNumber)
        try container.encodeIfPresent(self.smsSubscriptionLastUpdated, forKey: .smsSubscriptionLastUpdated)
        try container.encodeIfPresent(self.smsSubscriptionStatus, forKey: .smsSubscriptionStatus)
        try container.encodeIfPresent(self.source, forKey: .source)
        try container.encodeIfPresent(self.stats, forKey: .stats)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.tags, forKey: .tags)
        try container.encodeIfPresent(self.tagsCount, forKey: .tagsCount)
        try container.encodeIfPresent(self.timestampOpt, forKey: .timestampOpt)
        try container.encodeIfPresent(self.timestampSignup, forKey: .timestampSignup)
        try container.encodeIfPresent(self.uniqueEmailId, forKey: .uniqueEmailId)
        try container.encodeIfPresent(self.unsubscribeReason, forKey: .unsubscribeReason)
        try container.encodeIfPresent(self.vip, forKey: .vip)
        try container.encodeIfPresent(self.webId, forKey: .webId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case consentsToOneToOneMessaging = "consents_to_one_to_one_messaging"
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
        case marketingPermissions = "marketing_permissions"
        case memberRating = "member_rating"
        case mergeFields = "merge_fields"
        case smsPhoneNumber = "sms_phone_number"
        case smsSubscriptionLastUpdated = "sms_subscription_last_updated"
        case smsSubscriptionStatus = "sms_subscription_status"
        case source
        case stats
        case status
        case tags
        case tagsCount = "tags_count"
        case timestampOpt = "timestamp_opt"
        case timestampSignup = "timestamp_signup"
        case uniqueEmailId = "unique_email_id"
        case unsubscribeReason = "unsubscribe_reason"
        case vip
        case webId = "web_id"
    }
}