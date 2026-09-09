import Foundation

extension Requests {
    public struct CreateMergeFieldListsRequest: Codable, Hashable, Sendable {
        /// The default value for the merge field if `null`.
        public let defaultValue: String?
        /// The order that the merge field displays on the list signup form.
        public let displayOrder: Int?
        /// Extra text to help the subscriber fill out the form.
        public let helpText: String?
        /// The name of the merge field (audience field).
        public let name: String
        /// Extra options for some merge field types.
        public let options: CreateMergeFieldListsRequestOptions?
        /// Whether the merge field is displayed on the signup form.
        public let `public`: Bool?
        /// Whether the merge field is required to import a contact.
        public let required: Bool?
        /// The merge tag used for Mailchimp campaigns and [adding contact information](https://mailchimp.com/developer/marketing/docs/merge-fields/#add-merge-data-to-contacts).
        public let tag: String?
        /// The [type](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for the merge field.
        public let type: CreateMergeFieldListsRequestType
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            defaultValue: String? = nil,
            displayOrder: Int? = nil,
            helpText: String? = nil,
            name: String,
            options: CreateMergeFieldListsRequestOptions? = nil,
            public: Bool? = nil,
            required: Bool? = nil,
            tag: String? = nil,
            type: CreateMergeFieldListsRequestType,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.defaultValue = defaultValue
            self.displayOrder = displayOrder
            self.helpText = helpText
            self.name = name
            self.options = options
            self.public = `public`
            self.required = required
            self.tag = tag
            self.type = type
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.defaultValue = try container.decodeIfPresent(String.self, forKey: .defaultValue)
            self.displayOrder = try container.decodeIfPresent(Int.self, forKey: .displayOrder)
            self.helpText = try container.decodeIfPresent(String.self, forKey: .helpText)
            self.name = try container.decode(String.self, forKey: .name)
            self.options = try container.decodeIfPresent(CreateMergeFieldListsRequestOptions.self, forKey: .options)
            self.public = try container.decodeIfPresent(Bool.self, forKey: .public)
            self.required = try container.decodeIfPresent(Bool.self, forKey: .required)
            self.tag = try container.decodeIfPresent(String.self, forKey: .tag)
            self.type = try container.decode(CreateMergeFieldListsRequestType.self, forKey: .type)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.defaultValue, forKey: .defaultValue)
            try container.encodeIfPresent(self.displayOrder, forKey: .displayOrder)
            try container.encodeIfPresent(self.helpText, forKey: .helpText)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.options, forKey: .options)
            try container.encodeIfPresent(self.public, forKey: .public)
            try container.encodeIfPresent(self.required, forKey: .required)
            try container.encodeIfPresent(self.tag, forKey: .tag)
            try container.encode(self.type, forKey: .type)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case defaultValue = "default_value"
            case displayOrder = "display_order"
            case helpText = "help_text"
            case name
            case options
            case `public`
            case required
            case tag
            case type
        }
    }
}