import Foundation

public struct FacebookAdsAudienceTargetingSpecs: Codable, Hashable, Sendable {
    public let gender: Int?
    public let interests: [FacebookAdsAudienceTargetingSpecsInterestsItem]?
    public let locations: FacebookAdsAudienceTargetingSpecsLocations?
    public let maxAge: Int?
    public let minAge: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        gender: Int? = nil,
        interests: [FacebookAdsAudienceTargetingSpecsInterestsItem]? = nil,
        locations: FacebookAdsAudienceTargetingSpecsLocations? = nil,
        maxAge: Int? = nil,
        minAge: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.gender = gender
        self.interests = interests
        self.locations = locations
        self.maxAge = maxAge
        self.minAge = minAge
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.gender = try container.decodeIfPresent(Int.self, forKey: .gender)
        self.interests = try container.decodeIfPresent([FacebookAdsAudienceTargetingSpecsInterestsItem].self, forKey: .interests)
        self.locations = try container.decodeIfPresent(FacebookAdsAudienceTargetingSpecsLocations.self, forKey: .locations)
        self.maxAge = try container.decodeIfPresent(Int.self, forKey: .maxAge)
        self.minAge = try container.decodeIfPresent(Int.self, forKey: .minAge)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.gender, forKey: .gender)
        try container.encodeIfPresent(self.interests, forKey: .interests)
        try container.encodeIfPresent(self.locations, forKey: .locations)
        try container.encodeIfPresent(self.maxAge, forKey: .maxAge)
        try container.encodeIfPresent(self.minAge, forKey: .minAge)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case gender
        case interests
        case locations
        case maxAge = "max_age"
        case minAge = "min_age"
    }
}