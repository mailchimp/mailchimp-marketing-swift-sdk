import Foundation

/// Extra options for some merge field types.
public struct MergeFieldOptions: Codable, Hashable, Sendable {
    /// In a radio or dropdown non-group field, the available options for contacts to pick from.
    public let choices: [String]?
    /// In a date or birthday field, the format of the date.
    public let dateFormat: String?
    /// In an address field, the default country code if none supplied.
    public let defaultCountry: Int?
    /// In a phone field, the phone number type: US or International.
    public let phoneFormat: String?
    /// In a text field, the default length of the text field.
    public let size: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        choices: [String]? = nil,
        dateFormat: String? = nil,
        defaultCountry: Int? = nil,
        phoneFormat: String? = nil,
        size: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.choices = choices
        self.dateFormat = dateFormat
        self.defaultCountry = defaultCountry
        self.phoneFormat = phoneFormat
        self.size = size
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.choices = try container.decodeIfPresent([String].self, forKey: .choices)
        self.dateFormat = try container.decodeIfPresent(String.self, forKey: .dateFormat)
        self.defaultCountry = try container.decodeIfPresent(Int.self, forKey: .defaultCountry)
        self.phoneFormat = try container.decodeIfPresent(String.self, forKey: .phoneFormat)
        self.size = try container.decodeIfPresent(Int.self, forKey: .size)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.choices, forKey: .choices)
        try container.encodeIfPresent(self.dateFormat, forKey: .dateFormat)
        try container.encodeIfPresent(self.defaultCountry, forKey: .defaultCountry)
        try container.encodeIfPresent(self.phoneFormat, forKey: .phoneFormat)
        try container.encodeIfPresent(self.size, forKey: .size)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case choices
        case dateFormat = "date_format"
        case defaultCountry = "default_country"
        case phoneFormat = "phone_format"
        case size
    }
}