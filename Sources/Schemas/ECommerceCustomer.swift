import Foundation

/// Information about a specific customer.
public struct ECommerceCustomer: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ECommerceCustomerLinksItem]?
    /// The customer's address.
    public let address: ECommerceCustomerAddress?
    /// The customer's company.
    public let company: String?
    /// The date and time the customer was created in ISO 8601 format.
    public let createdAt: Date?
    /// The customer's email address.
    public let emailAddress: String?
    /// The customer's first name.
    public let firstName: String?
    /// A unique identifier for the customer.
    public let id: String?
    /// The customer's last name.
    public let lastName: String?
    /// The customer's opt-in status. This value will never overwrite the opt-in status of a pre-existing Mailchimp list member, but will apply to list members that are added through the e-commerce API endpoints. Customers who don't opt in to your Mailchimp list [will be added as `Transactional` members](https://mailchimp.com/developer/marketing/docs/e-commerce/#customers).
    public let optInStatus: Bool?
    /// The customer's total order count.
    public let ordersCount: Int?
    /// A US phone number for SMS contact.
    public let smsPhoneNumber: String?
    public let totalSpent: ECommerceCustomerTotalSpent?
    /// The date and time the customer was last updated in ISO 8601 format.
    public let updatedAt: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ECommerceCustomerLinksItem]? = nil,
        address: ECommerceCustomerAddress? = nil,
        company: String? = nil,
        createdAt: Date? = nil,
        emailAddress: String? = nil,
        firstName: String? = nil,
        id: String? = nil,
        lastName: String? = nil,
        optInStatus: Bool? = nil,
        ordersCount: Int? = nil,
        smsPhoneNumber: String? = nil,
        totalSpent: ECommerceCustomerTotalSpent? = nil,
        updatedAt: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.address = address
        self.company = company
        self.createdAt = createdAt
        self.emailAddress = emailAddress
        self.firstName = firstName
        self.id = id
        self.lastName = lastName
        self.optInStatus = optInStatus
        self.ordersCount = ordersCount
        self.smsPhoneNumber = smsPhoneNumber
        self.totalSpent = totalSpent
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ECommerceCustomerLinksItem].self, forKey: .links)
        self.address = try container.decodeIfPresent(ECommerceCustomerAddress.self, forKey: .address)
        self.company = try container.decodeIfPresent(String.self, forKey: .company)
        self.createdAt = try container.decodeIfPresent(Date.self, forKey: .createdAt)
        self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        self.firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
        self.optInStatus = try container.decodeIfPresent(Bool.self, forKey: .optInStatus)
        self.ordersCount = try container.decodeIfPresent(Int.self, forKey: .ordersCount)
        self.smsPhoneNumber = try container.decodeIfPresent(String.self, forKey: .smsPhoneNumber)
        self.totalSpent = try container.decodeIfPresent(ECommerceCustomerTotalSpent.self, forKey: .totalSpent)
        self.updatedAt = try container.decodeIfPresent(Date.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.address, forKey: .address)
        try container.encodeIfPresent(self.company, forKey: .company)
        try container.encodeIfPresent(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.firstName, forKey: .firstName)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.lastName, forKey: .lastName)
        try container.encodeIfPresent(self.optInStatus, forKey: .optInStatus)
        try container.encodeIfPresent(self.ordersCount, forKey: .ordersCount)
        try container.encodeIfPresent(self.smsPhoneNumber, forKey: .smsPhoneNumber)
        try container.encodeIfPresent(self.totalSpent, forKey: .totalSpent)
        try container.encodeIfPresent(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case address
        case company
        case createdAt = "created_at"
        case emailAddress = "email_address"
        case firstName = "first_name"
        case id
        case lastName = "last_name"
        case optInStatus = "opt_in_status"
        case ordersCount = "orders_count"
        case smsPhoneNumber = "sms_phone_number"
        case totalSpent = "total_spent"
        case updatedAt = "updated_at"
    }
}