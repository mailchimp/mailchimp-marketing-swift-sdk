import Foundation

/// The schedule for sending the RSS Campaign.
public struct CreateCampaignsRequestRssOptsSchedule: Codable, Hashable, Sendable {
    /// The days of the week to send a daily RSS Campaign.
    public let dailySend: CreateCampaignsRequestRssOptsScheduleDailySend?
    /// The hour to send the campaign in local time. Acceptable hours are 0-23. For example, '4' would be 4am in [your account's default time zone](https://mailchimp.com/help/set-account-details/).
    public let hour: Int?
    /// The day of the month to send a monthly RSS Campaign. Acceptable days are 0-31, where '0' is always the last day of a month. Months with fewer than the selected number of days will not have an RSS campaign sent out that day. For example, RSS Campaigns set to send on the 30th will not go out in February.
    public let monthlySendDate: Double?
    /// The day of the week to send a weekly RSS Campaign.
    public let weeklySendDay: CreateCampaignsRequestRssOptsScheduleWeeklySendDay?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        dailySend: CreateCampaignsRequestRssOptsScheduleDailySend? = nil,
        hour: Int? = nil,
        monthlySendDate: Double? = nil,
        weeklySendDay: CreateCampaignsRequestRssOptsScheduleWeeklySendDay? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.dailySend = dailySend
        self.hour = hour
        self.monthlySendDate = monthlySendDate
        self.weeklySendDay = weeklySendDay
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.dailySend = try container.decodeIfPresent(CreateCampaignsRequestRssOptsScheduleDailySend.self, forKey: .dailySend)
        self.hour = try container.decodeIfPresent(Int.self, forKey: .hour)
        self.monthlySendDate = try container.decodeIfPresent(Double.self, forKey: .monthlySendDate)
        self.weeklySendDay = try container.decodeIfPresent(CreateCampaignsRequestRssOptsScheduleWeeklySendDay.self, forKey: .weeklySendDay)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.dailySend, forKey: .dailySend)
        try container.encodeIfPresent(self.hour, forKey: .hour)
        try container.encodeIfPresent(self.monthlySendDate, forKey: .monthlySendDate)
        try container.encodeIfPresent(self.weeklySendDay, forKey: .weeklySendDay)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case dailySend = "daily_send"
        case hour
        case monthlySendDate = "monthly_send_date"
        case weeklySendDay = "weekly_send_day"
    }
}