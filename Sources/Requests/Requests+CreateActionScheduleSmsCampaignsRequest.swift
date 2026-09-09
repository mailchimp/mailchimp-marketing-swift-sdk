import Foundation

extension Requests {
    public struct CreateActionScheduleSmsCampaignsRequest: Codable, Hashable, Sendable {
        /// The UTC date and time to schedule the campaign.
        public let scheduleTime: Date
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            scheduleTime: Date,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.scheduleTime = scheduleTime
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.scheduleTime = try container.decode(Date.self, forKey: .scheduleTime)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.scheduleTime, forKey: .scheduleTime)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case scheduleTime = "schedule_time"
        }
    }
}