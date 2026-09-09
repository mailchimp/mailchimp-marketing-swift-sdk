import Foundation

/// Subscriber location information.
public struct ListsPostLocation: Codable, Hashable, Sendable {
    /// The unique code for the location country.
    public let countryCode: String?
    /// The offset for timezones where daylight saving time is observed.
    public let dstoff: Int?
    /// The time difference in hours from GMT.
    public let gmtoff: Int?
    /// The location latitude.
    public let latitude: Double?
    /// The location longitude.
    public let longitude: Double?
    /// The timezone for the location.
    public let timezone: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        countryCode: String? = nil,
        dstoff: Int? = nil,
        gmtoff: Int? = nil,
        latitude: Double? = nil,
        longitude: Double? = nil,
        timezone: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.countryCode = countryCode
        self.dstoff = dstoff
        self.gmtoff = gmtoff
        self.latitude = latitude
        self.longitude = longitude
        self.timezone = timezone
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
        self.dstoff = try container.decodeIfPresent(Int.self, forKey: .dstoff)
        self.gmtoff = try container.decodeIfPresent(Int.self, forKey: .gmtoff)
        self.latitude = try container.decodeIfPresent(Double.self, forKey: .latitude)
        self.longitude = try container.decodeIfPresent(Double.self, forKey: .longitude)
        self.timezone = try container.decodeIfPresent(String.self, forKey: .timezone)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.countryCode, forKey: .countryCode)
        try container.encodeIfPresent(self.dstoff, forKey: .dstoff)
        try container.encodeIfPresent(self.gmtoff, forKey: .gmtoff)
        try container.encodeIfPresent(self.latitude, forKey: .latitude)
        try container.encodeIfPresent(self.longitude, forKey: .longitude)
        try container.encodeIfPresent(self.timezone, forKey: .timezone)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode = "country_code"
        case dstoff
        case gmtoff
        case latitude
        case longitude
        case timezone
    }
}