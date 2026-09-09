import Foundation

/// High level audience information for who the outreach targets.
public struct FacebookAdRecipients: Codable, Hashable, Sendable {
    /// The unique list id.
    public let listId: String?
    /// The status of the list used, namely if it's deleted or disabled.
    public let listIsActive: Bool?
    /// The name of the list.
    public let listName: String?
    /// Count of the recipients on the associated list. Formatted as an integer.
    public let recipientCount: Int?
    /// An object representing all segmentation options. This object should contain a `saved_segment_id` to use an existing segment, or you can create a new segment by including both `match` and `conditions` options.
    public let segmentOpts: FacebookAdRecipientsSegmentOpts?
    /// A description of the [segment](https://mailchimp.com/help/save-and-manage-segments/) used for the campaign. Formatted as a string marked up with HTML.
    public let segmentText: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        listId: String? = nil,
        listIsActive: Bool? = nil,
        listName: String? = nil,
        recipientCount: Int? = nil,
        segmentOpts: FacebookAdRecipientsSegmentOpts? = nil,
        segmentText: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.listId = listId
        self.listIsActive = listIsActive
        self.listName = listName
        self.recipientCount = recipientCount
        self.segmentOpts = segmentOpts
        self.segmentText = segmentText
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.listIsActive = try container.decodeIfPresent(Bool.self, forKey: .listIsActive)
        self.listName = try container.decodeIfPresent(String.self, forKey: .listName)
        self.recipientCount = try container.decodeIfPresent(Int.self, forKey: .recipientCount)
        self.segmentOpts = try container.decodeIfPresent(FacebookAdRecipientsSegmentOpts.self, forKey: .segmentOpts)
        self.segmentText = try container.decodeIfPresent(String.self, forKey: .segmentText)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.listIsActive, forKey: .listIsActive)
        try container.encodeIfPresent(self.listName, forKey: .listName)
        try container.encodeIfPresent(self.recipientCount, forKey: .recipientCount)
        try container.encodeIfPresent(self.segmentOpts, forKey: .segmentOpts)
        try container.encodeIfPresent(self.segmentText, forKey: .segmentText)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case listId = "list_id"
        case listIsActive = "list_is_active"
        case listName = "list_name"
        case recipientCount = "recipient_count"
        case segmentOpts = "segment_opts"
        case segmentText = "segment_text"
    }
}