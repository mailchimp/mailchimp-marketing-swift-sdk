import Foundation

/// A list of a member's opens activity in a specific campaign.
public struct OpenActivity: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [OpenActivityLinksItem]?
    /// The unique id for the campaign.
    public let campaignId: String?
    /// The status of the member, namely if they are subscribed, unsubscribed, deleted, non-subscribed, transactional, pending, or need reconfirmation.
    public let contactStatus: String?
    /// Email address for a subscriber.
    public let emailAddress: String?
    /// The MD5 hash of the lowercase version of the list member's email address.
    public let emailId: String?
    /// The unique id for the list.
    public let listId: String?
    /// The status of the list used, namely if it's deleted or disabled.
    public let listIsActive: Bool?
    /// A dictionary of merge fields where the keys are the merge tags. See the [Merge Fields documentation](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for more about the structure.
    public let mergeFields: [String: OpenActivityMergeFieldsValue]?
    /// An array of timestamps for each time a list member opened the campaign. If a list member opens an email multiple times, this will return a separate timestamp for each open event.
    public let opens: [OpenActivityOpensItem]?
    /// The total number of times the this campaign was opened by the list member.
    public let opensCount: Int?
    /// The total number of times the this campaign was opened by the list member excluding opens from email clients that use proxies .
    public let proxyExcludedOpensCount: Int?
    /// [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.
    public let vip: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [OpenActivityLinksItem]? = nil,
        campaignId: String? = nil,
        contactStatus: String? = nil,
        emailAddress: String? = nil,
        emailId: String? = nil,
        listId: String? = nil,
        listIsActive: Bool? = nil,
        mergeFields: [String: OpenActivityMergeFieldsValue]? = nil,
        opens: [OpenActivityOpensItem]? = nil,
        opensCount: Int? = nil,
        proxyExcludedOpensCount: Int? = nil,
        vip: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.campaignId = campaignId
        self.contactStatus = contactStatus
        self.emailAddress = emailAddress
        self.emailId = emailId
        self.listId = listId
        self.listIsActive = listIsActive
        self.mergeFields = mergeFields
        self.opens = opens
        self.opensCount = opensCount
        self.proxyExcludedOpensCount = proxyExcludedOpensCount
        self.vip = vip
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([OpenActivityLinksItem].self, forKey: .links)
        self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
        self.contactStatus = try container.decodeIfPresent(String.self, forKey: .contactStatus)
        self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        self.emailId = try container.decodeIfPresent(String.self, forKey: .emailId)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.listIsActive = try container.decodeIfPresent(Bool.self, forKey: .listIsActive)
        self.mergeFields = try container.decodeIfPresent([String: OpenActivityMergeFieldsValue].self, forKey: .mergeFields)
        self.opens = try container.decodeIfPresent([OpenActivityOpensItem].self, forKey: .opens)
        self.opensCount = try container.decodeIfPresent(Int.self, forKey: .opensCount)
        self.proxyExcludedOpensCount = try container.decodeIfPresent(Int.self, forKey: .proxyExcludedOpensCount)
        self.vip = try container.decodeIfPresent(Bool.self, forKey: .vip)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
        try container.encodeIfPresent(self.contactStatus, forKey: .contactStatus)
        try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.emailId, forKey: .emailId)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.listIsActive, forKey: .listIsActive)
        try container.encodeIfPresent(self.mergeFields, forKey: .mergeFields)
        try container.encodeIfPresent(self.opens, forKey: .opens)
        try container.encodeIfPresent(self.opensCount, forKey: .opensCount)
        try container.encodeIfPresent(self.proxyExcludedOpensCount, forKey: .proxyExcludedOpensCount)
        try container.encodeIfPresent(self.vip, forKey: .vip)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case campaignId = "campaign_id"
        case contactStatus = "contact_status"
        case emailAddress = "email_address"
        case emailId = "email_id"
        case listId = "list_id"
        case listIsActive = "list_is_active"
        case mergeFields = "merge_fields"
        case opens
        case opensCount = "opens_count"
        case proxyExcludedOpensCount = "proxy_excluded_opens_count"
        case vip
    }
}