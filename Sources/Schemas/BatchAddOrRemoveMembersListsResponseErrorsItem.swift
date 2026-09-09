import Foundation

public struct BatchAddOrRemoveMembersListsResponseErrorsItem: Codable, Hashable, Sendable {
    /// Email addresses added to the static segment or removed
    public let emailAddresses: [String]?
    /// The error message indicating why the email addresses could not be added or updated.
    public let error: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        emailAddresses: [String]? = nil,
        error: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.emailAddresses = emailAddresses
        self.error = error
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.emailAddresses = try container.decodeIfPresent([String].self, forKey: .emailAddresses)
        self.error = try container.decodeIfPresent(String.self, forKey: .error)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.emailAddresses, forKey: .emailAddresses)
        try container.encodeIfPresent(self.error, forKey: .error)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case emailAddresses = "email_addresses"
        case error
    }
}