import Foundation

extension Requests {
    public struct CreateListsRequest: Codable, Hashable, Sendable {
        /// [Default values for campaigns](https://mailchimp.com/help/edit-your-emails-subject-preview-text-from-name-or-from-email-address/) created for this list.
        public let campaignDefaults: CreateListsRequestCampaignDefaults
        /// [Contact information displayed in campaign footers](https://mailchimp.com/help/about-campaign-footers/) to comply with international spam laws.
        public let contact: CreateListsRequestContact
        /// Whether or not to require the subscriber to confirm subscription via email.
        public let doubleOptin: Bool?
        /// Whether the list supports [multiple formats for emails](https://mailchimp.com/help/audience-settings-and-defaults/). When set to `true`, subscribers can choose whether they want to receive HTML or plain-text emails. When set to `false`, subscribers will receive HTML emails, with a plain-text alternative backup.
        public let emailTypeOption: Bool
        /// Whether or not the list has marketing permissions (eg. GDPR) enabled.
        public let marketingPermissions: Bool?
        /// The name of the list.
        public let name: String
        /// The email address to send [subscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to.
        public let notifyOnSubscribe: String?
        /// The email address to send [unsubscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to.
        public let notifyOnUnsubscribe: String?
        /// The [permission reminder](https://mailchimp.com/help/edit-the-permission-reminder/) for the list.
        public let permissionReminder: String
        /// Whether campaigns for this list use the [Archive Bar](https://mailchimp.com/help/about-email-campaign-archives-and-pages/) in archives by default.
        public let useArchiveBar: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            campaignDefaults: CreateListsRequestCampaignDefaults,
            contact: CreateListsRequestContact,
            doubleOptin: Bool? = nil,
            emailTypeOption: Bool,
            marketingPermissions: Bool? = nil,
            name: String,
            notifyOnSubscribe: String? = nil,
            notifyOnUnsubscribe: String? = nil,
            permissionReminder: String,
            useArchiveBar: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.campaignDefaults = campaignDefaults
            self.contact = contact
            self.doubleOptin = doubleOptin
            self.emailTypeOption = emailTypeOption
            self.marketingPermissions = marketingPermissions
            self.name = name
            self.notifyOnSubscribe = notifyOnSubscribe
            self.notifyOnUnsubscribe = notifyOnUnsubscribe
            self.permissionReminder = permissionReminder
            self.useArchiveBar = useArchiveBar
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.campaignDefaults = try container.decode(CreateListsRequestCampaignDefaults.self, forKey: .campaignDefaults)
            self.contact = try container.decode(CreateListsRequestContact.self, forKey: .contact)
            self.doubleOptin = try container.decodeIfPresent(Bool.self, forKey: .doubleOptin)
            self.emailTypeOption = try container.decode(Bool.self, forKey: .emailTypeOption)
            self.marketingPermissions = try container.decodeIfPresent(Bool.self, forKey: .marketingPermissions)
            self.name = try container.decode(String.self, forKey: .name)
            self.notifyOnSubscribe = try container.decodeIfPresent(String.self, forKey: .notifyOnSubscribe)
            self.notifyOnUnsubscribe = try container.decodeIfPresent(String.self, forKey: .notifyOnUnsubscribe)
            self.permissionReminder = try container.decode(String.self, forKey: .permissionReminder)
            self.useArchiveBar = try container.decodeIfPresent(Bool.self, forKey: .useArchiveBar)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.campaignDefaults, forKey: .campaignDefaults)
            try container.encode(self.contact, forKey: .contact)
            try container.encodeIfPresent(self.doubleOptin, forKey: .doubleOptin)
            try container.encode(self.emailTypeOption, forKey: .emailTypeOption)
            try container.encodeIfPresent(self.marketingPermissions, forKey: .marketingPermissions)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.notifyOnSubscribe, forKey: .notifyOnSubscribe)
            try container.encodeIfPresent(self.notifyOnUnsubscribe, forKey: .notifyOnUnsubscribe)
            try container.encode(self.permissionReminder, forKey: .permissionReminder)
            try container.encodeIfPresent(self.useArchiveBar, forKey: .useArchiveBar)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case campaignDefaults = "campaign_defaults"
            case contact
            case doubleOptin = "double_optin"
            case emailTypeOption = "email_type_option"
            case marketingPermissions = "marketing_permissions"
            case name
            case notifyOnSubscribe = "notify_on_subscribe"
            case notifyOnUnsubscribe = "notify_on_unsubscribe"
            case permissionReminder = "permission_reminder"
            case useArchiveBar = "use_archive_bar"
        }
    }
}