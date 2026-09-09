import Foundation

/// One day's worth of list activity. Doesn't include Automation activity.
public struct ListActivityListsResponseActivityItem: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListActivityListsResponseActivityItemLinksItem]?
    /// The date for the activity summary.
    public let day: String?
    /// The total number of emails sent on the date for the activity summary.
    public let emailsSent: Int?
    /// The number of hard bounces.
    public let hardBounce: Int?
    /// The number of subscribers who may have been added outside of the [double opt-in process](https://mailchimp.com/help/about-double-opt-in/), such as imports or API activity.
    public let otherAdds: Int?
    /// The number of subscribers who may have been removed outside of unsubscribing or reporting an email as spam (for example, deleted subscribers).
    public let otherRemoves: Int?
    /// The number of clicks.
    public let recipientClicks: Int?
    /// The number of soft bounces
    public let softBounce: Int?
    /// The number of subscribes.
    public let subs: Int?
    /// The number of unique opens.
    public let uniqueOpens: Int?
    /// The number of unsubscribes.
    public let unsubs: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListActivityListsResponseActivityItemLinksItem]? = nil,
        day: String? = nil,
        emailsSent: Int? = nil,
        hardBounce: Int? = nil,
        otherAdds: Int? = nil,
        otherRemoves: Int? = nil,
        recipientClicks: Int? = nil,
        softBounce: Int? = nil,
        subs: Int? = nil,
        uniqueOpens: Int? = nil,
        unsubs: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.day = day
        self.emailsSent = emailsSent
        self.hardBounce = hardBounce
        self.otherAdds = otherAdds
        self.otherRemoves = otherRemoves
        self.recipientClicks = recipientClicks
        self.softBounce = softBounce
        self.subs = subs
        self.uniqueOpens = uniqueOpens
        self.unsubs = unsubs
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListActivityListsResponseActivityItemLinksItem].self, forKey: .links)
        self.day = try container.decodeIfPresent(String.self, forKey: .day)
        self.emailsSent = try container.decodeIfPresent(Int.self, forKey: .emailsSent)
        self.hardBounce = try container.decodeIfPresent(Int.self, forKey: .hardBounce)
        self.otherAdds = try container.decodeIfPresent(Int.self, forKey: .otherAdds)
        self.otherRemoves = try container.decodeIfPresent(Int.self, forKey: .otherRemoves)
        self.recipientClicks = try container.decodeIfPresent(Int.self, forKey: .recipientClicks)
        self.softBounce = try container.decodeIfPresent(Int.self, forKey: .softBounce)
        self.subs = try container.decodeIfPresent(Int.self, forKey: .subs)
        self.uniqueOpens = try container.decodeIfPresent(Int.self, forKey: .uniqueOpens)
        self.unsubs = try container.decodeIfPresent(Int.self, forKey: .unsubs)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.day, forKey: .day)
        try container.encodeIfPresent(self.emailsSent, forKey: .emailsSent)
        try container.encodeIfPresent(self.hardBounce, forKey: .hardBounce)
        try container.encodeIfPresent(self.otherAdds, forKey: .otherAdds)
        try container.encodeIfPresent(self.otherRemoves, forKey: .otherRemoves)
        try container.encodeIfPresent(self.recipientClicks, forKey: .recipientClicks)
        try container.encodeIfPresent(self.softBounce, forKey: .softBounce)
        try container.encodeIfPresent(self.subs, forKey: .subs)
        try container.encodeIfPresent(self.uniqueOpens, forKey: .uniqueOpens)
        try container.encodeIfPresent(self.unsubs, forKey: .unsubs)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case day
        case emailsSent = "emails_sent"
        case hardBounce = "hard_bounce"
        case otherAdds = "other_adds"
        case otherRemoves = "other_removes"
        case recipientClicks = "recipient_clicks"
        case softBounce = "soft_bounce"
        case subs
        case uniqueOpens = "unique_opens"
        case unsubs
    }
}