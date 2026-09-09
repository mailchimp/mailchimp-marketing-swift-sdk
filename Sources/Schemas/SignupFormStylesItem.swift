import Foundation

/// Collection of Element style for List Signup Forms.
public struct SignupFormStylesItem: Codable, Hashable, Sendable {
    /// A collection of options for a selector.
    public let options: [SignupFormStylesItemOptionsItem]?
    /// A string that identifies the element selector.
    public let selector: SignupFormStylesItemSelector?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        options: [SignupFormStylesItemOptionsItem]? = nil,
        selector: SignupFormStylesItemSelector? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.options = options
        self.selector = selector
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.options = try container.decodeIfPresent([SignupFormStylesItemOptionsItem].self, forKey: .options)
        self.selector = try container.decodeIfPresent(SignupFormStylesItemSelector.self, forKey: .selector)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.options, forKey: .options)
        try container.encodeIfPresent(self.selector, forKey: .selector)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case options
        case selector
    }
}