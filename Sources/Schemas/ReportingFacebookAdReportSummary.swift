import Foundation

/// Report summary of facebook ad
public struct ReportingFacebookAdReportSummary: Codable, Hashable, Sendable {
    public let averageDailyBudget: ReportingFacebookAdReportSummaryAverageDailyBudget?
    public let averageOrderAmount: ReportingFacebookAdReportSummaryAverageOrderAmount?
    public let clickRate: Double?
    public let clicks: Int?
    public let comments: Int?
    public let costPerClick: ReportingFacebookAdReportSummaryCostPerClick?
    public let ecommerce: ReportingFacebookAdReportSummaryEcommerce?
    public let extendedAt: ReportingFacebookAdReportSummaryExtendedAt?
    public let firstTimeBuyers: Int?
    public let hasExtendedAdDuration: Bool?
    public let impressions: Int?
    public let likes: Int?
    public let reach: Int?
    public let returnOnInvestment: Double?
    public let shares: Int?
    public let totalOrders: Int?
    public let totalProductsSold: Int?
    public let uniqueClicks: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        averageDailyBudget: ReportingFacebookAdReportSummaryAverageDailyBudget? = nil,
        averageOrderAmount: ReportingFacebookAdReportSummaryAverageOrderAmount? = nil,
        clickRate: Double? = nil,
        clicks: Int? = nil,
        comments: Int? = nil,
        costPerClick: ReportingFacebookAdReportSummaryCostPerClick? = nil,
        ecommerce: ReportingFacebookAdReportSummaryEcommerce? = nil,
        extendedAt: ReportingFacebookAdReportSummaryExtendedAt? = nil,
        firstTimeBuyers: Int? = nil,
        hasExtendedAdDuration: Bool? = nil,
        impressions: Int? = nil,
        likes: Int? = nil,
        reach: Int? = nil,
        returnOnInvestment: Double? = nil,
        shares: Int? = nil,
        totalOrders: Int? = nil,
        totalProductsSold: Int? = nil,
        uniqueClicks: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.averageDailyBudget = averageDailyBudget
        self.averageOrderAmount = averageOrderAmount
        self.clickRate = clickRate
        self.clicks = clicks
        self.comments = comments
        self.costPerClick = costPerClick
        self.ecommerce = ecommerce
        self.extendedAt = extendedAt
        self.firstTimeBuyers = firstTimeBuyers
        self.hasExtendedAdDuration = hasExtendedAdDuration
        self.impressions = impressions
        self.likes = likes
        self.reach = reach
        self.returnOnInvestment = returnOnInvestment
        self.shares = shares
        self.totalOrders = totalOrders
        self.totalProductsSold = totalProductsSold
        self.uniqueClicks = uniqueClicks
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.averageDailyBudget = try container.decodeIfPresent(ReportingFacebookAdReportSummaryAverageDailyBudget.self, forKey: .averageDailyBudget)
        self.averageOrderAmount = try container.decodeIfPresent(ReportingFacebookAdReportSummaryAverageOrderAmount.self, forKey: .averageOrderAmount)
        self.clickRate = try container.decodeIfPresent(Double.self, forKey: .clickRate)
        self.clicks = try container.decodeIfPresent(Int.self, forKey: .clicks)
        self.comments = try container.decodeIfPresent(Int.self, forKey: .comments)
        self.costPerClick = try container.decodeIfPresent(ReportingFacebookAdReportSummaryCostPerClick.self, forKey: .costPerClick)
        self.ecommerce = try container.decodeIfPresent(ReportingFacebookAdReportSummaryEcommerce.self, forKey: .ecommerce)
        self.extendedAt = try container.decodeIfPresent(ReportingFacebookAdReportSummaryExtendedAt.self, forKey: .extendedAt)
        self.firstTimeBuyers = try container.decodeIfPresent(Int.self, forKey: .firstTimeBuyers)
        self.hasExtendedAdDuration = try container.decodeIfPresent(Bool.self, forKey: .hasExtendedAdDuration)
        self.impressions = try container.decodeIfPresent(Int.self, forKey: .impressions)
        self.likes = try container.decodeIfPresent(Int.self, forKey: .likes)
        self.reach = try container.decodeIfPresent(Int.self, forKey: .reach)
        self.returnOnInvestment = try container.decodeIfPresent(Double.self, forKey: .returnOnInvestment)
        self.shares = try container.decodeIfPresent(Int.self, forKey: .shares)
        self.totalOrders = try container.decodeIfPresent(Int.self, forKey: .totalOrders)
        self.totalProductsSold = try container.decodeIfPresent(Int.self, forKey: .totalProductsSold)
        self.uniqueClicks = try container.decodeIfPresent(Int.self, forKey: .uniqueClicks)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.averageDailyBudget, forKey: .averageDailyBudget)
        try container.encodeIfPresent(self.averageOrderAmount, forKey: .averageOrderAmount)
        try container.encodeIfPresent(self.clickRate, forKey: .clickRate)
        try container.encodeIfPresent(self.clicks, forKey: .clicks)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.costPerClick, forKey: .costPerClick)
        try container.encodeIfPresent(self.ecommerce, forKey: .ecommerce)
        try container.encodeIfPresent(self.extendedAt, forKey: .extendedAt)
        try container.encodeIfPresent(self.firstTimeBuyers, forKey: .firstTimeBuyers)
        try container.encodeIfPresent(self.hasExtendedAdDuration, forKey: .hasExtendedAdDuration)
        try container.encodeIfPresent(self.impressions, forKey: .impressions)
        try container.encodeIfPresent(self.likes, forKey: .likes)
        try container.encodeIfPresent(self.reach, forKey: .reach)
        try container.encodeIfPresent(self.returnOnInvestment, forKey: .returnOnInvestment)
        try container.encodeIfPresent(self.shares, forKey: .shares)
        try container.encodeIfPresent(self.totalOrders, forKey: .totalOrders)
        try container.encodeIfPresent(self.totalProductsSold, forKey: .totalProductsSold)
        try container.encodeIfPresent(self.uniqueClicks, forKey: .uniqueClicks)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case averageDailyBudget = "average_daily_budget"
        case averageOrderAmount = "average_order_amount"
        case clickRate = "click_rate"
        case clicks
        case comments
        case costPerClick = "cost_per_click"
        case ecommerce
        case extendedAt = "extended_at"
        case firstTimeBuyers = "first_time_buyers"
        case hasExtendedAdDuration = "has_extended_ad_duration"
        case impressions
        case likes
        case reach
        case returnOnInvestment = "return_on_investment"
        case shares
        case totalOrders = "total_orders"
        case totalProductsSold = "total_products_sold"
        case uniqueClicks = "unique_clicks"
    }
}