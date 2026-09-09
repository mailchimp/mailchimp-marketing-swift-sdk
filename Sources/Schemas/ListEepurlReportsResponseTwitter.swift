import Foundation

/// A summary of Twitter activity for a campaign.
public struct ListEepurlReportsResponseTwitter: Codable, Hashable, Sendable {
    /// The day and time of the first recorded tweet with a link to the campaign.
    public let firstTweet: String?
    /// The day and time of the last recorded tweet with a link to the campaign.
    public let lastTweet: String?
    /// The number of retweets that include a link to the campaign.
    public let retweets: Int?
    /// A summary of tweets that include a link to the campaign.
    public let statuses: [ListEepurlReportsResponseTwitterStatusesItem]?
    /// The number of tweets including a link to the campaign.
    public let tweets: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        firstTweet: String? = nil,
        lastTweet: String? = nil,
        retweets: Int? = nil,
        statuses: [ListEepurlReportsResponseTwitterStatusesItem]? = nil,
        tweets: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.firstTweet = firstTweet
        self.lastTweet = lastTweet
        self.retweets = retweets
        self.statuses = statuses
        self.tweets = tweets
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.firstTweet = try container.decodeIfPresent(String.self, forKey: .firstTweet)
        self.lastTweet = try container.decodeIfPresent(String.self, forKey: .lastTweet)
        self.retweets = try container.decodeIfPresent(Int.self, forKey: .retweets)
        self.statuses = try container.decodeIfPresent([ListEepurlReportsResponseTwitterStatusesItem].self, forKey: .statuses)
        self.tweets = try container.decodeIfPresent(Int.self, forKey: .tweets)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.firstTweet, forKey: .firstTweet)
        try container.encodeIfPresent(self.lastTweet, forKey: .lastTweet)
        try container.encodeIfPresent(self.retweets, forKey: .retweets)
        try container.encodeIfPresent(self.statuses, forKey: .statuses)
        try container.encodeIfPresent(self.tweets, forKey: .tweets)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case firstTweet = "first_tweet"
        case lastTweet = "last_tweet"
        case retweets
        case statuses
        case tweets
    }
}