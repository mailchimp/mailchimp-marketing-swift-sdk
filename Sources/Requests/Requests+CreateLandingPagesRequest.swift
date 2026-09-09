import Foundation

extension Requests {
    public struct CreateLandingPagesRequest: Codable, Hashable, Sendable {
        /// The description of this landing page.
        public let description: String?
        /// The list's ID associated with this landing page.
        public let listId: String?
        /// The name of this landing page.
        public let name: String?
        /// The ID of the store associated with this landing page.
        public let storeId: String?
        /// The template_id of this landing page.
        public let templateId: Int?
        /// The title of this landing page seen in the browser's title bar.
        public let title: String?
        /// The tracking settings applied to this landing page.
        public let tracking: CreateLandingPagesRequestTracking?
        /// The type of template the landing page has.
        public let type: CreateLandingPagesRequestType?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            description: String? = nil,
            listId: String? = nil,
            name: String? = nil,
            storeId: String? = nil,
            templateId: Int? = nil,
            title: String? = nil,
            tracking: CreateLandingPagesRequestTracking? = nil,
            type: CreateLandingPagesRequestType? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.description = description
            self.listId = listId
            self.name = name
            self.storeId = storeId
            self.templateId = templateId
            self.title = title
            self.tracking = tracking
            self.type = type
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.storeId = try container.decodeIfPresent(String.self, forKey: .storeId)
            self.templateId = try container.decodeIfPresent(Int.self, forKey: .templateId)
            self.title = try container.decodeIfPresent(String.self, forKey: .title)
            self.tracking = try container.decodeIfPresent(CreateLandingPagesRequestTracking.self, forKey: .tracking)
            self.type = try container.decodeIfPresent(CreateLandingPagesRequestType.self, forKey: .type)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.listId, forKey: .listId)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.storeId, forKey: .storeId)
            try container.encodeIfPresent(self.templateId, forKey: .templateId)
            try container.encodeIfPresent(self.title, forKey: .title)
            try container.encodeIfPresent(self.tracking, forKey: .tracking)
            try container.encodeIfPresent(self.type, forKey: .type)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case description
            case listId = "list_id"
            case name
            case storeId = "store_id"
            case templateId = "template_id"
            case title
            case tracking
            case type
        }
    }
}