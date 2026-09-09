import Foundation

/// Settings for the campaign including the email subject, from name, and from email address.
public struct UpdateEmailAutomationsRequestSettings: Codable, Hashable, Sendable {
    /// The 'from' name for the Automation (not an email address).
    public let fromName: String?
    /// The preview text for the campaign.
    public let previewText: String?
    /// The reply-to email address for the Automation.
    public let replyTo: String?
    /// The subject line for the campaign.
    public let subjectLine: String?
    /// The title of the Automation.
    public let title: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fromName: String? = nil,
        previewText: String? = nil,
        replyTo: String? = nil,
        subjectLine: String? = nil,
        title: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fromName = fromName
        self.previewText = previewText
        self.replyTo = replyTo
        self.subjectLine = subjectLine
        self.title = title
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fromName = try container.decodeIfPresent(String.self, forKey: .fromName)
        self.previewText = try container.decodeIfPresent(String.self, forKey: .previewText)
        self.replyTo = try container.decodeIfPresent(String.self, forKey: .replyTo)
        self.subjectLine = try container.decodeIfPresent(String.self, forKey: .subjectLine)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.fromName, forKey: .fromName)
        try container.encodeIfPresent(self.previewText, forKey: .previewText)
        try container.encodeIfPresent(self.replyTo, forKey: .replyTo)
        try container.encodeIfPresent(self.subjectLine, forKey: .subjectLine)
        try container.encodeIfPresent(self.title, forKey: .title)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fromName = "from_name"
        case previewText = "preview_text"
        case replyTo = "reply_to"
        case subjectLine = "subject_line"
        case title
    }
}