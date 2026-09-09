import Foundation

extension Requests {
    public struct UpdateInterestCategoryInterestListsRequest: Codable, Hashable, Sendable {
        /// The display order for interests.
        public let displayOrder: Int?
        /// The name of the interest. This can be shown publicly on a subscription form.
        public let name: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            displayOrder: Int? = nil,
            name: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.displayOrder = displayOrder
            self.name = name
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.displayOrder = try container.decodeIfPresent(Int.self, forKey: .displayOrder)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.displayOrder, forKey: .displayOrder)
            try container.encodeIfPresent(self.name, forKey: .name)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case displayOrder = "display_order"
            case name
        }
    }
}