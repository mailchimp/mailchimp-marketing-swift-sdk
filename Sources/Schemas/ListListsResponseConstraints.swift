import Foundation

/// Do particular authorization constraints around this collection limit creation of new instances?
public struct ListListsResponseConstraints: Codable, Hashable, Sendable {
    /// How many total instances of this resource are already in use? This is independent of any filter conditions applied to the query. Value may be larger than max_instances. As a special case, -1 is returned when access is unlimited.
    public let currentTotalInstances: Int?
    /// How many total instances of this resource are allowed? This is independent of any filter conditions applied to the query. As a special case, -1 indicates unlimited.
    public let maxInstances: Int
    /// May the user create additional instances of this resource?
    public let mayCreate: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        currentTotalInstances: Int? = nil,
        maxInstances: Int,
        mayCreate: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.currentTotalInstances = currentTotalInstances
        self.maxInstances = maxInstances
        self.mayCreate = mayCreate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.currentTotalInstances = try container.decodeIfPresent(Int.self, forKey: .currentTotalInstances)
        self.maxInstances = try container.decode(Int.self, forKey: .maxInstances)
        self.mayCreate = try container.decode(Bool.self, forKey: .mayCreate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.currentTotalInstances, forKey: .currentTotalInstances)
        try container.encode(self.maxInstances, forKey: .maxInstances)
        try container.encode(self.mayCreate, forKey: .mayCreate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case currentTotalInstances = "current_total_instances"
        case maxInstances = "max_instances"
        case mayCreate = "may_create"
    }
}