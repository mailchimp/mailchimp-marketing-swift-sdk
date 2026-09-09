import Foundation

extension Requests {
    public struct CreateStoreCustomerEcommerceRequest: Codable, Hashable, Sendable {
        /// The customer's address.
        public let address: CreateStoreCustomerEcommerceRequestAddress?
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
        public let optInStatus: Bool
        /// A US phone number for SMS contact.
        public let smsPhoneNumber: String?
        public let totalSpent: CreateStoreCustomerEcommerceRequestTotalSpent?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            address: CreateStoreCustomerEcommerceRequestAddress? = nil,
            company: String? = nil,
            emailAddress: String? = nil,
            firstName: String? = nil,
            id: String,
            lastName: String? = nil,
            optInStatus: Bool,
            smsPhoneNumber: String? = nil,
            totalSpent: CreateStoreCustomerEcommerceRequestTotalSpent? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.address = address
            self.company = company
            self.emailAddress = emailAddress
            self.firstName = firstName
            self.id = id
            self.lastName = lastName
            self.optInStatus = optInStatus
            self.smsPhoneNumber = smsPhoneNumber
            self.totalSpent = totalSpent
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.address = try container.decodeIfPresent(CreateStoreCustomerEcommerceRequestAddress.self, forKey: .address)
            self.company = try container.decodeIfPresent(String.self, forKey: .company)
            self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
            self.firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
            self.id = try container.decode(String.self, forKey: .id)
            self.lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
            self.optInStatus = try container.decode(Bool.self, forKey: .optInStatus)
            self.smsPhoneNumber = try container.decodeIfPresent(String.self, forKey: .smsPhoneNumber)
            self.totalSpent = try container.decodeIfPresent(CreateStoreCustomerEcommerceRequestTotalSpent.self, forKey: .totalSpent)
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
            try container.encode(self.optInStatus, forKey: .optInStatus)
            try container.encodeIfPresent(self.smsPhoneNumber, forKey: .smsPhoneNumber)
            try container.encodeIfPresent(self.totalSpent, forKey: .totalSpent)
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
            case smsPhoneNumber = "sms_phone_number"
            case totalSpent = "total_spent"
        }
    }
}