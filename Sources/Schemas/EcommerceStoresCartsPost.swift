import Foundation

/// Information about a specific customer. For existing customers include only the `id` parameter in the `customer` object body.
public struct EcommerceStoresCartsPost: Codable, Hashable, Sendable {
    /// The customer's address.
    public let address: EcommerceStoresCartsPostAddress?
    /// The customer's company.
    public let company: String?
    /// The customer's email address.
    public let emailAddress: String?
    /// The customer's first name.
    public let firstName: String?
    /// A unique identifier for the customer. Limited to 50 characters.
    public let id: String
    /// The customer's last name.
    public let lastName: String?
    /// The customer's opt-in status. This value will never overwrite the opt-in status of a pre-existing Mailchimp list member, but will apply to list members that are added through the e-commerce API endpoints. Customers who don't opt in to your Mailchimp list [will be added as `Transactional` members](https://mailchimp.com/developer/marketing/docs/e-commerce/#customers).
    public let optInStatus: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        address: EcommerceStoresCartsPostAddress? = nil,
        company: String? = nil,
        emailAddress: String? = nil,
        firstName: String? = nil,
        id: String,
        lastName: String? = nil,
        optInStatus: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.address = address
        self.company = company
        self.emailAddress = emailAddress
        self.firstName = firstName
        self.id = id
        self.lastName = lastName
        self.optInStatus = optInStatus
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.address = try container.decodeIfPresent(EcommerceStoresCartsPostAddress.self, forKey: .address)
        self.company = try container.decodeIfPresent(String.self, forKey: .company)
        self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        self.firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
        self.id = try container.decode(String.self, forKey: .id)
        self.lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
        self.optInStatus = try container.decodeIfPresent(Bool.self, forKey: .optInStatus)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.address, forKey: .address)
        try container.encodeIfPresent(self.company, forKey: .company)
        try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.firstName, forKey: .firstName)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.lastName, forKey: .lastName)
        try container.encodeIfPresent(self.optInStatus, forKey: .optInStatus)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case company
        case emailAddress = "email_address"
        case firstName = "first_name"
        case id
        case lastName = "last_name"
        case optInStatus = "opt_in_status"
    }
}