import Foundation

/// The days of the week to send a daily RSS Campaign.
public struct CreateCampaignsRequestRssOptsScheduleDailySend: Codable, Hashable, Sendable {
    /// Sends the daily RSS Campaign on Fridays.
    public let friday: Bool?
    /// Sends the daily RSS Campaign on Mondays.
    public let monday: Bool?
    /// Sends the daily RSS Campaign on Saturdays.
    public let saturday: Bool?
    /// Sends the daily RSS Campaign on Sundays.
    public let sunday: Bool?
    /// Sends the daily RSS Campaign on Thursdays.
    public let thursday: Bool?
    /// Sends the daily RSS Campaign on Tuesdays.
    public let tuesday: Bool?
    /// Sends the daily RSS Campaign on Wednesdays.
    public let wednesday: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        friday: Bool? = nil,
        monday: Bool? = nil,
        saturday: Bool? = nil,
        sunday: Bool? = nil,
        thursday: Bool? = nil,
        tuesday: Bool? = nil,
        wednesday: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.friday = friday
        self.monday = monday
        self.saturday = saturday
        self.sunday = sunday
        self.thursday = thursday
        self.tuesday = tuesday
        self.wednesday = wednesday
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.friday = try container.decodeIfPresent(Bool.self, forKey: .friday)
        self.monday = try container.decodeIfPresent(Bool.self, forKey: .monday)
        self.saturday = try container.decodeIfPresent(Bool.self, forKey: .saturday)
        self.sunday = try container.decodeIfPresent(Bool.self, forKey: .sunday)
        self.thursday = try container.decodeIfPresent(Bool.self, forKey: .thursday)
        self.tuesday = try container.decodeIfPresent(Bool.self, forKey: .tuesday)
        self.wednesday = try container.decodeIfPresent(Bool.self, forKey: .wednesday)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.friday, forKey: .friday)
        try container.encodeIfPresent(self.monday, forKey: .monday)
        try container.encodeIfPresent(self.saturday, forKey: .saturday)
        try container.encodeIfPresent(self.sunday, forKey: .sunday)
        try container.encodeIfPresent(self.thursday, forKey: .thursday)
        try container.encodeIfPresent(self.tuesday, forKey: .tuesday)
        try container.encodeIfPresent(self.wednesday, forKey: .wednesday)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case friday
        case monday
        case saturday
        case sunday
        case thursday
        case tuesday
        case wednesday
    }
}