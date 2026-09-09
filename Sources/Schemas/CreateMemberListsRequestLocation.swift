import Foundation

/// Subscriber location information.
public struct CreateMemberListsRequestLocation: Codable, Hashable, Sendable {
    public let latitude: CreateMemberListsRequestLocationLatitude?
    public let longitude: CreateMemberListsRequestLocationLongitude?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        latitude: CreateMemberListsRequestLocationLatitude? = nil,
        longitude: CreateMemberListsRequestLocationLongitude? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.latitude = latitude
        self.longitude = longitude
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.latitude = try container.decodeIfPresent(CreateMemberListsRequestLocationLatitude.self, forKey: .latitude)
        self.longitude = try container.decodeIfPresent(CreateMemberListsRequestLocationLongitude.self, forKey: .longitude)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.latitude, forKey: .latitude)
        try container.encodeIfPresent(self.longitude, forKey: .longitude)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case latitude
        case longitude
    }
}