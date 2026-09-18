import Foundation

extension Requests {
    public struct PatchAudienceContactRequest: Codable, Hashable, Sendable {
        public let emailChannel: PatchAudienceContactRequestEmailChannel?
        /// The contact's detected language.
        public let language: String?
        /// A dictionary of merge fields where the keys are the merge tags. See the [Merge Fields documentation](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for more about the structure.
        public let mergeFields: [String: PatchAudienceContactRequestMergeFieldsValue]?
        public let smsChannel: PatchAudienceContactRequestSmsChannel?
        /// An array of tags to add to the contact. Accepts tag name strings or objects with name and status. This operation is append-only; existing tags will be preserved, and only new tags from this array will be added.
        public let tags: [PatchAudienceContactRequestTagsItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            emailChannel: PatchAudienceContactRequestEmailChannel? = nil,
            language: String? = nil,
            mergeFields: [String: PatchAudienceContactRequestMergeFieldsValue]? = nil,
            smsChannel: PatchAudienceContactRequestSmsChannel? = nil,
            tags: [PatchAudienceContactRequestTagsItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.emailChannel = emailChannel
            self.language = language
            self.mergeFields = mergeFields
            self.smsChannel = smsChannel
            self.tags = tags
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.emailChannel = try container.decodeIfPresent(PatchAudienceContactRequestEmailChannel.self, forKey: .emailChannel)
            self.language = try container.decodeIfPresent(String.self, forKey: .language)
            self.mergeFields = try container.decodeIfPresent([String: PatchAudienceContactRequestMergeFieldsValue].self, forKey: .mergeFields)
            self.smsChannel = try container.decodeIfPresent(PatchAudienceContactRequestSmsChannel.self, forKey: .smsChannel)
            self.tags = try container.decodeIfPresent([PatchAudienceContactRequestTagsItem].self, forKey: .tags)
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
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case emailChannel = "email_channel"
            case language
            case mergeFields = "merge_fields"
            case smsChannel = "sms_channel"
            case tags
        }
    }
}