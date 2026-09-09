import Foundation

/// List settings for the Automation.
public struct AutomationWorkflowRecipients: Codable, Hashable, Sendable {
    /// The unique list id.
    public let listId: String?
    /// The status of the list used, namely if it's deleted or disabled.
    public let listIsActive: Bool?
    /// List Name.
    public let listName: String?
    public let segmentOpts: SegmentType?
    /// The id of the store.
    public let storeId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        listId: String? = nil,
        listIsActive: Bool? = nil,
        listName: String? = nil,
        segmentOpts: SegmentType? = nil,
        storeId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.listId = listId
        self.listIsActive = listIsActive
        self.listName = listName
        self.segmentOpts = segmentOpts
        self.storeId = storeId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.listIsActive = try container.decodeIfPresent(Bool.self, forKey: .listIsActive)
        self.listName = try container.decodeIfPresent(String.self, forKey: .listName)
        self.segmentOpts = try container.decodeIfPresent(SegmentType.self, forKey: .segmentOpts)
        self.storeId = try container.decodeIfPresent(String.self, forKey: .storeId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.listIsActive, forKey: .listIsActive)
        try container.encodeIfPresent(self.listName, forKey: .listName)
        try container.encodeIfPresent(self.segmentOpts, forKey: .segmentOpts)
        try container.encodeIfPresent(self.storeId, forKey: .storeId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case listId = "list_id"
        case listIsActive = "list_is_active"
        case listName = "list_name"
        case segmentOpts = "segment_opts"
        case storeId = "store_id"
    }
}