import Foundation

extension Requests {
    public struct CreateActionTestCampaignsRequest: Codable, Hashable, Sendable {
        /// Choose the type of test email to send.
        public let sendType: CreateActionTestCampaignsRequestSendType
        /// An array of email addresses to send the test email to.
        public let testEmails: [String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            sendType: CreateActionTestCampaignsRequestSendType,
            testEmails: [String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.sendType = sendType
            self.testEmails = testEmails
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.sendType = try container.decode(CreateActionTestCampaignsRequestSendType.self, forKey: .sendType)
            self.testEmails = try container.decode([String].self, forKey: .testEmails)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.sendType, forKey: .sendType)
            try container.encode(self.testEmails, forKey: .testEmails)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case sendType = "send_type"
            case testEmails = "test_emails"
        }
    }
}