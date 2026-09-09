import Foundation

/// Details of abuse complaints for a specific list. An abuse complaint occurs when your recipient clicks to 'report spam' in their email program.
public struct AbuseComplaint: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [AbuseComplaintLinksItem]?
    /// The campaign id for the abuse report
    public let campaignId: String?
    /// Date for the abuse report
    public let date: Date?
    /// Email address for a subscriber.
    public let emailAddress: String?
    /// The MD5 hash of the lowercase version of the list member's email address.
    public let emailId: String?
    /// The id for the abuse report
    public let id: Int?
    /// The unique id of the list for the abuse report.
    public let listId: String?
    /// The status of the list used, namely if it's deleted or disabled.
    public let listIsActive: Bool?
    /// A dictionary of merge fields where the keys are the merge tags. See the [Merge Fields documentation](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for more about the structure.
    public let mergeFields: [String: AbuseComplaintMergeFieldsValue]?
    /// [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.
    public let vip: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [AbuseComplaintLinksItem]? = nil,
        campaignId: String? = nil,
        date: Date? = nil,
        emailAddress: String? = nil,
        emailId: String? = nil,
        id: Int? = nil,
        listId: String? = nil,
        listIsActive: Bool? = nil,
        mergeFields: [String: AbuseComplaintMergeFieldsValue]? = nil,
        vip: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.campaignId = campaignId
        self.date = date
        self.emailAddress = emailAddress
        self.emailId = emailId
        self.id = id
        self.listId = listId
        self.listIsActive = listIsActive
        self.mergeFields = mergeFields
        self.vip = vip
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([AbuseComplaintLinksItem].self, forKey: .links)
        self.campaignId = try container.decodeIfPresent(String.self, forKey: .campaignId)
        self.date = try container.decodeIfPresent(Date.self, forKey: .date)
        self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        self.emailId = try container.decodeIfPresent(String.self, forKey: .emailId)
        self.id = try container.decodeIfPresent(Int.self, forKey: .id)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.listIsActive = try container.decodeIfPresent(Bool.self, forKey: .listIsActive)
        self.mergeFields = try container.decodeIfPresent([String: AbuseComplaintMergeFieldsValue].self, forKey: .mergeFields)
        self.vip = try container.decodeIfPresent(Bool.self, forKey: .vip)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.campaignId, forKey: .campaignId)
        try container.encodeIfPresent(self.date, forKey: .date)
        try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.emailId, forKey: .emailId)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.listIsActive, forKey: .listIsActive)
        try container.encodeIfPresent(self.mergeFields, forKey: .mergeFields)
        try container.encodeIfPresent(self.vip, forKey: .vip)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case campaignId = "campaign_id"
        case date
        case emailAddress = "email_address"
        case emailId = "email_id"
        case id
        case listId = "list_id"
        case listIsActive = "list_is_active"
        case mergeFields = "merge_fields"
        case vip
    }
}