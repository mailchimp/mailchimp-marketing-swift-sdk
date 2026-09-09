import Foundation

extension Requests {
    public struct BatchAddOrRemoveMembersListsRequest: Codable, Hashable, Sendable {
        /// An array of emails to be used for a static segment. Any emails provided that are not present on the list will be ignored. A maximum of 500 members can be sent.
        public let membersToAdd: [String]?
        /// An array of emails to be used for a static segment. Any emails provided that are not present on the list will be ignored. A maximum of 500 members can be sent.
        public let membersToRemove: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            membersToAdd: [String]? = nil,
            membersToRemove: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.membersToAdd = membersToAdd
            self.membersToRemove = membersToRemove
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.membersToAdd = try container.decodeIfPresent([String].self, forKey: .membersToAdd)
            self.membersToRemove = try container.decodeIfPresent([String].self, forKey: .membersToRemove)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.membersToAdd, forKey: .membersToAdd)
            try container.encodeIfPresent(self.membersToRemove, forKey: .membersToRemove)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case membersToAdd = "members_to_add"
            case membersToRemove = "members_to_remove"
        }
    }
}