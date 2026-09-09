import Foundation

extension Requests {
    public struct BatchSubscribeOrUnsubscribeListsRequest: Codable, Hashable, Sendable {
        /// An array of objects, each representing an email address and the subscription status for a specific list. Up to 500 members may be added or updated with each API call.
        public let members: [BatchSubscribeOrUnsubscribeListsRequestMembersItem]
        /// Whether this batch operation will replace all existing tags with tags in request.
        public let syncTags: Nullable<Bool>?
        /// Whether this batch operation will change existing members' subscription status.
        public let updateExisting: Nullable<Bool>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            members: [BatchSubscribeOrUnsubscribeListsRequestMembersItem],
            syncTags: Nullable<Bool>? = nil,
            updateExisting: Nullable<Bool>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.members = members
            self.syncTags = syncTags
            self.updateExisting = updateExisting
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.members = try container.decode([BatchSubscribeOrUnsubscribeListsRequestMembersItem].self, forKey: .members)
            self.syncTags = try container.decodeNullableIfPresent(Bool.self, forKey: .syncTags)
            self.updateExisting = try container.decodeNullableIfPresent(Bool.self, forKey: .updateExisting)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.members, forKey: .members)
            try container.encodeNullableIfPresent(self.syncTags, forKey: .syncTags)
            try container.encodeNullableIfPresent(self.updateExisting, forKey: .updateExisting)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case members
            case syncTags = "sync_tags"
            case updateExisting = "update_existing"
        }
    }
}