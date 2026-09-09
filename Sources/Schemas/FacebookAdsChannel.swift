import Foundation

/// Channel settings
public struct FacebookAdsChannel: Codable, Hashable, Sendable {
    /// Is this for facebook audience
    public let fbPlacementAudience: Bool?
    /// Is this for facebook feed
    public let fbPlacementFeed: Bool?
    /// Is this for instagram feed
    public let igPlacementFeed: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fbPlacementAudience: Bool? = nil,
        fbPlacementFeed: Bool? = nil,
        igPlacementFeed: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fbPlacementAudience = fbPlacementAudience
        self.fbPlacementFeed = fbPlacementFeed
        self.igPlacementFeed = igPlacementFeed
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fbPlacementAudience = try container.decodeIfPresent(Bool.self, forKey: .fbPlacementAudience)
        self.fbPlacementFeed = try container.decodeIfPresent(Bool.self, forKey: .fbPlacementFeed)
        self.igPlacementFeed = try container.decodeIfPresent(Bool.self, forKey: .igPlacementFeed)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.fbPlacementAudience, forKey: .fbPlacementAudience)
        try container.encodeIfPresent(self.fbPlacementFeed, forKey: .fbPlacementFeed)
        try container.encodeIfPresent(self.igPlacementFeed, forKey: .igPlacementFeed)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fbPlacementAudience = "fb_placement_audience"
        case fbPlacementFeed = "fb_placement_feed"
        case igPlacementFeed = "ig_placement_feed"
    }
}