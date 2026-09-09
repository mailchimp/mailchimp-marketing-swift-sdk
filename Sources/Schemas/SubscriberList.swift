import Foundation

/// Information about a specific list.
public struct SubscriberList: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [SubscriberListLinksItem]?
    /// The list's [Email Beamer](https://mailchimp.com/help/use-email-beamer-to-create-a-campaign/) address.
    public let beamerAddress: String?
    /// [Default values for campaigns](https://mailchimp.com/help/edit-your-emails-subject-preview-text-from-name-or-from-email-address/) created for this list.
    public let campaignDefaults: SubscriberListCampaignDefaults?
    /// [Contact information displayed in campaign footers](https://mailchimp.com/help/about-campaign-footers/) to comply with international spam laws.
    public let contact: SubscriberListContact?
    /// The date and time that this list was created in ISO 8601 format.
    public let dateCreated: Date?
    /// Whether or not to require the subscriber to confirm subscription via email.
    public let doubleOptin: Bool?
    /// Whether the list supports [multiple formats for emails](https://mailchimp.com/help/audience-settings-and-defaults/). When set to `true`, subscribers can choose whether they want to receive HTML or plain-text emails. When set to `false`, subscribers will receive HTML emails, with a plain-text alternative backup.
    public let emailTypeOption: Bool?
    /// Whether or not this list has a welcome automation connected. Welcome Automations: welcomeSeries, singleWelcome, emailFollowup.
    public let hasWelcome: Bool?
    /// A string that uniquely identifies this list.
    public let id: String?
    /// An auto-generated activity score for the list (0-5).
    public let listRating: Int?
    /// Whether or not the list has marketing permissions (eg. GDPR) enabled.
    public let marketingPermissions: Bool?
    /// Any list-specific modules installed for this list.
    public let modules: [String]?
    /// The name of the list.
    public let name: String?
    /// The email address to send [subscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to.
    public let notifyOnSubscribe: String?
    /// The email address to send [unsubscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to.
    public let notifyOnUnsubscribe: String?
    /// The [permission reminder](https://mailchimp.com/help/edit-the-permission-reminder/) for the list.
    public let permissionReminder: String?
    /// Stats for the list. Many of these are cached for at least five minutes.
    public let stats: SubscriberListStats?
    /// The full version of this list's subscribe form (host will vary).
    public let subscribeUrlLong: String?
    /// Our [url shortened](https://mailchimp.com/help/share-your-signup-form/) version of this list's subscribe form.
    public let subscribeUrlShort: String?
    /// Whether campaigns for this list use the [Archive Bar](https://mailchimp.com/help/about-email-campaign-archives-and-pages/) in archives by default.
    public let useArchiveBar: Bool?
    /// Legacy - visibility settings are no longer used
    public let visibility: SubscriberListVisibility?
    /// The ID used in the Mailchimp web application. View this list in your Mailchimp account at `https://{dc}.admin.mailchimp.com/lists/members/?id={web_id}`.
    public let webId: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [SubscriberListLinksItem]? = nil,
        beamerAddress: String? = nil,
        campaignDefaults: SubscriberListCampaignDefaults? = nil,
        contact: SubscriberListContact? = nil,
        dateCreated: Date? = nil,
        doubleOptin: Bool? = nil,
        emailTypeOption: Bool? = nil,
        hasWelcome: Bool? = nil,
        id: String? = nil,
        listRating: Int? = nil,
        marketingPermissions: Bool? = nil,
        modules: [String]? = nil,
        name: String? = nil,
        notifyOnSubscribe: String? = nil,
        notifyOnUnsubscribe: String? = nil,
        permissionReminder: String? = nil,
        stats: SubscriberListStats? = nil,
        subscribeUrlLong: String? = nil,
        subscribeUrlShort: String? = nil,
        useArchiveBar: Bool? = nil,
        visibility: SubscriberListVisibility? = nil,
        webId: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.beamerAddress = beamerAddress
        self.campaignDefaults = campaignDefaults
        self.contact = contact
        self.dateCreated = dateCreated
        self.doubleOptin = doubleOptin
        self.emailTypeOption = emailTypeOption
        self.hasWelcome = hasWelcome
        self.id = id
        self.listRating = listRating
        self.marketingPermissions = marketingPermissions
        self.modules = modules
        self.name = name
        self.notifyOnSubscribe = notifyOnSubscribe
        self.notifyOnUnsubscribe = notifyOnUnsubscribe
        self.permissionReminder = permissionReminder
        self.stats = stats
        self.subscribeUrlLong = subscribeUrlLong
        self.subscribeUrlShort = subscribeUrlShort
        self.useArchiveBar = useArchiveBar
        self.visibility = visibility
        self.webId = webId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([SubscriberListLinksItem].self, forKey: .links)
        self.beamerAddress = try container.decodeIfPresent(String.self, forKey: .beamerAddress)
        self.campaignDefaults = try container.decodeIfPresent(SubscriberListCampaignDefaults.self, forKey: .campaignDefaults)
        self.contact = try container.decodeIfPresent(SubscriberListContact.self, forKey: .contact)
        self.dateCreated = try container.decodeIfPresent(Date.self, forKey: .dateCreated)
        self.doubleOptin = try container.decodeIfPresent(Bool.self, forKey: .doubleOptin)
        self.emailTypeOption = try container.decodeIfPresent(Bool.self, forKey: .emailTypeOption)
        self.hasWelcome = try container.decodeIfPresent(Bool.self, forKey: .hasWelcome)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.listRating = try container.decodeIfPresent(Int.self, forKey: .listRating)
        self.marketingPermissions = try container.decodeIfPresent(Bool.self, forKey: .marketingPermissions)
        self.modules = try container.decodeIfPresent([String].self, forKey: .modules)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.notifyOnSubscribe = try container.decodeIfPresent(String.self, forKey: .notifyOnSubscribe)
        self.notifyOnUnsubscribe = try container.decodeIfPresent(String.self, forKey: .notifyOnUnsubscribe)
        self.permissionReminder = try container.decodeIfPresent(String.self, forKey: .permissionReminder)
        self.stats = try container.decodeIfPresent(SubscriberListStats.self, forKey: .stats)
        self.subscribeUrlLong = try container.decodeIfPresent(String.self, forKey: .subscribeUrlLong)
        self.subscribeUrlShort = try container.decodeIfPresent(String.self, forKey: .subscribeUrlShort)
        self.useArchiveBar = try container.decodeIfPresent(Bool.self, forKey: .useArchiveBar)
        self.visibility = try container.decodeIfPresent(SubscriberListVisibility.self, forKey: .visibility)
        self.webId = try container.decodeIfPresent(Int.self, forKey: .webId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.beamerAddress, forKey: .beamerAddress)
        try container.encodeIfPresent(self.campaignDefaults, forKey: .campaignDefaults)
        try container.encodeIfPresent(self.contact, forKey: .contact)
        try container.encodeIfPresent(self.dateCreated, forKey: .dateCreated)
        try container.encodeIfPresent(self.doubleOptin, forKey: .doubleOptin)
        try container.encodeIfPresent(self.emailTypeOption, forKey: .emailTypeOption)
        try container.encodeIfPresent(self.hasWelcome, forKey: .hasWelcome)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.listRating, forKey: .listRating)
        try container.encodeIfPresent(self.marketingPermissions, forKey: .marketingPermissions)
        try container.encodeIfPresent(self.modules, forKey: .modules)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.notifyOnSubscribe, forKey: .notifyOnSubscribe)
        try container.encodeIfPresent(self.notifyOnUnsubscribe, forKey: .notifyOnUnsubscribe)
        try container.encodeIfPresent(self.permissionReminder, forKey: .permissionReminder)
        try container.encodeIfPresent(self.stats, forKey: .stats)
        try container.encodeIfPresent(self.subscribeUrlLong, forKey: .subscribeUrlLong)
        try container.encodeIfPresent(self.subscribeUrlShort, forKey: .subscribeUrlShort)
        try container.encodeIfPresent(self.useArchiveBar, forKey: .useArchiveBar)
        try container.encodeIfPresent(self.visibility, forKey: .visibility)
        try container.encodeIfPresent(self.webId, forKey: .webId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case beamerAddress = "beamer_address"
        case campaignDefaults = "campaign_defaults"
        case contact
        case dateCreated = "date_created"
        case doubleOptin = "double_optin"
        case emailTypeOption = "email_type_option"
        case hasWelcome = "has_welcome"
        case id
        case listRating = "list_rating"
        case marketingPermissions = "marketing_permissions"
        case modules
        case name
        case notifyOnSubscribe = "notify_on_subscribe"
        case notifyOnUnsubscribe = "notify_on_unsubscribe"
        case permissionReminder = "permission_reminder"
        case stats
        case subscribeUrlLong = "subscribe_url_long"
        case subscribeUrlShort = "subscribe_url_short"
        case useArchiveBar = "use_archive_bar"
        case visibility
        case webId = "web_id"
    }
}