import Foundation

public struct PatchAudienceContactRequestMergeFieldsValueAddr1: Codable, Hashable, Sendable {
    public let addr1: String
    public let addr2: String?
    public let city: String
    public let state: String
    public let zip: String
    public let country: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        addr1: String,
        addr2: String? = nil,
        city: String,
        state: String,
        zip: String,
        country: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.addr1 = addr1
        self.addr2 = addr2
        self.city = city
        self.state = state
        self.zip = zip
        self.country = country
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.addr1 = try container.decode(String.self, forKey: .addr1)
        self.addr2 = try container.decodeIfPresent(String.self, forKey: .addr2)
        self.city = try container.decode(String.self, forKey: .city)
        self.state = try container.decode(String.self, forKey: .state)
        self.zip = try container.decode(String.self, forKey: .zip)
        self.country = try container.decodeIfPresent(String.self, forKey: .country)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.addr1, forKey: .addr1)
        try container.encodeIfPresent(self.addr2, forKey: .addr2)
        try container.encode(self.city, forKey: .city)
        try container.encode(self.state, forKey: .state)
        try container.encode(self.zip, forKey: .zip)
        try container.encodeIfPresent(self.country, forKey: .country)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case addr1
        case addr2
        case city
        case state
        case zip
        case country
    }
}