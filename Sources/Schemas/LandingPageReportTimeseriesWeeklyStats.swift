import Foundation

/// The clicks and visits data from the last five weeks.
public struct LandingPageReportTimeseriesWeeklyStats: Codable, Hashable, Sendable {
    /// The total number of clicks in a week.
    public let clicks: [LandingPageReportTimeseriesWeeklyStatsClicksItem]?
    public let uniqueVisits: [LandingPageReportTimeseriesWeeklyStatsUniqueVisitsItem]?
    /// The total number of visits in a week.
    public let visits: [LandingPageReportTimeseriesWeeklyStatsVisitsItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        clicks: [LandingPageReportTimeseriesWeeklyStatsClicksItem]? = nil,
        uniqueVisits: [LandingPageReportTimeseriesWeeklyStatsUniqueVisitsItem]? = nil,
        visits: [LandingPageReportTimeseriesWeeklyStatsVisitsItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.clicks = clicks
        self.uniqueVisits = uniqueVisits
        self.visits = visits
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.clicks = try container.decodeIfPresent([LandingPageReportTimeseriesWeeklyStatsClicksItem].self, forKey: .clicks)
        self.uniqueVisits = try container.decodeIfPresent([LandingPageReportTimeseriesWeeklyStatsUniqueVisitsItem].self, forKey: .uniqueVisits)
        self.visits = try container.decodeIfPresent([LandingPageReportTimeseriesWeeklyStatsVisitsItem].self, forKey: .visits)
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