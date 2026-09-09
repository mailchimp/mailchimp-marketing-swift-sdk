import Foundation

/// Subscriber location information.
public struct UpdateMemberListsRequestLocation: Codable, Hashable, Sendable {
    public let latitude: UpdateMemberListsRequestLocationLatitude?
    public let longitude: UpdateMemberListsRequestLocationLongitude?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        latitude: UpdateMemberListsRequestLocationLatitude? = nil,
        longitude: UpdateMemberListsRequestLocationLongitude? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.latitude = latitude
        self.longitude = longitude
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.latitude = try container.decodeIfPresent(UpdateMemberListsRequestLocationLatitude.self, forKey: .latitude)
        self.longitude = try container.decodeIfPresent(UpdateMemberListsRequestLocationLongitude.self, forKey: .longitude)
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