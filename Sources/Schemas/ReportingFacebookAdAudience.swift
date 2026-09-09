import Foundation

/// Audience settings
public struct ReportingFacebookAdAudience: Codable, Hashable, Sendable {
    public let emailSource: ReportingFacebookAdAudienceEmailSource?
    /// To include list contacts as part of audience
    public let includeSourceInTarget: Bool?
    /// To find similar audience in given country
    public let lookalikeCountryCode: String?
    /// List or Facebook based audience
    public let sourceType: ReportingFacebookAdAudienceSourceType?
    public let targetingSpecs: ReportingFacebookAdAudienceTargetingSpecs?
    /// Type of the audience
    public let type: ReportingFacebookAdAudienceType?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        emailSource: ReportingFacebookAdAudienceEmailSource? = nil,
        includeSourceInTarget: Bool? = nil,
        lookalikeCountryCode: String? = nil,
        sourceType: ReportingFacebookAdAudienceSourceType? = nil,
        targetingSpecs: ReportingFacebookAdAudienceTargetingSpecs? = nil,
        type: ReportingFacebookAdAudienceType? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.emailSource = emailSource
        self.includeSourceInTarget = includeSourceInTarget
        self.lookalikeCountryCode = lookalikeCountryCode
        self.sourceType = sourceType
        self.targetingSpecs = targetingSpecs
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.emailSource = try container.decodeIfPresent(ReportingFacebookAdAudienceEmailSource.self, forKey: .emailSource)
        self.includeSourceInTarget = try container.decodeIfPresent(Bool.self, forKey: .includeSourceInTarget)
        self.lookalikeCountryCode = try container.decodeIfPresent(String.self, forKey: .lookalikeCountryCode)
        self.sourceType = try container.decodeIfPresent(ReportingFacebookAdAudienceSourceType.self, forKey: .sourceType)
        self.targetingSpecs = try container.decodeIfPresent(ReportingFacebookAdAudienceTargetingSpecs.self, forKey: .targetingSpecs)
        self.type = try container.decodeIfPresent(ReportingFacebookAdAudienceType.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.emailSource, forKey: .emailSource)
        try container.encodeIfPresent(self.includeSourceInTarget, forKey: .includeSourceInTarget)
        try container.encodeIfPresent(self.lookalikeCountryCode, forKey: .lookalikeCountryCode)
        try container.encodeIfPresent(self.sourceType, forKey: .sourceType)
        try container.encodeIfPresent(self.targetingSpecs, forKey: .targetingSpecs)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case emailSource = "email_source"
        case includeSourceInTarget = "include_source_in_target"
        case lookalikeCountryCode = "lookalike_country_code"
        case sourceType = "source_type"
        case targetingSpecs = "targeting_specs"
        case type
    }
}