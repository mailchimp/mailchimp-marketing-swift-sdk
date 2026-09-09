import Foundation

public final class ReportingClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get information about the reporting endpoint's resources.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reporting.list()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(requestOptions: RequestOptions? = nil) async throws -> [ListReportingResponseItem] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reporting",
            requestOptions: requestOptions,
            responseType: [ListReportingResponseItem].self
        )
    }

    /// Get reports of Facebook ads.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reporting.listFacebookAds()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter sortField: Returns files sorted by the specified field.
    /// - Parameter sortDir: Determines the order direction for sorted results.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listFacebookAds(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, sortField: ListFacebookAdsReportingRequestSortField? = nil, sortDir: ListFacebookAdsReportingRequestSortDir? = nil, requestOptions: RequestOptions? = nil) async throws -> ListFacebookAdsReportingResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reporting/facebook-ads",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "sort_field": sortField.map { .string($0.rawValue) }, 
                "sort_dir": sortDir.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: ListFacebookAdsReportingResponse.self
        )
    }

    /// Get report of a Facebook ad.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reporting.getFacebookAd(outreachId: "outreach_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter outreachId: The outreach id.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getFacebookAd(outreachId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ReportingFacebookAd {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reporting/facebook-ads/\(outreachId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ReportingFacebookAd.self
        )
    }

    /// Get breakdown of product activity for an outreach.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reporting.listFacebookAdEcommerceProductActivity(outreachId: "outreach_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter outreachId: The outreach id.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter sortField: Returns files sorted by the specified field.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listFacebookAdEcommerceProductActivity(outreachId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, sortField: ListFacebookAdEcommerceProductActivityReportingRequestSortField? = nil, requestOptions: RequestOptions? = nil) async throws -> ListFacebookAdEcommerceProductActivityReportingResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reporting/facebook-ads/\(outreachId)/ecommerce-product-activity",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }, 
                "sort_field": sortField.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: ListFacebookAdEcommerceProductActivityReportingResponse.self
        )
    }

    /// Get reports of landing pages.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reporting.listLandingPages()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listLandingPages(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListLandingPagesReportingResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reporting/landing-pages",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListLandingPagesReportingResponse.self
        )
    }

    /// Get report of a landing page.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reporting.getLandingPage(outreachId: "outreach_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter outreachId: The outreach id.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getLandingPage(outreachId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> LandingPageReport {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reporting/landing-pages/\(outreachId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: LandingPageReport.self
        )
    }

    /// Get reports for surveys.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reporting.listSurveys()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter count: The number of records to return. Default value is 10. Maximum value is 1000
    /// - Parameter offset: Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listSurveys(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ListSurveysReportingResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reporting/surveys",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "count": count.map { .int($0) }, 
                "offset": offset.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListSurveysReportingResponse.self
        )
    }

    /// Get report for a survey.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reporting.getSurvey(surveyId: "survey_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter surveyId: The ID of the survey.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getSurvey(surveyId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> GetSurveyReportingResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reporting/surveys/\(surveyId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: GetSurveyReportingResponse.self
        )
    }

    /// Get reports for survey questions.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reporting.listSurveyQuestions(surveyId: "survey_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter surveyId: The ID of the survey.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listSurveyQuestions(surveyId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> ListSurveyQuestionsReportingResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reporting/surveys/\(surveyId)/questions",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListSurveyQuestionsReportingResponse.self
        )
    }

    /// Get report for a survey question.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reporting.getSurveyQuestion(
    ///         surveyId: "survey_id",
    ///         questionId: "question_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter surveyId: The ID of the survey.
    /// - Parameter questionId: The ID of the survey question.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getSurveyQuestion(surveyId: String, questionId: String, fields: [String]? = nil, excludeFields: [String]? = nil, requestOptions: RequestOptions? = nil) async throws -> SurveyQuestionReport {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reporting/surveys/\(surveyId)/questions/\(questionId)",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }
            ],
            requestOptions: requestOptions,
            responseType: SurveyQuestionReport.self
        )
    }

    /// Get answers for a survey question.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reporting.listSurveyQuestionAnswers(
    ///         surveyId: "survey_id",
    ///         questionId: "question_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter surveyId: The ID of the survey.
    /// - Parameter questionId: The ID of the survey question.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter respondentFamiliarityIs: Filter survey responses by familiarity of the respondents.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listSurveyQuestionAnswers(surveyId: String, questionId: String, fields: [String]? = nil, excludeFields: [String]? = nil, respondentFamiliarityIs: ListSurveyQuestionAnswersReportingRequestRespondentFamiliarityIs? = nil, requestOptions: RequestOptions? = nil) async throws -> ListSurveyQuestionAnswersReportingResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reporting/surveys/\(surveyId)/questions/\(questionId)/answers",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "respondent_familiarity_is": respondentFamiliarityIs.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: ListSurveyQuestionAnswersReportingResponse.self
        )
    }

    /// Get responses to a survey.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reporting.listSurveyResponses(surveyId: "survey_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter surveyId: The ID of the survey.
    /// - Parameter fields: A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    /// - Parameter excludeFields: A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    /// - Parameter answeredQuestion: The ID of the question that was answered.
    /// - Parameter choseAnswer: The ID of the option chosen to filter responses on.
    /// - Parameter respondentFamiliarityIs: Filter survey responses by familiarity of the respondents.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listSurveyResponses(surveyId: String, fields: [String]? = nil, excludeFields: [String]? = nil, answeredQuestion: Int? = nil, choseAnswer: String? = nil, respondentFamiliarityIs: ListSurveyResponsesReportingRequestRespondentFamiliarityIs? = nil, requestOptions: RequestOptions? = nil) async throws -> ListSurveyResponsesReportingResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reporting/surveys/\(surveyId)/responses",
            queryParams: [
                "fields": fields.map { .stringArray($0) }, 
                "exclude_fields": excludeFields.map { .stringArray($0) }, 
                "answered_question": answeredQuestion.map { .int($0) }, 
                "chose_answer": choseAnswer.map { .string($0) }, 
                "respondent_familiarity_is": respondentFamiliarityIs.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: ListSurveyResponsesReportingResponse.self
        )
    }

    /// Get a single survey response.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.reporting.getSurveyRespons(
    ///         surveyId: "survey_id",
    ///         responseId: "response_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter surveyId: The ID of the survey.
    /// - Parameter responseId: The ID of the survey response.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getSurveyRespons(surveyId: String, responseId: String, requestOptions: RequestOptions? = nil) async throws -> GetSurveyResponsReportingResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/reporting/surveys/\(surveyId)/responses/\(responseId)",
            requestOptions: requestOptions,
            responseType: GetSurveyResponsReportingResponse.self
        )
    }
}