import Foundation

/// [RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options for a campaign.
public struct UpdateCampaignsRequestRssOpts: Codable, Hashable, Sendable {
    /// Whether to add CSS to images in the RSS feed to constrain their width in campaigns.
    public let constrainRssImg: Bool?
    /// The URL for the RSS feed.
    public let feedUrl: String?
    /// The frequency of the RSS Campaign.
    public let frequency: UpdateCampaignsRequestRssOptsFrequency?
    /// The schedule for sending the RSS Campaign.
    public let schedule: UpdateCampaignsRequestRssOptsSchedule?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        constrainRssImg: Bool? = nil,
        feedUrl: String? = nil,
        frequency: UpdateCampaignsRequestRssOptsFrequency? = nil,
        schedule: UpdateCampaignsRequestRssOptsSchedule? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.constrainRssImg = constrainRssImg
        self.feedUrl = feedUrl
        self.frequency = frequency
        self.schedule = schedule
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.constrainRssImg = try container.decodeIfPresent(Bool.self, forKey: .constrainRssImg)
        self.feedUrl = try container.decodeIfPresent(String.self, forKey: .feedUrl)
        self.frequency = try container.decodeIfPresent(UpdateCampaignsRequestRssOptsFrequency.self, forKey: .frequency)
        self.schedule = try container.decodeIfPresent(UpdateCampaignsRequestRssOptsSchedule.self, forKey: .schedule)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.constrainRssImg, forKey: .constrainRssImg)
        try container.encodeIfPresent(self.feedUrl, forKey: .feedUrl)
        try container.encodeIfPresent(self.frequency, forKey: .frequency)
        try container.encodeIfPresent(self.schedule, forKey: .schedule)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case constrainRssImg = "constrain_rss_img"
        case feedUrl = "feed_url"
        case frequency
        case schedule
    }
}