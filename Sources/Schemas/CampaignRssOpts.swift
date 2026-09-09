import Foundation

/// [RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options for a campaign.
public struct CampaignRssOpts: Codable, Hashable, Sendable {
    /// Whether to add CSS to images in the RSS feed to constrain their width in campaigns.
    public let constrainRssImg: Bool?
    /// The URL for the RSS feed.
    public let feedUrl: String
    /// The frequency of the RSS Campaign.
    public let frequency: CampaignRssOptsFrequency
    /// The date the campaign was last sent.
    public let lastSent: Date?
    /// The schedule for sending the RSS Campaign.
    public let schedule: CampaignRssOptsSchedule?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        constrainRssImg: Bool? = nil,
        feedUrl: String,
        frequency: CampaignRssOptsFrequency,
        lastSent: Date? = nil,
        schedule: CampaignRssOptsSchedule? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.constrainRssImg = constrainRssImg
        self.feedUrl = feedUrl
        self.frequency = frequency
        self.lastSent = lastSent
        self.schedule = schedule
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.constrainRssImg = try container.decodeIfPresent(Bool.self, forKey: .constrainRssImg)
        self.feedUrl = try container.decode(String.self, forKey: .feedUrl)
        self.frequency = try container.decode(CampaignRssOptsFrequency.self, forKey: .frequency)
        self.lastSent = try container.decodeIfPresent(Date.self, forKey: .lastSent)
        self.schedule = try container.decodeIfPresent(CampaignRssOptsSchedule.self, forKey: .schedule)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.constrainRssImg, forKey: .constrainRssImg)
        try container.encode(self.feedUrl, forKey: .feedUrl)
        try container.encode(self.frequency, forKey: .frequency)
        try container.encodeIfPresent(self.lastSent, forKey: .lastSent)
        try container.encodeIfPresent(self.schedule, forKey: .schedule)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case constrainRssImg = "constrain_rss_img"
        case feedUrl = "feed_url"
        case frequency
        case lastSent = "last_sent"
        case schedule
    }
}