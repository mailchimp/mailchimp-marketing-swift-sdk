import Foundation

extension Requests {
    public struct CreateAudienceContactRequest: Codable, Hashable, Sendable {
        public let emailChannel: CreateAudienceContactRequestEmailChannel?
        /// The contact's detected language.
        public let language: String?
        /// A dictionary of merge fields where the keys are the merge tags. See the [Merge Fields documentation](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for more about the structure.
        public let mergeFields: [String: CreateAudienceContactRequestMergeFieldsValue]?
        public let smsChannel: CreateAudienceContactRequestSmsChannel?
        /// An array of tags to add to the contact. Accepts tag name strings or objects with name and status. This operation is append-only; existing tags will be preserved, and only new tags from this array will be added.
        public let tags: [CreateAudienceContactRequestTagsItem]?
        /// If a contact already exists, update them instead of returning a conflict error. When `true` and a matching contact is found (by email or phone), the existing contact is updated with the provided channel data. Defaults to `false`.
        public let updateExisting: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            emailChannel: CreateAudienceContactRequestEmailChannel? = nil,
            language: String? = nil,
            mergeFields: [String: CreateAudienceContactRequestMergeFieldsValue]? = nil,
            smsChannel: CreateAudienceContactRequestSmsChannel? = nil,
            tags: [CreateAudienceContactRequestTagsItem]? = nil,
            updateExisting: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.emailChannel = emailChannel
            self.language = language
            self.mergeFields = mergeFields
            self.smsChannel = smsChannel
            self.tags = tags
            self.updateExisting = updateExisting
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.emailChannel = try container.decodeIfPresent(CreateAudienceContactRequestEmailChannel.self, forKey: .emailChannel)
            self.language = try container.decodeIfPresent(String.self, forKey: .language)
            self.mergeFields = try container.decodeIfPresent([String: CreateAudienceContactRequestMergeFieldsValue].self, forKey: .mergeFields)
            self.smsChannel = try container.decodeIfPresent(CreateAudienceContactRequestSmsChannel.self, forKey: .smsChannel)
            self.tags = try container.decodeIfPresent([CreateAudienceContactRequestTagsItem].self, forKey: .tags)
            self.updateExisting = try container.decodeIfPresent(Bool.self, forKey: .updateExisting)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.emailChannel, forKey: .emailChannel)
            try container.encodeIfPresent(self.language, forKey: .language)
            try container.encodeIfPresent(self.mergeFields, forKey: .mergeFields)
            try container.encodeIfPresent(self.smsChannel, forKey: .smsChannel)
            try container.encodeIfPresent(self.tags, forKey: .tags)
            try container.encodeIfPresent(self.updateExisting, forKey: .updateExisting)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case emailChannel = "email_channel"
            case language
            case mergeFields = "merge_fields"
            case smsChannel = "sms_channel"
            case tags
            case updateExisting = "update_existing"
        }
    }
}