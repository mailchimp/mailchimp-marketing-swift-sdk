import Foundation

extension Requests {
    public struct UpdateInterestCategoryListsRequest: Codable, Hashable, Sendable {
        /// The order that the categories are displayed in the list. Lower numbers display first.
        public let displayOrder: Int?
        /// The text description of this category. This field appears on signup forms and is often phrased as a question.
        public let title: String?
        /// Determines how this category’s interests appear on signup forms.
        public let type: UpdateInterestCategoryListsRequestType?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            displayOrder: Int? = nil,
            title: String? = nil,
            type: UpdateInterestCategoryListsRequestType? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.displayOrder = displayOrder
            self.title = title
            self.type = type
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.displayOrder = try container.decodeIfPresent(Int.self, forKey: .displayOrder)
            self.title = try container.decodeIfPresent(String.self, forKey: .title)
            self.type = try container.decodeIfPresent(UpdateInterestCategoryListsRequestType.self, forKey: .type)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.displayOrder, forKey: .displayOrder)
            try container.encodeIfPresent(self.title, forKey: .title)
            try container.encodeIfPresent(self.type, forKey: .type)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case displayOrder = "display_order"
            case title
            case type
        }
    }
}