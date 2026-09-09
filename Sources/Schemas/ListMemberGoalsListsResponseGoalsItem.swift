import Foundation

/// A single instance of a goal activity.
public struct ListMemberGoalsListsResponseGoalsItem: Codable, Hashable, Sendable {
    /// Any extra data passed with the Goal event.
    public let data: String?
    /// The name/type of Goal event triggered.
    public let event: String?
    /// The id for a Goal event.
    public let goalId: Int?
    /// The date and time the user last triggered the Goal event in ISO 8601 format.
    public let lastVisitedAt: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        data: String? = nil,
        event: String? = nil,
        goalId: Int? = nil,
        lastVisitedAt: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.data = data
        self.event = event
        self.goalId = goalId
        self.lastVisitedAt = lastVisitedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.data = try container.decodeIfPresent(String.self, forKey: .data)
        self.event = try container.decodeIfPresent(String.self, forKey: .event)
        self.goalId = try container.decodeIfPresent(Int.self, forKey: .goalId)
        self.lastVisitedAt = try container.decodeIfPresent(Date.self, forKey: .lastVisitedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.data, forKey: .data)
        try container.encodeIfPresent(self.event, forKey: .event)
        try container.encodeIfPresent(self.goalId, forKey: .goalId)
        try container.encodeIfPresent(self.lastVisitedAt, forKey: .lastVisitedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case event
        case goalId = "goal_id"
        case lastVisitedAt = "last_visited_at"
    }
}