import Foundation

public struct CampaignVariateSettingsCombinationsItem: Codable, Hashable, Sendable {
    /// The index of `variate_settings.contents` used.
    public let contentDescription: Int?
    /// The index of `variate_settings.from_names` used.
    public let fromName: Int?
    /// Unique ID for the combination.
    public let id: String?
    /// The number of recipients for this combination.
    public let recipients: Int?
    /// The index of `variate_settings.reply_to_addresses` used.
    public let replyTo: Int?
    /// The index of `variate_settings.send_times` used.
    public let sendTime: Int?
    /// The index of `variate_settings.subject_lines` used.
    public let subjectLine: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        contentDescription: Int? = nil,
        fromName: Int? = nil,
        id: String? = nil,
        recipients: Int? = nil,
        replyTo: Int? = nil,
        sendTime: Int? = nil,
        subjectLine: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.contentDescription = contentDescription
        self.fromName = fromName
        self.id = id
        self.recipients = recipients
        self.replyTo = replyTo
        self.sendTime = sendTime
        self.subjectLine = subjectLine
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.contentDescription = try container.decodeIfPresent(Int.self, forKey: .contentDescription)
        self.fromName = try container.decodeIfPresent(Int.self, forKey: .fromName)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.recipients = try container.decodeIfPresent(Int.self, forKey: .recipients)
        self.replyTo = try container.decodeIfPresent(Int.self, forKey: .replyTo)
        self.sendTime = try container.decodeIfPresent(Int.self, forKey: .sendTime)
        self.subjectLine = try container.decodeIfPresent(Int.self, forKey: .subjectLine)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.contentDescription, forKey: .contentDescription)
        try container.encodeIfPresent(self.fromName, forKey: .fromName)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.recipients, forKey: .recipients)
        try container.encodeIfPresent(self.replyTo, forKey: .replyTo)
        try container.encodeIfPresent(self.sendTime, forKey: .sendTime)
        try container.encodeIfPresent(self.subjectLine, forKey: .subjectLine)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case contentDescription = "content_description"
        case fromName = "from_name"
        case id
        case recipients
        case replyTo = "reply_to"
        case sendTime = "send_time"
        case subjectLine = "subject_line"
    }
}