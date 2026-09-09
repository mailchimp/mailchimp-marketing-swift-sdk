import Foundation

public struct LandingPageReportTimeseries: Codable, Hashable, Sendable {
    /// The clicks and visits data from the last seven days.
    public let dailyStats: LandingPageReportTimeseriesDailyStats?
    /// The clicks and visits data from the last five weeks.
    public let weeklyStats: LandingPageReportTimeseriesWeeklyStats?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        dailyStats: LandingPageReportTimeseriesDailyStats? = nil,
        weeklyStats: LandingPageReportTimeseriesWeeklyStats? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.dailyStats = dailyStats
        self.weeklyStats = weeklyStats
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.dailyStats = try container.decodeIfPresent(LandingPageReportTimeseriesDailyStats.self, forKey: .dailyStats)
        self.weeklyStats = try container.decodeIfPresent(LandingPageReportTimeseriesWeeklyStats.self, forKey: .weeklyStats)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.dailyStats, forKey: .dailyStats)
        try container.encodeIfPresent(self.weeklyStats, forKey: .weeklyStats)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case dailyStats = "daily_stats"
        case weeklyStats = "weekly_stats"
    }
}