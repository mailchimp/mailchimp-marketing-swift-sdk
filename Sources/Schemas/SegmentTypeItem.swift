import Foundation

public enum SegmentTypeItem: Codable, Hashable, Sendable {
    /// Segment by an address-type merge field.
    case addressMerge(SegmentTypeItemAddressMerge)
    /// Segment by interaction with a specific campaign.
    case aim(SegmentTypeItemAim)
    /// Segment by interaction with an Automation workflow.
    case automation(SegmentTypeItemAutomation)
    /// Segment by a contact's birthday.
    case birthdayMerge(SegmentTypeItemBirthdayMerge)
    /// Segment by poll activity.
    case campaignPoll(SegmentTypeItemCampaignPoll)
    /// Segment by interaction with a campaign via Conversations.
    case conversation(SegmentTypeItemConversation)
    /// Segment by a specific date field.
    case date(SegmentTypeItemDate)
    /// Segment by a given date merge field.
    case dateMerge(SegmentTypeItemDateMerge)
    /// Segment by purchases in specific items or categories.
    case ecommCategory(SegmentTypeItemEcommCategory)
    /// Segment by average spent total, number of orders, total number of products purchased, or average number of products per order.
    case ecommNumber(SegmentTypeItemEcommNumber)
    /// Segment by whether someone has purchased anything.
    case ecommPurchased(SegmentTypeItemEcommPurchased)
    /// Segment by amount spent on a single order or across all orders.
    case ecommSpent(SegmentTypeItemEcommSpent)
    /// Segment by purchases from a specific store.
    case ecommStore(SegmentTypeItemEcommStore)
    /// Segment by email address.
    case emailAddress(SegmentTypeItemEmailAddress)
    /// Segment by use of a particular email client.
    case emailClient(SegmentTypeItemEmailClient)
    /// Segment by similar subscribers.
    case fuzzySegment(SegmentTypeItemFuzzySegment)
    /// Segment by Goal activity.
    case goalActivity(SegmentTypeItemGoalActivity)
    /// Segment by most recent interaction with a website.
    case goalTimestamp(SegmentTypeItemGoalTimestamp)
    /// Segment by an interest group merge field.
    case interests(SegmentTypeItemInterests)
    /// Segment by a specific country or US state.
    case ipGeoCountryState(SegmentTypeItemIpGeoCountryState)
    /// Segment by a specific geographic region.
    case ipGeoIn(SegmentTypeItemIpGeoIn)
    /// Segment by a specific US ZIP code.
    case ipGeoInZip(SegmentTypeItemIpGeoInZip)
    /// Segment members whose location information is unknown.
    case ipGeoUnknown(SegmentTypeItemIpGeoUnknown)
    /// Segment by a specific US ZIP code.
    case ipGeoZip(SegmentTypeItemIpGeoZip)
    /// Segment by language.
    case language(SegmentTypeItemLanguage)
    /// Segment by member rating.
    case memberRating(SegmentTypeItemMemberRating)
    /// Segment by when people subscribed.
    case newSubscribers(SegmentTypeItemNewSubscribers)
    /// Segment by predicted age.
    case predictedAge(SegmentTypeItemPredictedAge)
    /// Segment by predicted gender.
    case predictedGender(SegmentTypeItemPredictedGender)
    /// An individual segment condition
    case selectMerge(SegmentTypeItemSelectMerge)
    /// Segment by signup source.
    case signupSource(SegmentTypeItemSignupSource)
    /// Segment by age ranges in Social Profiles data.
    case socialAge(SegmentTypeItemSocialAge)
    /// Segment by listed gender in Social Profiles data.
    case socialGender(SegmentTypeItemSocialGender)
    /// Segment by influence rating in Social Profiles data.
    case socialInfluence(SegmentTypeItemSocialInfluence)
    /// Segment by social network in Social Profiles data.
    case socialNetworkFollow(SegmentTypeItemSocialNetworkFollow)
    /// Segment by social network in Social Profiles data.
    case socialNetworkMember(SegmentTypeItemSocialNetworkMember)
    /// Segment by a given static segment.
    case staticSegment(SegmentTypeItemStaticSegment)
    /// Segment by interaction with a SurveyMonkey survey.
    case surveyMonkey(SegmentTypeItemSurveyMonkey)
    /// Segment by a given text or number merge field.
    case textMerge(SegmentTypeItemTextMerge)
    /// Segment by VIP status.
    case vip(SegmentTypeItemVip)
    /// Segment by an address-type merge field within a given distance.
    case zipMerge(SegmentTypeItemZipMerge)

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let discriminant = try container.decode(String.self, forKey: .conditionType)
        switch discriminant {
        case "AddressMerge":
            self = .addressMerge(try SegmentTypeItemAddressMerge(from: decoder))
        case "Aim":
            self = .aim(try SegmentTypeItemAim(from: decoder))
        case "Automation":
            self = .automation(try SegmentTypeItemAutomation(from: decoder))
        case "BirthdayMerge":
            self = .birthdayMerge(try SegmentTypeItemBirthdayMerge(from: decoder))
        case "CampaignPoll":
            self = .campaignPoll(try SegmentTypeItemCampaignPoll(from: decoder))
        case "Conversation":
            self = .conversation(try SegmentTypeItemConversation(from: decoder))
        case "Date":
            self = .date(try SegmentTypeItemDate(from: decoder))
        case "DateMerge":
            self = .dateMerge(try SegmentTypeItemDateMerge(from: decoder))
        case "EcommCategory":
            self = .ecommCategory(try SegmentTypeItemEcommCategory(from: decoder))
        case "EcommNumber":
            self = .ecommNumber(try SegmentTypeItemEcommNumber(from: decoder))
        case "EcommPurchased":
            self = .ecommPurchased(try SegmentTypeItemEcommPurchased(from: decoder))
        case "EcommSpent":
            self = .ecommSpent(try SegmentTypeItemEcommSpent(from: decoder))
        case "EcommStore":
            self = .ecommStore(try SegmentTypeItemEcommStore(from: decoder))
        case "EmailAddress":
            self = .emailAddress(try SegmentTypeItemEmailAddress(from: decoder))
        case "EmailClient":
            self = .emailClient(try SegmentTypeItemEmailClient(from: decoder))
        case "FuzzySegment":
            self = .fuzzySegment(try SegmentTypeItemFuzzySegment(from: decoder))
        case "GoalActivity":
            self = .goalActivity(try SegmentTypeItemGoalActivity(from: decoder))
        case "GoalTimestamp":
            self = .goalTimestamp(try SegmentTypeItemGoalTimestamp(from: decoder))
        case "Interests":
            self = .interests(try SegmentTypeItemInterests(from: decoder))
        case "IPGeoCountryState":
            self = .ipGeoCountryState(try SegmentTypeItemIpGeoCountryState(from: decoder))
        case "IPGeoIn":
            self = .ipGeoIn(try SegmentTypeItemIpGeoIn(from: decoder))
        case "IPGeoInZip":
            self = .ipGeoInZip(try SegmentTypeItemIpGeoInZip(from: decoder))
        case "IPGeoUnknown":
            self = .ipGeoUnknown(try SegmentTypeItemIpGeoUnknown(from: decoder))
        case "IPGeoZip":
            self = .ipGeoZip(try SegmentTypeItemIpGeoZip(from: decoder))
        case "Language":
            self = .language(try SegmentTypeItemLanguage(from: decoder))
        case "MemberRating":
            self = .memberRating(try SegmentTypeItemMemberRating(from: decoder))
        case "NewSubscribers":
            self = .newSubscribers(try SegmentTypeItemNewSubscribers(from: decoder))
        case "PredictedAge":
            self = .predictedAge(try SegmentTypeItemPredictedAge(from: decoder))
        case "PredictedGender":
            self = .predictedGender(try SegmentTypeItemPredictedGender(from: decoder))
        case "SelectMerge":
            self = .selectMerge(try SegmentTypeItemSelectMerge(from: decoder))
        case "SignupSource":
            self = .signupSource(try SegmentTypeItemSignupSource(from: decoder))
        case "SocialAge":
            self = .socialAge(try SegmentTypeItemSocialAge(from: decoder))
        case "SocialGender":
            self = .socialGender(try SegmentTypeItemSocialGender(from: decoder))
        case "SocialInfluence":
            self = .socialInfluence(try SegmentTypeItemSocialInfluence(from: decoder))
        case "SocialNetworkFollow":
            self = .socialNetworkFollow(try SegmentTypeItemSocialNetworkFollow(from: decoder))
        case "SocialNetworkMember":
            self = .socialNetworkMember(try SegmentTypeItemSocialNetworkMember(from: decoder))
        case "StaticSegment":
            self = .staticSegment(try SegmentTypeItemStaticSegment(from: decoder))
        case "SurveyMonkey":
            self = .surveyMonkey(try SegmentTypeItemSurveyMonkey(from: decoder))
        case "TextMerge":
            self = .textMerge(try SegmentTypeItemTextMerge(from: decoder))
        case "VIP":
            self = .vip(try SegmentTypeItemVip(from: decoder))
        case "ZipMerge":
            self = .zipMerge(try SegmentTypeItemZipMerge(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                DecodingError.Context(
                    codingPath: decoder.codingPath,
                    debugDescription: "Unknown shape discriminant value: \(discriminant)"
                )
            )
        }
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .addressMerge(let data):
            try container.encode("AddressMerge", forKey: .conditionType)
            try data.encode(to: encoder)
        case .aim(let data):
            try container.encode("Aim", forKey: .conditionType)
            try data.encode(to: encoder)
        case .automation(let data):
            try container.encode("Automation", forKey: .conditionType)
            try data.encode(to: encoder)
        case .birthdayMerge(let data):
            try container.encode("BirthdayMerge", forKey: .conditionType)
            try data.encode(to: encoder)
        case .campaignPoll(let data):
            try container.encode("CampaignPoll", forKey: .conditionType)
            try data.encode(to: encoder)
        case .conversation(let data):
            try container.encode("Conversation", forKey: .conditionType)
            try data.encode(to: encoder)
        case .date(let data):
            try container.encode("Date", forKey: .conditionType)
            try data.encode(to: encoder)
        case .dateMerge(let data):
            try container.encode("DateMerge", forKey: .conditionType)
            try data.encode(to: encoder)
        case .ecommCategory(let data):
            try container.encode("EcommCategory", forKey: .conditionType)
            try data.encode(to: encoder)
        case .ecommNumber(let data):
            try container.encode("EcommNumber", forKey: .conditionType)
            try data.encode(to: encoder)
        case .ecommPurchased(let data):
            try container.encode("EcommPurchased", forKey: .conditionType)
            try data.encode(to: encoder)
        case .ecommSpent(let data):
            try container.encode("EcommSpent", forKey: .conditionType)
            try data.encode(to: encoder)
        case .ecommStore(let data):
            try container.encode("EcommStore", forKey: .conditionType)
            try data.encode(to: encoder)
        case .emailAddress(let data):
            try container.encode("EmailAddress", forKey: .conditionType)
            try data.encode(to: encoder)
        case .emailClient(let data):
            try container.encode("EmailClient", forKey: .conditionType)
            try data.encode(to: encoder)
        case .fuzzySegment(let data):
            try container.encode("FuzzySegment", forKey: .conditionType)
            try data.encode(to: encoder)
        case .goalActivity(let data):
            try container.encode("GoalActivity", forKey: .conditionType)
            try data.encode(to: encoder)
        case .goalTimestamp(let data):
            try container.encode("GoalTimestamp", forKey: .conditionType)
            try data.encode(to: encoder)
        case .interests(let data):
            try container.encode("Interests", forKey: .conditionType)
            try data.encode(to: encoder)
        case .ipGeoCountryState(let data):
            try container.encode("IPGeoCountryState", forKey: .conditionType)
            try data.encode(to: encoder)
        case .ipGeoIn(let data):
            try container.encode("IPGeoIn", forKey: .conditionType)
            try data.encode(to: encoder)
        case .ipGeoInZip(let data):
            try container.encode("IPGeoInZip", forKey: .conditionType)
            try data.encode(to: encoder)
        case .ipGeoUnknown(let data):
            try container.encode("IPGeoUnknown", forKey: .conditionType)
            try data.encode(to: encoder)
        case .ipGeoZip(let data):
            try container.encode("IPGeoZip", forKey: .conditionType)
            try data.encode(to: encoder)
        case .language(let data):
            try container.encode("Language", forKey: .conditionType)
            try data.encode(to: encoder)
        case .memberRating(let data):
            try container.encode("MemberRating", forKey: .conditionType)
            try data.encode(to: encoder)
        case .newSubscribers(let data):
            try container.encode("NewSubscribers", forKey: .conditionType)
            try data.encode(to: encoder)
        case .predictedAge(let data):
            try container.encode("PredictedAge", forKey: .conditionType)
            try data.encode(to: encoder)
        case .predictedGender(let data):
            try container.encode("PredictedGender", forKey: .conditionType)
            try data.encode(to: encoder)
        case .selectMerge(let data):
            try container.encode("SelectMerge", forKey: .conditionType)
            try data.encode(to: encoder)
        case .signupSource(let data):
            try container.encode("SignupSource", forKey: .conditionType)
            try data.encode(to: encoder)
        case .socialAge(let data):
            try container.encode("SocialAge", forKey: .conditionType)
            try data.encode(to: encoder)
        case .socialGender(let data):
            try container.encode("SocialGender", forKey: .conditionType)
            try data.encode(to: encoder)
        case .socialInfluence(let data):
            try container.encode("SocialInfluence", forKey: .conditionType)
            try data.encode(to: encoder)
        case .socialNetworkFollow(let data):
            try container.encode("SocialNetworkFollow", forKey: .conditionType)
            try data.encode(to: encoder)
        case .socialNetworkMember(let data):
            try container.encode("SocialNetworkMember", forKey: .conditionType)
            try data.encode(to: encoder)
        case .staticSegment(let data):
            try container.encode("StaticSegment", forKey: .conditionType)
            try data.encode(to: encoder)
        case .surveyMonkey(let data):
            try container.encode("SurveyMonkey", forKey: .conditionType)
            try data.encode(to: encoder)
        case .textMerge(let data):
            try container.encode("TextMerge", forKey: .conditionType)
            try data.encode(to: encoder)
        case .vip(let data):
            try container.encode("VIP", forKey: .conditionType)
            try data.encode(to: encoder)
        case .zipMerge(let data):
            try container.encode("ZipMerge", forKey: .conditionType)
            try data.encode(to: encoder)
        }
    }

    enum CodingKeys: String, CodingKey, CaseIterable {
        case conditionType = "condition_type"
    }
}