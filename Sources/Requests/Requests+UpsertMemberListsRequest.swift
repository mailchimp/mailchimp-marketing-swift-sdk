import Foundation

extension Requests {
    public struct UpsertMemberListsRequest: Codable, Hashable, Sendable {
        /// Email address for a subscriber. This value is required only if the email address is not already present on the list.
        public let emailAddress: String
        /// Type of email this member asked to get ('html' or 'text').
        public let emailType: String?
        /// The key of this object's properties is the ID of the interest in question.
        public let interests: [String: Bool]?
        /// The IP address the subscriber used to confirm their opt-in status.
        public let ipOpt: String?
        /// IP address the subscriber signed up from.
        public let ipSignup: String?
        /// If set/detected, the [subscriber's language](https://mailchimp.com/help/view-and-edit-contact-languages/).
        public let language: String?
        /// Subscriber location information.
        public let location: UpsertMemberListsRequestLocation?
        /// The marketing permissions for the subscriber.
        public let marketingPermissions: [UpsertMemberListsRequestMarketingPermissionsItem]?
        /// A dictionary of merge fields where the keys are the merge tags. See the [Merge Fields documentation](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for more about the structure.
        public let mergeFields: [String: UpsertMemberListsRequestMergeFieldsValue]?
        /// Subscriber's current status.
        public let status: UpsertMemberListsRequestStatus?
        /// Subscriber's status. This value is required only if the email address is not already present on the list.
        public let statusIfNew: UpsertMemberListsRequestStatusIfNew?
        /// The tags that are associated with a member.
        public let tags: [String]?
        public let timestampOpt: UpsertMemberListsRequestTimestampOpt?
        public let timestampSignup: UpsertMemberListsRequestTimestampSignup?
        /// [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.
        public let vip: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            emailAddress: String,
            emailType: String? = nil,
            interests: [String: Bool]? = nil,
            ipOpt: String? = nil,
            ipSignup: String? = nil,
            language: String? = nil,
            location: UpsertMemberListsRequestLocation? = nil,
            marketingPermissions: [UpsertMemberListsRequestMarketingPermissionsItem]? = nil,
            mergeFields: [String: UpsertMemberListsRequestMergeFieldsValue]? = nil,
            status: UpsertMemberListsRequestStatus? = nil,
            statusIfNew: UpsertMemberListsRequestStatusIfNew? = nil,
            tags: [String]? = nil,
            timestampOpt: UpsertMemberListsRequestTimestampOpt? = nil,
            timestampSignup: UpsertMemberListsRequestTimestampSignup? = nil,
            vip: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.emailAddress = emailAddress
            self.emailType = emailType
            self.interests = interests
            self.ipOpt = ipOpt
            self.ipSignup = ipSignup
            self.language = language
            self.location = location
            self.marketingPermissions = marketingPermissions
            self.mergeFields = mergeFields
            self.status = status
            self.statusIfNew = statusIfNew
            self.tags = tags
            self.timestampOpt = timestampOpt
            self.timestampSignup = timestampSignup
            self.vip = vip
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.emailAddress = try container.decode(String.self, forKey: .emailAddress)
            self.emailType = try container.decodeIfPresent(String.self, forKey: .emailType)
            self.interests = try container.decodeIfPresent([String: Bool].self, forKey: .interests)
            self.ipOpt = try container.decodeIfPresent(String.self, forKey: .ipOpt)
            self.ipSignup = try container.decodeIfPresent(String.self, forKey: .ipSignup)
            self.language = try container.decodeIfPresent(String.self, forKey: .language)
            self.location = try container.decodeIfPresent(UpsertMemberListsRequestLocation.self, forKey: .location)
            self.marketingPermissions = try container.decodeIfPresent([UpsertMemberListsRequestMarketingPermissionsItem].self, forKey: .marketingPermissions)
            self.mergeFields = try container.decodeIfPresent([String: UpsertMemberListsRequestMergeFieldsValue].self, forKey: .mergeFields)
            self.status = try container.decodeIfPresent(UpsertMemberListsRequestStatus.self, forKey: .status)
            self.statusIfNew = try container.decodeIfPresent(UpsertMemberListsRequestStatusIfNew.self, forKey: .statusIfNew)
            self.tags = try container.decodeIfPresent([String].self, forKey: .tags)
            self.timestampOpt = try container.decodeIfPresent(UpsertMemberListsRequestTimestampOpt.self, forKey: .timestampOpt)
            self.timestampSignup = try container.decodeIfPresent(UpsertMemberListsRequestTimestampSignup.self, forKey: .timestampSignup)
            self.vip = try container.decodeIfPresent(Bool.self, forKey: .vip)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.emailAddress, forKey: .emailAddress)
            try container.encodeIfPresent(self.emailType, forKey: .emailType)
            try container.encodeIfPresent(self.interests, forKey: .interests)
            try container.encodeIfPresent(self.ipOpt, forKey: .ipOpt)
            try container.encodeIfPresent(self.ipSignup, forKey: .ipSignup)
            try container.encodeIfPresent(self.language, forKey: .language)
            try container.encodeIfPresent(self.location, forKey: .location)
            try container.encodeIfPresent(self.marketingPermissions, forKey: .marketingPermissions)
            try container.encodeIfPresent(self.mergeFields, forKey: .mergeFields)
            try container.encodeIfPresent(self.status, forKey: .status)
            try container.encodeIfPresent(self.statusIfNew, forKey: .statusIfNew)
            try container.encodeIfPresent(self.tags, forKey: .tags)
            try container.encodeIfPresent(self.timestampOpt, forKey: .timestampOpt)
            try container.encodeIfPresent(self.timestampSignup, forKey: .timestampSignup)
            try container.encodeIfPresent(self.vip, forKey: .vip)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case emailAddress = "email_address"
            case emailType = "email_type"
            case interests
            case ipOpt = "ip_opt"
            case ipSignup = "ip_signup"
            case language
            case location
            case marketingPermissions = "marketing_permissions"
            case mergeFields = "merge_fields"
            case status
            case statusIfNew = "status_if_new"
            case tags
            case timestampOpt = "timestamp_opt"
            case timestampSignup = "timestamp_signup"
            case vip
        }
    }
}