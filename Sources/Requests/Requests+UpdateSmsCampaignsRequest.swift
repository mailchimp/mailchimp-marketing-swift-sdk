import Foundation

extension Requests {
    public struct UpdateSmsCampaignsRequest: Codable, Hashable, Sendable {
        /// The name of the campaign.
        public let name: String?
        /// The ID of the folder to place this campaign in.
        public let folderId: String?
        /// The segment IDs to target for this campaign.
        public let segments: [Int]?
        /// The segment IDs to exclude from this campaign.
        public let excludedSegments: [Int]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String? = nil,
            folderId: String? = nil,
            segments: [Int]? = nil,
            excludedSegments: [Int]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.folderId = folderId
            self.segments = segments
            self.excludedSegments = excludedSegments
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.folderId = try container.decodeIfPresent(String.self, forKey: .folderId)
            self.segments = try container.decodeIfPresent([Int].self, forKey: .segments)
            self.excludedSegments = try container.decodeIfPresent([Int].self, forKey: .excludedSegments)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.folderId, forKey: .folderId)
            try container.encodeIfPresent(self.segments, forKey: .segments)
            try container.encodeIfPresent(self.excludedSegments, forKey: .excludedSegments)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case folderId = "folder_id"
            case segments
            case excludedSegments = "excluded_segments"
        }
    }
}