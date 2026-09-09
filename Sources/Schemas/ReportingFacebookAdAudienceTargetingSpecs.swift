import Foundation

public struct ReportingFacebookAdAudienceTargetingSpecs: Codable, Hashable, Sendable {
    public let gender: Int?
    public let interests: [ReportingFacebookAdAudienceTargetingSpecsInterestsItem]?
    public let locations: ReportingFacebookAdAudienceTargetingSpecsLocations?
    public let maxAge: Int?
    public let minAge: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        gender: Int? = nil,
        interests: [ReportingFacebookAdAudienceTargetingSpecsInterestsItem]? = nil,
        locations: ReportingFacebookAdAudienceTargetingSpecsLocations? = nil,
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
        self.interests = try container.decodeIfPresent([ReportingFacebookAdAudienceTargetingSpecsInterestsItem].self, forKey: .interests)
        self.locations = try container.decodeIfPresent(ReportingFacebookAdAudienceTargetingSpecsLocations.self, forKey: .locations)
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