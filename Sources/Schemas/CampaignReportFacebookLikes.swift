import Foundation

/// An object describing campaign engagement on Facebook.
public struct CampaignReportFacebookLikes: Codable, Hashable, Sendable {
    /// The number of Facebook likes for the campaign.
    public let facebookLikes: Int?
    /// The number of recipients who liked the campaign on Facebook.
    public let recipientLikes: Int?
    /// The number of unique likes.
    public let uniqueLikes: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        facebookLikes: Int? = nil,
        recipientLikes: Int? = nil,
        uniqueLikes: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.facebookLikes = facebookLikes
        self.recipientLikes = recipientLikes
        self.uniqueLikes = uniqueLikes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.facebookLikes = try container.decodeIfPresent(Int.self, forKey: .facebookLikes)
        self.recipientLikes = try container.decodeIfPresent(Int.self, forKey: .recipientLikes)
        self.uniqueLikes = try container.decodeIfPresent(Int.self, forKey: .uniqueLikes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.facebookLikes, forKey: .facebookLikes)
        try container.encodeIfPresent(self.recipientLikes, forKey: .recipientLikes)
        try container.encodeIfPresent(self.uniqueLikes, forKey: .uniqueLikes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case facebookLikes = "facebook_likes"
        case recipientLikes = "recipient_likes"
        case uniqueLikes = "unique_likes"
    }
}