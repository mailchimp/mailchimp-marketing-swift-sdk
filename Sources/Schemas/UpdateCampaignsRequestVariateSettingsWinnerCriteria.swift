import Foundation

/// The combination that performs the best. This may be determined automatically by click rate, open rate, or total revenue -- or you may choose manually based on the reporting data you find the most valuable. For Multivariate Campaigns testing send_time, winner_criteria is ignored. For Multivariate Campaigns with 'manual' as the winner_criteria, the winner must be chosen in the Mailchimp web application.
public enum UpdateCampaignsRequestVariateSettingsWinnerCriteria: String, Codable, Hashable, CaseIterable, Sendable {
    case opens
    case clicks
    case manual
    case totalRevenue = "total_revenue"
}