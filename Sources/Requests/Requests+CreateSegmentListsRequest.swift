import Foundation

extension Requests {
    public struct CreateSegmentListsRequest: Codable, Hashable, Sendable {
        /// The name of the segment.
        public let name: String
        /// The [conditions of the segment](https://mailchimp.com/help/save-and-manage-segments/). Static and fuzzy segments don't have conditions.
        public let options: CreateSegmentListsRequestOptions?
        /// An array of emails to be used for a static segment. Any emails provided that are not present on the list will be ignored. Passing an empty array will create a static segment without any subscribers. This field cannot be provided with the options field.
        public let staticSegment: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String,
            options: CreateSegmentListsRequestOptions? = nil,
            staticSegment: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.options = options
            self.staticSegment = staticSegment
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decode(String.self, forKey: .name)
            self.options = try container.decodeIfPresent(CreateSegmentListsRequestOptions.self, forKey: .options)
            self.staticSegment = try container.decodeIfPresent([String].self, forKey: .staticSegment)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.options, forKey: .options)
            try container.encodeIfPresent(self.staticSegment, forKey: .staticSegment)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case options
            case staticSegment = "static_segment"
        }
    }
}