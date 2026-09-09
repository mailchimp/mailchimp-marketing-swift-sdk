import Foundation

extension Requests {
    public struct CreateSignupFormListsRequest: Codable, Hashable, Sendable {
        /// The signup form body content.
        public let contents: [CreateSignupFormListsRequestContentsItem]?
        /// Options for customizing your signup form header.
        public let header: CreateSignupFormListsRequestHeader?
        /// An array of objects, each representing an element style for the signup form.
        public let styles: [CreateSignupFormListsRequestStylesItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            contents: [CreateSignupFormListsRequestContentsItem]? = nil,
            header: CreateSignupFormListsRequestHeader? = nil,
            styles: [CreateSignupFormListsRequestStylesItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.contents = contents
            self.header = header
            self.styles = styles
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.contents = try container.decodeIfPresent([CreateSignupFormListsRequestContentsItem].self, forKey: .contents)
            self.header = try container.decodeIfPresent(CreateSignupFormListsRequestHeader.self, forKey: .header)
            self.styles = try container.decodeIfPresent([CreateSignupFormListsRequestStylesItem].self, forKey: .styles)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.contents, forKey: .contents)
            try container.encodeIfPresent(self.header, forKey: .header)
            try container.encodeIfPresent(self.styles, forKey: .styles)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case contents
            case header
            case styles
        }
    }
}