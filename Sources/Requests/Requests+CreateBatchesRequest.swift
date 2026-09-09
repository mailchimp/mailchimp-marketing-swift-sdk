import Foundation

extension Requests {
    public struct CreateBatchesRequest: Codable, Hashable, Sendable {
        /// An array of objects that describes operations to perform.
        public let operations: [CreateBatchesRequestOperationsItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            operations: [CreateBatchesRequestOperationsItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.operations = operations
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.operations = try container.decode([CreateBatchesRequestOperationsItem].self, forKey: .operations)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.operations, forKey: .operations)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case operations
        }
    }
}