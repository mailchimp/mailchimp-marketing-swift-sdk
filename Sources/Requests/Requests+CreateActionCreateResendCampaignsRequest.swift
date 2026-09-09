import Foundation

extension Requests {
    public struct CreateActionCreateResendCampaignsRequest: Codable, Hashable, Sendable {
        /// Which campaign resend shortcut to use. Default is `to_non_openers`.
        public let shortcutType: CreateActionCreateResendCampaignsRequestShortcutType?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            shortcutType: CreateActionCreateResendCampaignsRequestShortcutType? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.shortcutType = shortcutType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.shortcutType = try container.decodeIfPresent(CreateActionCreateResendCampaignsRequestShortcutType.self, forKey: .shortcutType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.shortcutType, forKey: .shortcutType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case shortcutType = "shortcut_type"
        }
    }
}