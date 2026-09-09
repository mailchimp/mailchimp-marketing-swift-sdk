import Foundation

extension Requests {
    public struct UpdateMemberListsRequest: Codable, Hashable, Sendable {
        /// Email address for a subscriber.
        public let emailAddress: String?
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
        public let location: UpdateMemberListsRequestLocation?
        /// The marketing permissions for the subscriber.
        public let marketingPermissions: [UpdateMemberListsRequestMarketingPermissionsItem]?
        /// A dictionary of merge fields where the keys are the merge tags. See the [Merge Fields documentation](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for more about the structure.
        public let mergeFields: [String: UpdateMemberListsRequestMergeFieldsValue]?
        /// Subscriber's current status.
        public let status: UpdateMemberListsRequestStatus?
        public let timestampOpt: UpdateMemberListsRequestTimestampOpt?
        public let timestampSignup: UpdateMemberListsRequestTimestampSignup?
        /// [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.
        public let vip: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            emailAddress: String? = nil,
            emailType: String? = nil,
            interests: [String: Bool]? = nil,
            ipOpt: String? = nil,
            ipSignup: String? = nil,
            language: String? = nil,
            location: UpdateMemberListsRequestLocation? = nil,
            marketingPermissions: [UpdateMemberListsRequestMarketingPermissionsItem]? = nil,
            mergeFields: [String: UpdateMemberListsRequestMergeFieldsValue]? = nil,
            status: UpdateMemberListsRequestStatus? = nil,
            timestampOpt: UpdateMemberListsRequestTimestampOpt? = nil,
            timestampSignup: UpdateMemberListsRequestTimestampSignup? = nil,
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
            self.timestampOpt = timestampOpt
            self.timestampSignup = timestampSignup
            self.vip = vip
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
            self.emailType = try container.decodeIfPresent(String.self, forKey: .emailType)
            self.interests = try container.decodeIfPresent([String: Bool].self, forKey: .interests)
            self.ipOpt = try container.decodeIfPresent(String.self, forKey: .ipOpt)
            self.ipSignup = try container.decodeIfPresent(String.self, forKey: .ipSignup)
            self.language = try container.decodeIfPresent(String.self, forKey: .language)
            self.location = try container.decodeIfPresent(UpdateMemberListsRequestLocation.self, forKey: .location)
            self.marketingPermissions = try container.decodeIfPresent([UpdateMemberListsRequestMarketingPermissionsItem].self, forKey: .marketingPermissions)
            self.mergeFields = try container.decodeIfPresent([String: UpdateMemberListsRequestMergeFieldsValue].self, forKey: .mergeFields)
            self.status = try container.decodeIfPresent(UpdateMemberListsRequestStatus.self, forKey: .status)
            self.timestampOpt = try container.decodeIfPresent(UpdateMemberListsRequestTimestampOpt.self, forKey: .timestampOpt)
            self.timestampSignup = try container.decodeIfPresent(UpdateMemberListsRequestTimestampSignup.self, forKey: .timestampSignup)
            self.vip = try container.decodeIfPresent(Bool.self, forKey: .vip)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
            try container.encodeIfPresent(self.emailType, forKey: .emailType)
            try container.encodeIfPresent(self.interests, forKey: .interests)
            try container.encodeIfPresent(self.ipOpt, forKey: .ipOpt)
            try container.encodeIfPresent(self.ipSignup, forKey: .ipSignup)
            try container.encodeIfPresent(self.language, forKey: .language)
            try container.encodeIfPresent(self.location, forKey: .location)
            try container.encodeIfPresent(self.marketingPermissions, forKey: .marketingPermissions)
            try container.encodeIfPresent(self.mergeFields, forKey: .mergeFields)
            try container.encodeIfPresent(self.status, forKey: .status)
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
            case timestampOpt = "timestamp_opt"
            case timestampSignup = "timestamp_signup"
            case vip
        }
    }
}