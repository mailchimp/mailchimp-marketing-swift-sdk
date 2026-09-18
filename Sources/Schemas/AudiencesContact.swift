import Foundation

/// An instance of a contact.
public struct AudiencesContact: Codable, Hashable, Sendable {
    /// The unique ID for the audience.
    public let audienceId: String?
    /// The date that the contact was created.
    public let createdAt: Date?
    public let emailChannel: AudiencesContactEmailChannel?
    /// The unique ID for the contact.
    public let id: String?
    /// The contact's detected language. Empty string when no language has been detected or set.
    public let language: AudiencesContactLanguage?
    /// The date that the contact was last updated.
    public let lastUpdatedAt: Date?
    /// A dictionary of merge fields where the keys are the merge tags. See the [Merge Fields documentation](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for more about the structure.
    public let mergeFields: [String: AudiencesContactMergeFieldsValue]?
    public let smsChannel: AudiencesContactSmsChannel?
    /// The source from which the parent's entity was created.
    public let source: AudiencesContactSource?
    /// The status of a contact.
    public let status: AudiencesContactStatus?
    /// The tags assigned to this contact.
    public let tags: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        audienceId: String? = nil,
        createdAt: Date? = nil,
        emailChannel: AudiencesContactEmailChannel? = nil,
        id: String? = nil,
        language: AudiencesContactLanguage? = nil,
        lastUpdatedAt: Date? = nil,
        mergeFields: [String: AudiencesContactMergeFieldsValue]? = nil,
        smsChannel: AudiencesContactSmsChannel? = nil,
        source: AudiencesContactSource? = nil,
        status: AudiencesContactStatus? = nil,
        tags: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.audienceId = audienceId
        self.createdAt = createdAt
        self.emailChannel = emailChannel
        self.id = id
        self.language = language
        self.lastUpdatedAt = lastUpdatedAt
        self.mergeFields = mergeFields
        self.smsChannel = smsChannel
        self.source = source
        self.status = status
        self.tags = tags
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.audienceId = try container.decodeIfPresent(String.self, forKey: .audienceId)
        self.createdAt = try container.decodeIfPresent(Date.self, forKey: .createdAt)
        self.emailChannel = try container.decodeIfPresent(AudiencesContactEmailChannel.self, forKey: .emailChannel)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.language = try container.decodeIfPresent(AudiencesContactLanguage.self, forKey: .language)
        self.lastUpdatedAt = try container.decodeIfPresent(Date.self, forKey: .lastUpdatedAt)
        self.mergeFields = try container.decodeIfPresent([String: AudiencesContactMergeFieldsValue].self, forKey: .mergeFields)
        self.smsChannel = try container.decodeIfPresent(AudiencesContactSmsChannel.self, forKey: .smsChannel)
        self.source = try container.decodeIfPresent(AudiencesContactSource.self, forKey: .source)
        self.status = try container.decodeIfPresent(AudiencesContactStatus.self, forKey: .status)
        self.tags = try container.decodeIfPresent([String].self, forKey: .tags)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.audienceId, forKey: .audienceId)
        try container.encodeIfPresent(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.emailChannel, forKey: .emailChannel)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.language, forKey: .language)
        try container.encodeIfPresent(self.lastUpdatedAt, forKey: .lastUpdatedAt)
        try container.encodeIfPresent(self.mergeFields, forKey: .mergeFields)
        try container.encodeIfPresent(self.smsChannel, forKey: .smsChannel)
        try container.encodeIfPresent(self.source, forKey: .source)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.tags, forKey: .tags)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case audienceId = "audience_id"
        case createdAt = "created_at"
        case emailChannel = "email_channel"
        case id
        case language
        case lastUpdatedAt = "last_updated_at"
        case mergeFields = "merge_fields"
        case smsChannel = "sms_channel"
        case source
        case status
        case tags
    }
}