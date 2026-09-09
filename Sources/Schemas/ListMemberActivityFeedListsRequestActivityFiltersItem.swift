import Foundation

public enum ListMemberActivityFeedListsRequestActivityFiltersItem: String, Codable, Hashable, CaseIterable, Sendable {
    case bounce
    case click
    case conversation
    case ecommerceSignup = "ecommerce_signup"
    case event
    case webEngagement = "web_engagement"
    case genericSignup = "generic_signup"
    case landingPageSignup = "landing_page_signup"
    case marketingPermission = "marketing_permission"
    case note
    case open
    case order
    case postcardSent = "postcard_sent"
    case sent
    case signup
    case squatterSignup = "squatter_signup"
    case unsub
    case websiteSignup = "website_signup"
    case surveyResponse = "survey_response"
    case smsBulkSent = "sms_bulk_sent"
    case inboxThread = "inbox_thread"
    case qboPaymentLink = "qbo_payment_link"
    case videoCallTranscripts = "video_call_transcripts"
    case whatsappBulkSent = "whatsapp_bulk_sent"
    case whatsappDelivered = "whatsapp_delivered"
    case whatsappLinkClick = "whatsapp_link_click"
    case whatsappSubscribe = "whatsapp_subscribe"
    case whatsappSubscriptionPhoneUpdated = "whatsapp_subscription_phone_updated"
    case whatsappUnsubscribe = "whatsapp_unsubscribe"
    case whatsappUsedKeyword = "whatsapp_used_keyword"
}