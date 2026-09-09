import Foundation

/// A [merge field](https://mailchimp.com/developer/marketing/docs/merge-fields/) for an audience.
public struct MergeField: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [MergeFieldLinksItem]?
    /// The default value for the merge field if `null`.
    public let defaultValue: String?
    /// The order that the merge field displays on the list signup form.
    public let displayOrder: Int?
    /// Extra text to help the subscriber fill out the form.
    public let helpText: String?
    /// The ID that identifies this merge field's audience'.
    public let listId: String?
    /// The maximum number of merge fields this audience can hold. The limit is determined by the account's plan. Returned on POST responses only. Subtract `total_items` from this value to derive the remaining capacity.
    public let mergeFieldLimit: Int?
    /// An unchanging id for the merge field.
    public let mergeId: Int?
    /// The name of the merge field (audience field).
    public let name: String?
    /// Extra options for some merge field types.
    public let options: MergeFieldOptions?
    /// Whether the merge field is displayed on the signup form.
    public let `public`: Bool?
    /// The boolean value if the merge field is required.
    public let required: Bool?
    /// The merge tag used for Mailchimp campaigns and [adding contact information](https://mailchimp.com/developer/marketing/docs/merge-fields/#add-merge-data-to-contacts).
    public let tag: String?
    /// The total number of merge fields on the audience after this field was created. Returned on POST responses only.
    public let totalItems: Int?
    /// The [type](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for the merge field.
    public let type: MergeFieldType?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [MergeFieldLinksItem]? = nil,
        defaultValue: String? = nil,
        displayOrder: Int? = nil,
        helpText: String? = nil,
        listId: String? = nil,
        mergeFieldLimit: Int? = nil,
        mergeId: Int? = nil,
        name: String? = nil,
        options: MergeFieldOptions? = nil,
        public: Bool? = nil,
        required: Bool? = nil,
        tag: String? = nil,
        totalItems: Int? = nil,
        type: MergeFieldType? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.defaultValue = defaultValue
        self.displayOrder = displayOrder
        self.helpText = helpText
        self.listId = listId
        self.mergeFieldLimit = mergeFieldLimit
        self.mergeId = mergeId
        self.name = name
        self.options = options
        self.public = `public`
        self.required = required
        self.tag = tag
        self.totalItems = totalItems
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([MergeFieldLinksItem].self, forKey: .links)
        self.defaultValue = try container.decodeIfPresent(String.self, forKey: .defaultValue)
        self.displayOrder = try container.decodeIfPresent(Int.self, forKey: .displayOrder)
        self.helpText = try container.decodeIfPresent(String.self, forKey: .helpText)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.mergeFieldLimit = try container.decodeIfPresent(Int.self, forKey: .mergeFieldLimit)
        self.mergeId = try container.decodeIfPresent(Int.self, forKey: .mergeId)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.options = try container.decodeIfPresent(MergeFieldOptions.self, forKey: .options)
        self.public = try container.decodeIfPresent(Bool.self, forKey: .public)
        self.required = try container.decodeIfPresent(Bool.self, forKey: .required)
        self.tag = try container.decodeIfPresent(String.self, forKey: .tag)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.type = try container.decodeIfPresent(MergeFieldType.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.defaultValue, forKey: .defaultValue)
        try container.encodeIfPresent(self.displayOrder, forKey: .displayOrder)
        try container.encodeIfPresent(self.helpText, forKey: .helpText)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.mergeFieldLimit, forKey: .mergeFieldLimit)
        try container.encodeIfPresent(self.mergeId, forKey: .mergeId)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.options, forKey: .options)
        try container.encodeIfPresent(self.public, forKey: .public)
        try container.encodeIfPresent(self.required, forKey: .required)
        try container.encodeIfPresent(self.tag, forKey: .tag)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case defaultValue = "default_value"
        case displayOrder = "display_order"
        case helpText = "help_text"
        case listId = "list_id"
        case mergeFieldLimit = "merge_field_limit"
        case mergeId = "merge_id"
        case name
        case options
        case `public`
        case required
        case tag
        case totalItems = "total_items"
        case type
    }
}