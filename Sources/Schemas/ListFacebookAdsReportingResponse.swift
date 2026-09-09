import Foundation

/// A collection of Facebook ads.
public struct ListFacebookAdsReportingResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListFacebookAdsReportingResponseLinksItem]?
    public let facebookAds: [ReportingFacebookAd]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListFacebookAdsReportingResponseLinksItem]? = nil,
        facebookAds: [ReportingFacebookAd]? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.facebookAds = facebookAds
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListFacebookAdsReportingResponseLinksItem].self, forKey: .links)
        self.facebookAds = try container.decodeIfPresent([ReportingFacebookAd].self, forKey: .facebookAds)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.facebookAds, forKey: .facebookAds)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case facebookAds = "facebook_ads"
        case totalItems = "total_items"
    }
}