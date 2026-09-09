import Foundation

extension Requests {
    public struct CreateSurveyListsRequest: Codable, Hashable, Sendable {
        /// The title of the survey.
        public let title: String?
        /// Initial survey sections.
        public let sections: [SurveySectionRequest]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            title: String? = nil,
            sections: [SurveySectionRequest]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.title = title
            self.sections = sections
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.title = try container.decodeIfPresent(String.self, forKey: .title)
            self.sections = try container.decodeIfPresent([SurveySectionRequest].self, forKey: .sections)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.title, forKey: .title)
            try container.encodeIfPresent(self.sections, forKey: .sections)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case title
            case sections
        }
    }
}