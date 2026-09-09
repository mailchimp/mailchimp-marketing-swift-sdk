import Foundation

/// The clicks and visits data from the last seven days.
public struct LandingPageReportTimeseriesDailyStats: Codable, Hashable, Sendable {
    public let clicks: [LandingPageReportTimeseriesDailyStatsClicksItem]?
    public let uniqueVisits: [LandingPageReportTimeseriesDailyStatsUniqueVisitsItem]?
    public let visits: [LandingPageReportTimeseriesDailyStatsVisitsItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        clicks: [LandingPageReportTimeseriesDailyStatsClicksItem]? = nil,
        uniqueVisits: [LandingPageReportTimeseriesDailyStatsUniqueVisitsItem]? = nil,
        visits: [LandingPageReportTimeseriesDailyStatsVisitsItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.clicks = clicks
        self.uniqueVisits = uniqueVisits
        self.visits = visits
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.clicks = try container.decodeIfPresent([LandingPageReportTimeseriesDailyStatsClicksItem].self, forKey: .clicks)
        self.uniqueVisits = try container.decodeIfPresent([LandingPageReportTimeseriesDailyStatsUniqueVisitsItem].self, forKey: .uniqueVisits)
        self.visits = try container.decodeIfPresent([LandingPageReportTimeseriesDailyStatsVisitsItem].self, forKey: .visits)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.clicks, forKey: .clicks)
        try container.encodeIfPresent(self.uniqueVisits, forKey: .uniqueVisits)
        try container.encodeIfPresent(self.visits, forKey: .visits)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case clicks
        case uniqueVisits = "unique_visits"
        case visits
    }
}