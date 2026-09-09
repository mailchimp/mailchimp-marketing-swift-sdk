import Foundation

/// The action that triggers the delay of an Automation email.
public enum AutomationWorkflowEmailDelayAction: String, Codable, Hashable, CaseIterable, Sendable {
    case previousCampaignSent = "previous_campaign_sent"
    case previousCampaignOpened = "previous_campaign_opened"
    case previousCampaignNotOpened = "previous_campaign_not_opened"
    case previousCampaignClickedAny = "previous_campaign_clicked_any"
    case previousCampaignNotClickedAny = "previous_campaign_not_clicked_any"
    case previousCampaignSpecificClicked = "previous_campaign_specific_clicked"
    case ecommBoughtAny = "ecomm_bought_any"
    case ecommBoughtProduct = "ecomm_bought_product"
    case ecommBoughtCategory = "ecomm_bought_category"
    case ecommNotBoughtAny = "ecomm_not_bought_any"
    case ecommAbandonedCart = "ecomm_abandoned_cart"
    case campaignSent = "campaign_sent"
    case openedEmail = "opened_email"
    case notOpenedEmail = "not_opened_email"
    case clickedEmail = "clicked_email"
    case notClickedEmail = "not_clicked_email"
    case campaignSpecificClicked = "campaign_specific_clicked"
    case manual
    case signup
    case mergeChanged = "merge_changed"
    case groupAdd = "group_add"
    case groupRemove = "group_remove"
    case mandrillSent = "mandrill_sent"
    case mandrillOpened = "mandrill_opened"
    case mandrillClicked = "mandrill_clicked"
    case mandrillAny = "mandrill_any"
    case api
    case goal
    case annual
    case birthday
    case date
    case dateAdded = "date_added"
    case tagAdd = "tag_add"
}