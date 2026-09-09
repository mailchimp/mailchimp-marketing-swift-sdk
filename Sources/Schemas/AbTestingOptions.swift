import Foundation

/// [A/B Testing](https://mailchimp.com/help/about-ab-tests/) options for a campaign.
public struct AbTestingOptions: Codable, Hashable, Sendable {
    /// For campaigns split on 'From Name', the name for Group A.
    public let fromNameA: String?
    /// For campaigns split on 'From Name', the name for Group B.
    public let fromNameB: String?
    /// How we should evaluate a winner. Based on 'opens', 'clicks', or 'manual'.
    public let pickWinner: AbTestingOptionsPickWinner?
    /// For campaigns split on 'From Name', the reply-to address for Group A.
    public let replyEmailA: String?
    /// For campaigns split on 'From Name', the reply-to address for Group B.
    public let replyEmailB: String?
    /// The send time for Group A.
    public let sendTimeA: Date?
    /// The send time for Group B.
    public let sendTimeB: Date?
    /// The send time for the winning version.
    public let sendTimeWinner: String?
    /// The size of the split groups. Campaigns split based on 'schedule' are forced to have a 50/50 split. Valid split integers are between 1-50.
    public let splitSize: Int?
    /// The type of AB split to run.
    public let splitTest: AbTestingOptionsSplitTest?
    /// For campaigns split on 'Subject Line', the subject line for Group A.
    public let subjectA: String?
    /// For campaigns split on 'Subject Line', the subject line for Group B.
    public let subjectB: String?
    /// The amount of time to wait before picking a winner. This cannot be changed after a campaign is sent.
    public let waitTime: Int?
    /// How unit of time for measuring the winner ('hours' or 'days'). This cannot be changed after a campaign is sent.
    public let waitUnits: AbTestingOptionsWaitUnits?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fromNameA: String? = nil,
        fromNameB: String? = nil,
        pickWinner: AbTestingOptionsPickWinner? = nil,
        replyEmailA: String? = nil,
        replyEmailB: String? = nil,
        sendTimeA: Date? = nil,
        sendTimeB: Date? = nil,
        sendTimeWinner: String? = nil,
        splitSize: Int? = nil,
        splitTest: AbTestingOptionsSplitTest? = nil,
        subjectA: String? = nil,
        subjectB: String? = nil,
        waitTime: Int? = nil,
        waitUnits: AbTestingOptionsWaitUnits? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fromNameA = fromNameA
        self.fromNameB = fromNameB
        self.pickWinner = pickWinner
        self.replyEmailA = replyEmailA
        self.replyEmailB = replyEmailB
        self.sendTimeA = sendTimeA
        self.sendTimeB = sendTimeB
        self.sendTimeWinner = sendTimeWinner
        self.splitSize = splitSize
        self.splitTest = splitTest
        self.subjectA = subjectA
        self.subjectB = subjectB
        self.waitTime = waitTime
        self.waitUnits = waitUnits
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fromNameA = try container.decodeIfPresent(String.self, forKey: .fromNameA)
        self.fromNameB = try container.decodeIfPresent(String.self, forKey: .fromNameB)
        self.pickWinner = try container.decodeIfPresent(AbTestingOptionsPickWinner.self, forKey: .pickWinner)
        self.replyEmailA = try container.decodeIfPresent(String.self, forKey: .replyEmailA)
        self.replyEmailB = try container.decodeIfPresent(String.self, forKey: .replyEmailB)
        self.sendTimeA = try container.decodeIfPresent(Date.self, forKey: .sendTimeA)
        self.sendTimeB = try container.decodeIfPresent(Date.self, forKey: .sendTimeB)
        self.sendTimeWinner = try container.decodeIfPresent(String.self, forKey: .sendTimeWinner)
        self.splitSize = try container.decodeIfPresent(Int.self, forKey: .splitSize)
        self.splitTest = try container.decodeIfPresent(AbTestingOptionsSplitTest.self, forKey: .splitTest)
        self.subjectA = try container.decodeIfPresent(String.self, forKey: .subjectA)
        self.subjectB = try container.decodeIfPresent(String.self, forKey: .subjectB)
        self.waitTime = try container.decodeIfPresent(Int.self, forKey: .waitTime)
        self.waitUnits = try container.decodeIfPresent(AbTestingOptionsWaitUnits.self, forKey: .waitUnits)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.fromNameA, forKey: .fromNameA)
        try container.encodeIfPresent(self.fromNameB, forKey: .fromNameB)
        try container.encodeIfPresent(self.pickWinner, forKey: .pickWinner)
        try container.encodeIfPresent(self.replyEmailA, forKey: .replyEmailA)
        try container.encodeIfPresent(self.replyEmailB, forKey: .replyEmailB)
        try container.encodeIfPresent(self.sendTimeA, forKey: .sendTimeA)
        try container.encodeIfPresent(self.sendTimeB, forKey: .sendTimeB)
        try container.encodeIfPresent(self.sendTimeWinner, forKey: .sendTimeWinner)
        try container.encodeIfPresent(self.splitSize, forKey: .splitSize)
        try container.encodeIfPresent(self.splitTest, forKey: .splitTest)
        try container.encodeIfPresent(self.subjectA, forKey: .subjectA)
        try container.encodeIfPresent(self.subjectB, forKey: .subjectB)
        try container.encodeIfPresent(self.waitTime, forKey: .waitTime)
        try container.encodeIfPresent(self.waitUnits, forKey: .waitUnits)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fromNameA = "from_name_a"
        case fromNameB = "from_name_b"
        case pickWinner = "pick_winner"
        case replyEmailA = "reply_email_a"
        case replyEmailB = "reply_email_b"
        case sendTimeA = "send_time_a"
        case sendTimeB = "send_time_b"
        case sendTimeWinner = "send_time_winner"
        case splitSize = "split_size"
        case splitTest = "split_test"
        case subjectA = "subject_a"
        case subjectB = "subject_b"
        case waitTime = "wait_time"
        case waitUnits = "wait_units"
    }
}