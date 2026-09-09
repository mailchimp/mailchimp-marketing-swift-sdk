import Foundation

public struct ListFacebookAdEcommerceProductActivityReportingResponseProductsItem: Codable, Hashable, Sendable {
    public let currencyCode: String?
    public let imageUrl: String?
    public let recommendationPurchased: Int?
    public let recommendationTotal: Int?
    public let sku: String?
    public let title: String?
    public let totalPurchased: Double?
    public let totalRevenue: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        currencyCode: String? = nil,
        imageUrl: String? = nil,
        recommendationPurchased: Int? = nil,
        recommendationTotal: Int? = nil,
        sku: String? = nil,
        title: String? = nil,
        totalPurchased: Double? = nil,
        totalRevenue: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.currencyCode = currencyCode
        self.imageUrl = imageUrl
        self.recommendationPurchased = recommendationPurchased
        self.recommendationTotal = recommendationTotal
        self.sku = sku
        self.title = title
        self.totalPurchased = totalPurchased
        self.totalRevenue = totalRevenue
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.currencyCode = try container.decodeIfPresent(String.self, forKey: .currencyCode)
        self.imageUrl = try container.decodeIfPresent(String.self, forKey: .imageUrl)
        self.recommendationPurchased = try container.decodeIfPresent(Int.self, forKey: .recommendationPurchased)
        self.recommendationTotal = try container.decodeIfPresent(Int.self, forKey: .recommendationTotal)
        self.sku = try container.decodeIfPresent(String.self, forKey: .sku)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.totalPurchased = try container.decodeIfPresent(Double.self, forKey: .totalPurchased)
        self.totalRevenue = try container.decodeIfPresent(Double.self, forKey: .totalRevenue)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.imageUrl, forKey: .imageUrl)
        try container.encodeIfPresent(self.recommendationPurchased, forKey: .recommendationPurchased)
        try container.encodeIfPresent(self.recommendationTotal, forKey: .recommendationTotal)
        try container.encodeIfPresent(self.sku, forKey: .sku)
        try container.encodeIfPresent(self.title, forKey: .title)
        try container.encodeIfPresent(self.totalPurchased, forKey: .totalPurchased)
        try container.encodeIfPresent(self.totalRevenue, forKey: .totalRevenue)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case currencyCode = "currency_code"
        case imageUrl = "image_url"
        case recommendationPurchased = "recommendation_purchased"
        case recommendationTotal = "recommendation_total"
        case sku
        case title
        case totalPurchased = "total_purchased"
        case totalRevenue = "total_revenue"
    }
}