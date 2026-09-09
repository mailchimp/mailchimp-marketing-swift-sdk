import Foundation

extension Requests {
    public struct CreateActionScheduleCampaignsRequest: Codable, Hashable, Sendable {
        /// Choose whether the campaign should use [Batch Delivery](https://mailchimp.com/help/schedule-batch-delivery/). Cannot be set to `true` for campaigns using [Timewarp](https://mailchimp.com/help/use-timewarp/).
        public let batchDelivery: CreateActionScheduleCampaignsRequestBatchDelivery?
        /// The UTC date and time to schedule the campaign for delivery in ISO 8601 format. Campaigns may only be scheduled to send on the quarter-hour (:00, :15, :30, :45).
        public let scheduleTime: Date
        /// Choose whether the campaign should use [Timewarp](https://mailchimp.com/help/use-timewarp/) when sending. Campaigns scheduled with Timewarp are localized based on the recipients' time zones. For example, a Timewarp campaign with a `schedule_time` of 13:00 will be sent to each recipient at 1:00pm in their local time. Cannot be set to `true` for campaigns using [Batch Delivery](https://mailchimp.com/help/schedule-batch-delivery/).
        public let timewarp: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            batchDelivery: CreateActionScheduleCampaignsRequestBatchDelivery? = nil,
            scheduleTime: Date,
            timewarp: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.batchDelivery = batchDelivery
            self.scheduleTime = scheduleTime
            self.timewarp = timewarp
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.batchDelivery = try container.decodeIfPresent(CreateActionScheduleCampaignsRequestBatchDelivery.self, forKey: .batchDelivery)
            self.scheduleTime = try container.decode(Date.self, forKey: .scheduleTime)
            self.timewarp = try container.decodeIfPresent(Bool.self, forKey: .timewarp)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.batchDelivery, forKey: .batchDelivery)
            try container.encode(self.scheduleTime, forKey: .scheduleTime)
            try container.encodeIfPresent(self.timewarp, forKey: .timewarp)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case batchDelivery = "batch_delivery"
            case scheduleTime = "schedule_time"
            case timewarp
        }
    }
}