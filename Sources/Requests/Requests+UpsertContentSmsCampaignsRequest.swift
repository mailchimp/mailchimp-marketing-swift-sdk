import Foundation

extension Requests {
    public struct UpsertContentSmsCampaignsRequest: Codable, Hashable, Sendable {
        /// The SMS message body.
        public let messageBody: String
        /// Attached images or files. Limited to one item. Omitting this field or sending an empty array removes any existing media; to keep the current media while updating other fields, re-send the media array.
        public let media: [UpsertContentSmsCampaignsRequestMediaItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            messageBody: String,
            media: [UpsertContentSmsCampaignsRequestMediaItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.messageBody = messageBody
            self.media = media
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.messageBody = try container.decode(String.self, forKey: .messageBody)
            self.media = try container.decodeIfPresent([UpsertContentSmsCampaignsRequestMediaItem].self, forKey: .media)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.messageBody, forKey: .messageBody)
            try container.encodeIfPresent(self.media, forKey: .media)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case messageBody = "message_body"
            case media
        }
    }
}