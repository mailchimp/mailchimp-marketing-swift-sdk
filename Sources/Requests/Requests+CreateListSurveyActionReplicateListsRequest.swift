import Foundation

extension Requests {
    public struct CreateListSurveyActionReplicateListsRequest: Codable, Hashable, Sendable {
        /// The title for the replicated survey.
        public let title: String?
        /// The unique ID of the audience for the replicated survey. Defaults to the source survey audience.
        public let listId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            title: String? = nil,
            listId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.title = title
            self.listId = listId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.title = try container.decodeIfPresent(String.self, forKey: .title)
            self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.title, forKey: .title)
            try container.encodeIfPresent(self.listId, forKey: .listId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case title
            case listId = "list_id"
        }
    }
}