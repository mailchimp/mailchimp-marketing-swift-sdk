import Foundation

/// An individual tweet.
public struct ListEepurlReportsResponseTwitterStatusesItem: Codable, Hashable, Sendable {
    /// A timestamp for the tweet.
    public let datetime: Date?
    /// A 'true' or 'false' status of whether the tweet is a retweet.
    public let isRetweet: Bool?
    /// The Twitter handle for the author of the tweet.
    public let screenName: String?
    /// The body of the tweet.
    public let status: String?
    /// The individual id for the tweet.
    public let statusId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        datetime: Date? = nil,
        isRetweet: Bool? = nil,
        screenName: String? = nil,
        status: String? = nil,
        statusId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.datetime = datetime
        self.isRetweet = isRetweet
        self.screenName = screenName
        self.status = status
        self.statusId = statusId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.datetime = try container.decodeIfPresent(Date.self, forKey: .datetime)
        self.isRetweet = try container.decodeIfPresent(Bool.self, forKey: .isRetweet)
        self.screenName = try container.decodeIfPresent(String.self, forKey: .screenName)
        self.status = try container.decodeIfPresent(String.self, forKey: .status)
        self.statusId = try container.decodeIfPresent(String.self, forKey: .statusId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.datetime, forKey: .datetime)
        try container.encodeIfPresent(self.isRetweet, forKey: .isRetweet)
        try container.encodeIfPresent(self.screenName, forKey: .screenName)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.statusId, forKey: .statusId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case datetime
        case isRetweet = "is_retweet"
        case screenName = "screen_name"
        case status
        case statusId = "status_id"
    }
}