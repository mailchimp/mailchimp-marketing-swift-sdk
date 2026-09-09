import Foundation

/// Information about a specific customer. Orders for existing customers should include only the `id` parameter in the `customer` object body.
public struct EcommerceStoresCartsPatch: Codable, Hashable, Sendable {
    /// A unique identifier for the customer. Limited to 50 characters.
    public let id: String?
    /// The customer's address.
    public let address: EcommerceStoresCartsPatchAddress?
    /// The customer's company.
    public let company: String?
    /// The customer's first name.
    public let firstName: String?
    /// The customer's last name.
    public let lastName: String?
    /// The customer's opt-in status. This value will never overwrite the opt-in status of a pre-existing Mailchimp list member, but will apply to list members that are added through the e-commerce API endpoints. Customers who don't opt in to your Mailchimp list [will be added as `Transactional` members](https://mailchimp.com/developer/marketing/docs/e-commerce/#customers).
    public let optInStatus: Bool?
    public let totalSpent: EcommerceStoresCartsPatchTotalSpent?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String? = nil,
        address: EcommerceStoresCartsPatchAddress? = nil,
        company: String? = nil,
        firstName: String? = nil,
        lastName: String? = nil,
        optInStatus: Bool? = nil,
        totalSpent: EcommerceStoresCartsPatchTotalSpent? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.address = address
        self.company = company
        self.firstName = firstName
        self.lastName = lastName
        self.optInStatus = optInStatus
        self.totalSpent = totalSpent
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.address = try container.decodeIfPresent(EcommerceStoresCartsPatchAddress.self, forKey: .address)
        self.company = try container.decodeIfPresent(String.self, forKey: .company)
        self.firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
        self.lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
        self.optInStatus = try container.decodeIfPresent(Bool.self, forKey: .optInStatus)
        self.totalSpent = try container.decodeIfPresent(EcommerceStoresCartsPatchTotalSpent.self, forKey: .totalSpent)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.address, forKey: .address)
        try container.encodeIfPresent(self.company, forKey: .company)
        try container.encodeIfPresent(self.firstName, forKey: .firstName)
        try container.encodeIfPresent(self.lastName, forKey: .lastName)
        try container.encodeIfPresent(self.optInStatus, forKey: .optInStatus)
        try container.encodeIfPresent(self.totalSpent, forKey: .totalSpent)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case address
        case company
        case firstName = "first_name"
        case lastName = "last_name"
        case optInStatus = "opt_in_status"
        case totalSpent = "total_spent"
    }
}