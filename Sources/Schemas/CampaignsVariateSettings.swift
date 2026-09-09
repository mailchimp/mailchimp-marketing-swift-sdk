import Foundation

/// The settings specific to A/B test campaigns.
public struct CampaignsVariateSettings: Codable, Hashable, Sendable {
    /// Combinations of possible variables used to build emails.
    public let combinations: [CampaignsVariateSettingsCombinationsItem]?
    /// Descriptions of possible email contents. To set campaign contents, make a PUT request to /campaigns/{campaign_id}/content with the field 'variate_contents'.
    public let contents: [String]?
    /// The possible from names. The number of from_names provided must match the number of reply_to_addresses. If no from_names are provided, settings.from_name will be used.
    public let fromNames: [String]?
    /// The possible reply-to addresses. The number of reply_to_addresses provided must match the number of from_names. If no reply_to_addresses are provided, settings.reply_to will be used.
    public let replyToAddresses: [String]?
    /// The possible send times to test. The times provided should be in the format YYYY-MM-DD HH:MM:SS. If send_times are provided to test, the test_size will be set to 100% and winner_criteria will be ignored.
    public let sendTimes: [Date]?
    /// The possible subject lines to test. If no subject lines are provided, settings.subject_line will be used.
    public let subjectLines: [String]?
    /// The percentage of recipients to send the test combinations to, must be a value between 10 and 100.
    public let testSize: Int?
    /// The number of minutes to wait before choosing the winning campaign. The value of wait_time must be greater than 0 and in whole hours, specified in minutes.
    public let waitTime: Int?
    /// The combination that performs the best. This may be determined automatically by click rate, open rate, or total revenue -- or you may choose manually based on the reporting data you find the most valuable. For Multivariate Campaigns testing send_time, winner_criteria is ignored. For Multivariate Campaigns with 'manual' as the winner_criteria, the winner must be chosen in the Mailchimp web application.
    public let winnerCriteria: CampaignsVariateSettingsWinnerCriteria?
    /// ID of the campaign that was sent to the remaining recipients based on the winning combination.
    public let winningCampaignId: String?
    /// ID for the winning combination.
    public let winningCombinationId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        combinations: [CampaignsVariateSettingsCombinationsItem]? = nil,
        contents: [String]? = nil,
        fromNames: [String]? = nil,
        replyToAddresses: [String]? = nil,
        sendTimes: [Date]? = nil,
        subjectLines: [String]? = nil,
        testSize: Int? = nil,
        waitTime: Int? = nil,
        winnerCriteria: CampaignsVariateSettingsWinnerCriteria? = nil,
        winningCampaignId: String? = nil,
        winningCombinationId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.combinations = combinations
        self.contents = contents
        self.fromNames = fromNames
        self.replyToAddresses = replyToAddresses
        self.sendTimes = sendTimes
        self.subjectLines = subjectLines
        self.testSize = testSize
        self.waitTime = waitTime
        self.winnerCriteria = winnerCriteria
        self.winningCampaignId = winningCampaignId
        self.winningCombinationId = winningCombinationId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.combinations = try container.decodeIfPresent([CampaignsVariateSettingsCombinationsItem].self, forKey: .combinations)
        self.contents = try container.decodeIfPresent([String].self, forKey: .contents)
        self.fromNames = try container.decodeIfPresent([String].self, forKey: .fromNames)
        self.replyToAddresses = try container.decodeIfPresent([String].self, forKey: .replyToAddresses)
        self.sendTimes = try container.decodeIfPresent([Date].self, forKey: .sendTimes)
        self.subjectLines = try container.decodeIfPresent([String].self, forKey: .subjectLines)
        self.testSize = try container.decodeIfPresent(Int.self, forKey: .testSize)
        self.waitTime = try container.decodeIfPresent(Int.self, forKey: .waitTime)
        self.winnerCriteria = try container.decodeIfPresent(CampaignsVariateSettingsWinnerCriteria.self, forKey: .winnerCriteria)
        self.winningCampaignId = try container.decodeIfPresent(String.self, forKey: .winningCampaignId)
        self.winningCombinationId = try container.decodeIfPresent(String.self, forKey: .winningCombinationId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.combinations, forKey: .combinations)
        try container.encodeIfPresent(self.contents, forKey: .contents)
        try container.encodeIfPresent(self.fromNames, forKey: .fromNames)
        try container.encodeIfPresent(self.replyToAddresses, forKey: .replyToAddresses)
        try container.encodeIfPresent(self.sendTimes, forKey: .sendTimes)
        try container.encodeIfPresent(self.subjectLines, forKey: .subjectLines)
        try container.encodeIfPresent(self.testSize, forKey: .testSize)
        try container.encodeIfPresent(self.waitTime, forKey: .waitTime)
        try container.encodeIfPresent(self.winnerCriteria, forKey: .winnerCriteria)
        try container.encodeIfPresent(self.winningCampaignId, forKey: .winningCampaignId)
        try container.encodeIfPresent(self.winningCombinationId, forKey: .winningCombinationId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case combinations
        case contents
        case fromNames = "from_names"
        case replyToAddresses = "reply_to_addresses"
        case sendTimes = "send_times"
        case subjectLines = "subject_lines"
        case testSize = "test_size"
        case waitTime = "wait_time"
        case winnerCriteria = "winner_criteria"
        case winningCampaignId = "winning_campaign_id"
        case winningCombinationId = "winning_combination_id"
    }
}