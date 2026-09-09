import Foundation

/// The API root resource links to all other resources available in the API.
public struct ListRootResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListRootResponseLinksItem]?
    /// The Mailchimp account ID.
    public let accountId: String?
    /// The user-specified industry associated with the account.
    public let accountIndustry: String?
    /// The name of the account.
    public let accountName: String?
    /// The timezone currently set for the account.
    public let accountTimezone: String?
    /// URL of the avatar for the user.
    public let avatarUrl: String?
    /// Information about the account contact.
    public let contact: ListRootResponseContact?
    /// The account email address.
    public let email: String?
    /// The first name tied to the account.
    public let firstName: String?
    /// Date of first payment for monthly plans.
    public let firstPayment: ListRootResponseFirstPayment?
    /// The [average campaign statistics](https://mailchimp.com/resources/research/email-marketing-benchmarks/?utm_source=mc-api&utm_medium=docs&utm_campaign=apidocs) for all campaigns in the account's specified industry.
    public let industryStats: ListRootResponseIndustryStats?
    /// The date and time of the last login for this account in ISO 8601 format.
    public let lastLogin: Date?
    /// The last name tied to the account.
    public let lastName: String?
    /// The ID associated with the user who owns this API key. If you can login to multiple accounts, this ID will be the same for each account.
    public let loginId: String?
    /// The date and time that the account was created in ISO 8601 format.
    public let memberSince: Date?
    /// The type of pricing plan the account is on.
    public let pricingPlanType: ListRootResponsePricingPlanType?
    /// Legacy - whether the account includes [Mailchimp Pro](https://mailchimp.com/help/about-legacy-pricing-plan/).
    public let proEnabled: Bool?
    /// The [user role](https://mailchimp.com/help/manage-user-levels-in-your-account/) for the account.
    public let role: String?
    /// The total number of subscribers across all lists in the account.
    public let totalSubscribers: Int?
    /// The username tied to the account.
    public let username: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListRootResponseLinksItem]? = nil,
        accountId: String? = nil,
        accountIndustry: String? = nil,
        accountName: String? = nil,
        accountTimezone: String? = nil,
        avatarUrl: String? = nil,
        contact: ListRootResponseContact? = nil,
        email: String? = nil,
        firstName: String? = nil,
        firstPayment: ListRootResponseFirstPayment? = nil,
        industryStats: ListRootResponseIndustryStats? = nil,
        lastLogin: Date? = nil,
        lastName: String? = nil,
        loginId: String? = nil,
        memberSince: Date? = nil,
        pricingPlanType: ListRootResponsePricingPlanType? = nil,
        proEnabled: Bool? = nil,
        role: String? = nil,
        totalSubscribers: Int? = nil,
        username: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.accountId = accountId
        self.accountIndustry = accountIndustry
        self.accountName = accountName
        self.accountTimezone = accountTimezone
        self.avatarUrl = avatarUrl
        self.contact = contact
        self.email = email
        self.firstName = firstName
        self.firstPayment = firstPayment
        self.industryStats = industryStats
        self.lastLogin = lastLogin
        self.lastName = lastName
        self.loginId = loginId
        self.memberSince = memberSince
        self.pricingPlanType = pricingPlanType
        self.proEnabled = proEnabled
        self.role = role
        self.totalSubscribers = totalSubscribers
        self.username = username
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListRootResponseLinksItem].self, forKey: .links)
        self.accountId = try container.decodeIfPresent(String.self, forKey: .accountId)
        self.accountIndustry = try container.decodeIfPresent(String.self, forKey: .accountIndustry)
        self.accountName = try container.decodeIfPresent(String.self, forKey: .accountName)
        self.accountTimezone = try container.decodeIfPresent(String.self, forKey: .accountTimezone)
        self.avatarUrl = try container.decodeIfPresent(String.self, forKey: .avatarUrl)
        self.contact = try container.decodeIfPresent(ListRootResponseContact.self, forKey: .contact)
        self.email = try container.decodeIfPresent(String.self, forKey: .email)
        self.firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
        self.firstPayment = try container.decodeIfPresent(ListRootResponseFirstPayment.self, forKey: .firstPayment)
        self.industryStats = try container.decodeIfPresent(ListRootResponseIndustryStats.self, forKey: .industryStats)
        self.lastLogin = try container.decodeIfPresent(Date.self, forKey: .lastLogin)
        self.lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
        self.loginId = try container.decodeIfPresent(String.self, forKey: .loginId)
        self.memberSince = try container.decodeIfPresent(Date.self, forKey: .memberSince)
        self.pricingPlanType = try container.decodeIfPresent(ListRootResponsePricingPlanType.self, forKey: .pricingPlanType)
        self.proEnabled = try container.decodeIfPresent(Bool.self, forKey: .proEnabled)
        self.role = try container.decodeIfPresent(String.self, forKey: .role)
        self.totalSubscribers = try container.decodeIfPresent(Int.self, forKey: .totalSubscribers)
        self.username = try container.decodeIfPresent(String.self, forKey: .username)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.accountId, forKey: .accountId)
        try container.encodeIfPresent(self.accountIndustry, forKey: .accountIndustry)
        try container.encodeIfPresent(self.accountName, forKey: .accountName)
        try container.encodeIfPresent(self.accountTimezone, forKey: .accountTimezone)
        try container.encodeIfPresent(self.avatarUrl, forKey: .avatarUrl)
        try container.encodeIfPresent(self.contact, forKey: .contact)
        try container.encodeIfPresent(self.email, forKey: .email)
        try container.encodeIfPresent(self.firstName, forKey: .firstName)
        try container.encodeIfPresent(self.firstPayment, forKey: .firstPayment)
        try container.encodeIfPresent(self.industryStats, forKey: .industryStats)
        try container.encodeIfPresent(self.lastLogin, forKey: .lastLogin)
        try container.encodeIfPresent(self.lastName, forKey: .lastName)
        try container.encodeIfPresent(self.loginId, forKey: .loginId)
        try container.encodeIfPresent(self.memberSince, forKey: .memberSince)
        try container.encodeIfPresent(self.pricingPlanType, forKey: .pricingPlanType)
        try container.encodeIfPresent(self.proEnabled, forKey: .proEnabled)
        try container.encodeIfPresent(self.role, forKey: .role)
        try container.encodeIfPresent(self.totalSubscribers, forKey: .totalSubscribers)
        try container.encodeIfPresent(self.username, forKey: .username)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case accountId = "account_id"
        case accountIndustry = "account_industry"
        case accountName = "account_name"
        case accountTimezone = "account_timezone"
        case avatarUrl = "avatar_url"
        case contact
        case email
        case firstName = "first_name"
        case firstPayment = "first_payment"
        case industryStats = "industry_stats"
        case lastLogin = "last_login"
        case lastName = "last_name"
        case loginId = "login_id"
        case memberSince = "member_since"
        case pricingPlanType = "pricing_plan_type"
        case proEnabled = "pro_enabled"
        case role
        case totalSubscribers = "total_subscribers"
        case username
    }
}