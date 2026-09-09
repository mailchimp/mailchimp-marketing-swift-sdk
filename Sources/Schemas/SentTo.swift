import Foundation

/// A subscriber's status for a specific campaign.
public struct SentTo: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [SentToLinksItem]?
    /// For A/B Split Campaigns, the group the member was apart of.
    public let absplitGroup: SentToAbsplitGroup?
    /// The campaign id.
    public let campaignId: String?
    /// Email address for a subscriber.
    public let emailAddress: String?
    /// The MD5 hash of the lowercase version of the list member's email address.
    public let emailId: String?
    /// For campaigns sent with timewarp, the time zone group the member is apart of.
    public let gmtOffset: Int?
    /// The date and time of the last open for this member in ISO 8601 format.
    public let lastOpen: Date?
    /// The unique list id.
    public let listId: String?
    /// The status of the list used, namely if it's deleted or disabled.
    public let listIsActive: Bool?
    /// A dictionary of merge fields where the keys are the merge tags. See the [Merge Fields documentation](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for more about the structure.
    public let mergeFields: [String: SentToMergeFieldsValue]?
    /// The number of times a campaign was opened by this member.
    public let openCount: Int?
    /// The status of the email delivered to this subscriber. `hard` and `soft` refer to different [bounce types](https://mailchimp.com/help/soft-vs-hard-bounces/).
    public let status: SentToStatus?
    /// [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.
    public let vip: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [SentToLinksItem]? = nil,
        absplitGroup: SentToAbsplitGroup? = nil,
        campaignId: String? = nil,
        emailAddress: String? = nil,
        emailId: String? = nil,
        gmtOffset: Int? = nil,
        lastOpen: Date? = nil,
        listId: String? = nil,
        listIsActive: Bool? = nil,
        mergeFields: [String: SentToMergeFieldsValue]? = nil,
        openCount: Int? = nil,
        status: SentToStatus? = nil,
        vip: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.absplitGroup = absplitGroup
        self.campaignId = campaignId
        self.emailAddress = emailAddress
        self.emailId = emailId
        self.gmtOffset = gmtOffset
        self.lastOpen = lastOpen
        self.listId = listId
        self.listIsActive = listIsActive
        self.mergeFields = mergeFields
        self.openCount = openCount
        self.status = status
        self.vip = vip
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([SentToLinksItem].self, forKey: .links)
        self.absplitGroup = try container.decodeIfPresent(SentToAbsplitGroup.self, forKey: .absplitGroup)
        self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
        self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        self.emailId = try container.decodeIfPresent(String.self, forKey: .emailId)
        self.gmtOffset = try container.decodeIfPresent(Int.self, forKey: .gmtOffset)
        self.lastOpen = try container.decodeIfPresent(Date.self, forKey: .lastOpen)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.listIsActive = try container.decodeIfPresent(Bool.self, forKey: .listIsActive)
        self.mergeFields = try container.decodeIfPresent([String: SentToMergeFieldsValue].self, forKey: .mergeFields)
        self.openCount = try container.decodeIfPresent(Int.self, forKey: .openCount)
        self.status = try container.decodeIfPresent(SentToStatus.self, forKey: .status)
        self.vip = try container.decodeIfPresent(Bool.self, forKey: .vip)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.absplitGroup, forKey: .absplitGroup)
        try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
        try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.emailId, forKey: .emailId)
        try container.encodeIfPresent(self.gmtOffset, forKey: .gmtOffset)
        try container.encodeIfPresent(self.lastOpen, forKey: .lastOpen)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.listIsActive, forKey: .listIsActive)
        try container.encodeIfPresent(self.mergeFields, forKey: .mergeFields)
        try container.encodeIfPresent(self.openCount, forKey: .openCount)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.vip, forKey: .vip)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case absplitGroup = "absplit_group"
        case campaignId = "campaign_id"
        case emailAddress = "email_address"
        case emailId = "email_id"
        case gmtOffset = "gmt_offset"
        case lastOpen = "last_open"
        case listId = "list_id"
        case listIsActive = "list_is_active"
        case mergeFields = "merge_fields"
        case openCount = "open_count"
        case status
        case vip
    }
}