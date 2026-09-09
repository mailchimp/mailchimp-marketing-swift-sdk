import Foundation

extension Requests {
    public struct CreateMemberTagListsRequest: Codable, Hashable, Sendable {
        /// When is_syncing is true, automations based on the tags in the request will not fire
        public let isSyncing: Bool?
        /// A list of tags assigned to the list member.
        public let tags: [CreateMemberTagListsRequestTagsItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            isSyncing: Bool? = nil,
            tags: [CreateMemberTagListsRequestTagsItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.isSyncing = isSyncing
            self.tags = tags
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.isSyncing = try container.decodeIfPresent(Bool.self, forKey: .isSyncing)
            self.tags = try container.decode([CreateMemberTagListsRequestTagsItem].self, forKey: .tags)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.isSyncing, forKey: .isSyncing)
            try container.encode(self.tags, forKey: .tags)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case isSyncing = "is_syncing"
            case tags
        }
    }
}