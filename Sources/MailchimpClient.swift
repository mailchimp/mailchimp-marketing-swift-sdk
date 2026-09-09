import Foundation

/// Use this class to access the different functions within the SDK. You can instantiate any number of clients with different configuration that will propagate to these functions.
public final class MailchimpClient: Sendable {
    public let root: RootClient
    public let accountExports: AccountExportsClient
    public let activityFeed: ActivityFeedClient
    public let authorizedApps: AuthorizedAppsClient
    public let automations: AutomationsClient
    public let batchWebhooks: BatchWebhooksClient
    public let batches: BatchesClient
    public let campaignFolders: CampaignFoldersClient
    public let campaigns: CampaignsClient
    public let connectedSites: ConnectedSitesClient
    public let conversations: ConversationsClient
    public let customerJourneys: CustomerJourneysClient
    public let ecommerce: EcommerceClient
    public let facebookAds: FacebookAdsClient
    public let fileManager: FileManagerClient
    public let landingPages: LandingPagesClient
    public let lists: ListsClient
    public let surveys: SurveysClient
    public let ping: PingClient
    public let reporting: ReportingClient
    public let reports: ReportsClient
    public let searchCampaigns: SearchCampaignsClient
    public let smsCampaigns: SmsCampaignsClient
    public let searchMembers: SearchMembersClient
    public let templateFolders: TemplateFoldersClient
    public let templates: TemplatesClient
    public let verifiedDomains: VerifiedDomainsClient
    private let httpClient: HTTPClient

    /// Initialize the client with the specified configuration and a static bearer token.
    ///
    /// - Parameter baseURL: The base URL to use for requests from the client. If not provided, the default base URL will be used.
    /// - Parameter token: Bearer token for authentication. If provided, will be sent as "Bearer {token}" in Authorization header.
    /// - Parameter headers: Additional headers to send with each request.
    /// - Parameter timeout: Request timeout in seconds. Defaults to 60 seconds. Ignored if a custom `urlSession` is provided.
    /// - Parameter maxRetries: Maximum number of retries for failed requests. Defaults to 2.
    /// - Parameter urlSession: Custom `URLSession` to use for requests. If not provided, a default session will be created with the specified timeout.
    public convenience init(
        baseURL: String = MailchimpEnvironment.default.rawValue,
        token: String,
        headers: [String: String]? = nil,
        timeout: Int? = nil,
        maxRetries: Int? = nil,
        urlSession: Networking.URLSession? = nil
    ) {
        self.init(
            baseURL: baseURL,
            headerAuth: nil,
            bearerAuth: .init(token: .staticToken(token)),
            basicAuth: nil,
            headers: headers,
            timeout: timeout,
            maxRetries: maxRetries,
            urlSession: urlSession
        )
    }

    /// Initialize the client with the specified configuration and an async bearer token provider.
    ///
    /// - Parameter baseURL: The base URL to use for requests from the client. If not provided, the default base URL will be used.
    /// - Parameter token: An async function that returns the bearer token for authentication. If provided, will be sent as "Bearer {token}" in Authorization header.
    /// - Parameter headers: Additional headers to send with each request.
    /// - Parameter timeout: Request timeout in seconds. Defaults to 60 seconds. Ignored if a custom `urlSession` is provided.
    /// - Parameter maxRetries: Maximum number of retries for failed requests. Defaults to 2.
    /// - Parameter urlSession: Custom `URLSession` to use for requests. If not provided, a default session will be created with the specified timeout.
    public convenience init(
        baseURL: String = MailchimpEnvironment.default.rawValue,
        token: @escaping ClientConfig.CredentialProvider,
        headers: [String: String]? = nil,
        timeout: Int? = nil,
        maxRetries: Int? = nil,
        urlSession: Networking.URLSession? = nil
    ) {
        self.init(
            baseURL: baseURL,
            headerAuth: nil,
            bearerAuth: .init(token: .provider(token)),
            basicAuth: nil,
            headers: headers,
            timeout: timeout,
            maxRetries: maxRetries,
            urlSession: urlSession
        )
    }

    init(
        baseURL: String,
        headerAuth: ClientConfig.HeaderAuth? = nil,
        bearerAuth: ClientConfig.BearerAuth? = nil,
        basicAuth: ClientConfig.BasicAuth? = nil,
        headers: [String: String]? = nil,
        timeout: Int? = nil,
        maxRetries: Int? = nil,
        urlSession: Networking.URLSession? = nil
    ) {
        let config = ClientConfig(
            baseURL: baseURL,
            headerAuth: headerAuth,
            bearerAuth: bearerAuth,
            basicAuth: basicAuth,
            headers: headers,
            timeout: timeout,
            maxRetries: maxRetries,
            urlSession: urlSession
        )
        self.root = RootClient(config: config)
        self.accountExports = AccountExportsClient(config: config)
        self.activityFeed = ActivityFeedClient(config: config)
        self.authorizedApps = AuthorizedAppsClient(config: config)
        self.automations = AutomationsClient(config: config)
        self.batchWebhooks = BatchWebhooksClient(config: config)
        self.batches = BatchesClient(config: config)
        self.campaignFolders = CampaignFoldersClient(config: config)
        self.campaigns = CampaignsClient(config: config)
        self.connectedSites = ConnectedSitesClient(config: config)
        self.conversations = ConversationsClient(config: config)
        self.customerJourneys = CustomerJourneysClient(config: config)
        self.ecommerce = EcommerceClient(config: config)
        self.facebookAds = FacebookAdsClient(config: config)
        self.fileManager = FileManagerClient(config: config)
        self.landingPages = LandingPagesClient(config: config)
        self.lists = ListsClient(config: config)
        self.surveys = SurveysClient(config: config)
        self.ping = PingClient(config: config)
        self.reporting = ReportingClient(config: config)
        self.reports = ReportsClient(config: config)
        self.searchCampaigns = SearchCampaignsClient(config: config)
        self.smsCampaigns = SmsCampaignsClient(config: config)
        self.searchMembers = SearchMembersClient(config: config)
        self.templateFolders = TemplateFoldersClient(config: config)
        self.templates = TemplatesClient(config: config)
        self.verifiedDomains = VerifiedDomainsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}