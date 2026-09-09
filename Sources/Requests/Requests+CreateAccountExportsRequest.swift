import Foundation

extension Requests {
    public struct CreateAccountExportsRequest: Codable, Hashable, Sendable {
        /// The stages of an account export to include.
        public let includeStages: [CreateAccountExportsRequestIncludeStagesItem]
        /// An ISO 8601 date that will limit the export to only records created after a given time. For instance, the reports stage will contain any campaign sent after the given timestamp. Audiences, however, are excluded from this limit.
        public let sinceTimestamp: Date?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            includeStages: [CreateAccountExportsRequestIncludeStagesItem],
            sinceTimestamp: Date? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.includeStages = includeStages
            self.sinceTimestamp = sinceTimestamp
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.includeStages = try container.decode([CreateAccountExportsRequestIncludeStagesItem].self, forKey: .includeStages)
            self.sinceTimestamp = try container.decodeIfPresent(Date.self, forKey: .sinceTimestamp)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.includeStages, forKey: .includeStages)
            try container.encodeIfPresent(self.sinceTimestamp, forKey: .sinceTimestamp)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case includeStages = "include_stages"
            case sinceTimestamp = "since_timestamp"
        }
    }
}