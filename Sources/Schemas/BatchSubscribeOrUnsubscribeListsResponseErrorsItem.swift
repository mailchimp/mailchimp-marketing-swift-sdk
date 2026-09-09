import Foundation

public struct BatchSubscribeOrUnsubscribeListsResponseErrorsItem: Codable, Hashable, Sendable {
    /// The email address that could not be added or updated.
    public let emailAddress: String?
    /// The error message indicating why the email address could not be added or updated.
    public let error: String?
    /// A unique code that identifies this specifc error.
    public let errorCode: BatchSubscribeOrUnsubscribeListsResponseErrorsItemErrorCode?
    /// If the error is field-related, information about which field is at issue.
    public let field: String?
    /// Message indicating how to resolve a field-related error.
    public let fieldMessage: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        emailAddress: String? = nil,
        error: String? = nil,
        errorCode: BatchSubscribeOrUnsubscribeListsResponseErrorsItemErrorCode? = nil,
        field: String? = nil,
        fieldMessage: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.emailAddress = emailAddress
        self.error = error
        self.errorCode = errorCode
        self.field = field
        self.fieldMessage = fieldMessage
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        self.error = try container.decodeIfPresent(String.self, forKey: .error)
        self.errorCode = try container.decodeIfPresent(BatchSubscribeOrUnsubscribeListsResponseErrorsItemErrorCode.self, forKey: .errorCode)
        self.field = try container.decodeIfPresent(String.self, forKey: .field)
        self.fieldMessage = try container.decodeIfPresent(String.self, forKey: .fieldMessage)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.error, forKey: .error)
        try container.encodeIfPresent(self.errorCode, forKey: .errorCode)
        try container.encodeIfPresent(self.field, forKey: .field)
        try container.encodeIfPresent(self.fieldMessage, forKey: .fieldMessage)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case emailAddress = "email_address"
        case error
        case errorCode = "error_code"
        case field
        case fieldMessage = "field_message"
    }
}