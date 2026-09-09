import Foundation

/// Stats for the list. Many of these are cached for at least five minutes.
public struct SubscriberListStats: Codable, Hashable, Sendable {
    /// The average number of subscriptions per month for the list (not returned if we haven't calculated it yet).
    public let avgSubRate: Double?
    /// The average number of unsubscriptions per month for the list (not returned if we haven't calculated it yet).
    public let avgUnsubRate: Double?
    /// The number of campaigns in any status that use this list.
    public let campaignCount: Int?
    /// The date and time the last campaign was sent to this list in ISO 8601 format. This is updated when a campaign is sent to 10 or more recipients.
    public let campaignLastSent: Date?
    /// The number of members cleaned from the list.
    public let cleanedCount: Int?
    /// The number of members cleaned from the list since the last campaign was sent.
    public let cleanedCountSinceSend: Int?
    /// The average click rate (a percentage represented as a number between 0 and 100) per campaign for the list (not returned if we haven't calculated it yet).
    public let clickRate: Double?
    /// The date and time of the last time someone subscribed to this list in ISO 8601 format.
    public let lastSubDate: Date?
    /// The date and time of the last time someone unsubscribed from this list in ISO 8601 format.
    public let lastUnsubDate: Date?
    /// The number of active members in the list.
    public let memberCount: Int?
    /// The number of active members in the list since the last campaign was sent.
    public let memberCountSinceSend: Int?
    /// The number of merge fields ([audience field](https://mailchimp.com/help/getting-started-with-merge-tags/)) for this list (doesn't include EMAIL).
    public let mergeFieldCount: Int?
    /// The average open rate (a percentage represented as a number between 0 and 100) per campaign for the list (not returned if we haven't calculated it yet).
    public let openRate: Double?
    /// The target number of subscriptions per month for the list to keep it growing (not returned if we haven't calculated it yet).
    public let targetSubRate: Double?
    /// An approximate count of subscribed, unsubscribed, and transactional contacts in the list. Does not include cleaned, archived, pending, or contacts that need to be reconfirmed. Requires the (deprecated) include_total_contacts query parameter to be included; for a complete audience contact count, use the /audiences endpoint instead.
    public let totalContacts: Int?
    /// The number of members who have unsubscribed from the list.
    public let unsubscribeCount: Int?
    /// The number of members who have unsubscribed since the last campaign was sent.
    public let unsubscribeCountSinceSend: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        avgSubRate: Double? = nil,
        avgUnsubRate: Double? = nil,
        campaignCount: Int? = nil,
        campaignLastSent: Date? = nil,
        cleanedCount: Int? = nil,
        cleanedCountSinceSend: Int? = nil,
        clickRate: Double? = nil,
        lastSubDate: Date? = nil,
        lastUnsubDate: Date? = nil,
        memberCount: Int? = nil,
        memberCountSinceSend: Int? = nil,
        mergeFieldCount: Int? = nil,
        openRate: Double? = nil,
        targetSubRate: Double? = nil,
        totalContacts: Int? = nil,
        unsubscribeCount: Int? = nil,
        unsubscribeCountSinceSend: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.avgSubRate = avgSubRate
        self.avgUnsubRate = avgUnsubRate
        self.campaignCount = campaignCount
        self.campaignLastSent = campaignLastSent
        self.cleanedCount = cleanedCount
        self.cleanedCountSinceSend = cleanedCountSinceSend
        self.clickRate = clickRate
        self.lastSubDate = lastSubDate
        self.lastUnsubDate = lastUnsubDate
        self.memberCount = memberCount
        self.memberCountSinceSend = memberCountSinceSend
        self.mergeFieldCount = mergeFieldCount
        self.openRate = openRate
        self.targetSubRate = targetSubRate
        self.totalContacts = totalContacts
        self.unsubscribeCount = unsubscribeCount
        self.unsubscribeCountSinceSend = unsubscribeCountSinceSend
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.avgSubRate = try container.decodeIfPresent(Double.self, forKey: .avgSubRate)
        self.avgUnsubRate = try container.decodeIfPresent(Double.self, forKey: .avgUnsubRate)
        self.campaignCount = try container.decodeIfPresent(Int.self, forKey: .campaignCount)
        self.campaignLastSent = try container.decodeIfPresent(Date.self, forKey: .campaignLastSent)
        self.cleanedCount = try container.decodeIfPresent(Int.self, forKey: .cleanedCount)
        self.cleanedCountSinceSend = try container.decodeIfPresent(Int.self, forKey: .cleanedCountSinceSend)
        self.clickRate = try container.decodeIfPresent(Double.self, forKey: .clickRate)
        self.lastSubDate = try container.decodeIfPresent(Date.self, forKey: .lastSubDate)
        self.lastUnsubDate = try container.decodeIfPresent(Date.self, forKey: .lastUnsubDate)
        self.memberCount = try container.decodeIfPresent(Int.self, forKey: .memberCount)
        self.memberCountSinceSend = try container.decodeIfPresent(Int.self, forKey: .memberCountSinceSend)
        self.mergeFieldCount = try container.decodeIfPresent(Int.self, forKey: .mergeFieldCount)
        self.openRate = try container.decodeIfPresent(Double.self, forKey: .openRate)
        self.targetSubRate = try container.decodeIfPresent(Double.self, forKey: .targetSubRate)
        self.totalContacts = try container.decodeIfPresent(Int.self, forKey: .totalContacts)
        self.unsubscribeCount = try container.decodeIfPresent(Int.self, forKey: .unsubscribeCount)
        self.unsubscribeCountSinceSend = try container.decodeIfPresent(Int.self, forKey: .unsubscribeCountSinceSend)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.avgSubRate, forKey: .avgSubRate)
        try container.encodeIfPresent(self.avgUnsubRate, forKey: .avgUnsubRate)
        try container.encodeIfPresent(self.campaignCount, forKey: .campaignCount)
        try container.encodeIfPresent(self.campaignLastSent, forKey: .campaignLastSent)
        try container.encodeIfPresent(self.cleanedCount, forKey: .cleanedCount)
        try container.encodeIfPresent(self.cleanedCountSinceSend, forKey: .cleanedCountSinceSend)
        try container.encodeIfPresent(self.clickRate, forKey: .clickRate)
        try container.encodeIfPresent(self.lastSubDate, forKey: .lastSubDate)
        try container.encodeIfPresent(self.lastUnsubDate, forKey: .lastUnsubDate)
        try container.encodeIfPresent(self.memberCount, forKey: .memberCount)
        try container.encodeIfPresent(self.memberCountSinceSend, forKey: .memberCountSinceSend)
        try container.encodeIfPresent(self.mergeFieldCount, forKey: .mergeFieldCount)
        try container.encodeIfPresent(self.openRate, forKey: .openRate)
        try container.encodeIfPresent(self.targetSubRate, forKey: .targetSubRate)
        try container.encodeIfPresent(self.totalContacts, forKey: .totalContacts)
        try container.encodeIfPresent(self.unsubscribeCount, forKey: .unsubscribeCount)
        try container.encodeIfPresent(self.unsubscribeCountSinceSend, forKey: .unsubscribeCountSinceSend)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case avgSubRate = "avg_sub_rate"
        case avgUnsubRate = "avg_unsub_rate"
        case campaignCount = "campaign_count"
        case campaignLastSent = "campaign_last_sent"
        case cleanedCount = "cleaned_count"
        case cleanedCountSinceSend = "cleaned_count_since_send"
        case clickRate = "click_rate"
        case lastSubDate = "last_sub_date"
        case lastUnsubDate = "last_unsub_date"
        case memberCount = "member_count"
        case memberCountSinceSend = "member_count_since_send"
        case mergeFieldCount = "merge_field_count"
        case openRate = "open_rate"
        case targetSubRate = "target_sub_rate"
        case totalContacts = "total_contacts"
        case unsubscribeCount = "unsubscribe_count"
        case unsubscribeCountSinceSend = "unsubscribe_count_since_send"
    }
}