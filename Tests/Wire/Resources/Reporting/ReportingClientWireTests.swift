import Foundation
import Testing
import Mailchimp

@Suite("ReportingClient Wire Tests") struct ReportingClientWireTests {
    @Test func list1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                [
                  {
                    "href": "href",
                    "method": "GET",
                    "rel": "rel",
                    "schema": "schema",
                    "targetSchema": "targetSchema"
                  }
                ]
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            ListReportingResponseItem(
                href: Optional("href"),
                method: Optional(ListReportingResponseItemMethod.get),
                rel: Optional("rel"),
                schema: Optional("schema"),
                targetSchema: Optional("targetSchema")
            )
        ]
        let response = try await client.reporting.list(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func listFacebookAds1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "facebook_ads": [
                    {
                      "canceled_at": "2024-01-15T09:30:00Z",
                      "create_time": "2024-01-15T09:30:00Z",
                      "has_segment": true,
                      "id": "id",
                      "name": "name",
                      "published_time": "2024-01-15T09:30:00Z",
                      "recipients": {
                        "segment_opts": {
                          "conditions": [
                            {
                              "value": "any",
                              "condition_type": "Aim"
                            }
                          ],
                          "prebuilt_segment_id": "subscribers-female"
                        }
                      },
                      "show_report": true,
                      "start_time": "2024-01-15T09:30:00Z",
                      "status": "save",
                      "type": "regular",
                      "updated_at": "2024-01-15T09:30:00Z",
                      "web_id": 1,
                      "email_source_name": "email_source_name",
                      "end_time": "2024-01-15T09:30:00Z",
                      "needs_attention": true,
                      "paused_at": "2024-01-15T09:30:00Z",
                      "thumbnail": "thumbnail",
                      "was_canceled_by_facebook": true,
                      "budget": {
                        "currency_code": "USD",
                        "duration": 86400,
                        "total_amount": 500
                      },
                      "channel": {
                        "fb_placement_audience": false,
                        "fb_placement_feed": true,
                        "ig_placement_feed": false
                      },
                      "_links": [
                        {}
                      ]
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListFacebookAdsReportingResponse(
            links: Optional([
                ListFacebookAdsReportingResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListFacebookAdsReportingResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            facebookAds: Optional([
                ReportingFacebookAd(
                    emailSourceName: Optional("email_source_name"),
                    endTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    needsAttention: Optional(true),
                    pausedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    thumbnail: Optional("thumbnail"),
                    wasCanceledByFacebook: Optional(true),
                    budget: Optional(ReportingFacebookAdBudget(
                        currencyCode: Optional("USD"),
                        duration: Optional(86400),
                        totalAmount: Optional(500)
                    )),
                    channel: Optional(ReportingFacebookAdChannel(
                        fbPlacementAudience: Optional(false),
                        fbPlacementFeed: Optional(true),
                        igPlacementFeed: Optional(false)
                    )),
                    links: Optional([
                        ReportingFacebookAdLinksItem(

                        )
                    ]),
                    canceledAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    hasSegment: Optional(true),
                    id: Optional("id"),
                    name: Optional("name"),
                    publishedTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    recipients: Optional(FacebookAdRecipients(
                        segmentOpts: Optional(FacebookAdRecipientsSegmentOpts(
                            conditions: Optional([
                                SegmentTypeItem.aim(
                                    .init(
                                        value: Optional("any"),
                                        additionalProperties: [
                                            "condition_type": JSONValue.string("Aim")
                                        ]
                                    )
                                )
                            ]),
                            prebuiltSegmentId: Optional("subscribers-female")
                        ))
                    )),
                    showReport: Optional(true),
                    startTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    status: Optional(FacebookAdStatus.save),
                    type: Optional(FacebookAdType.regular),
                    updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    webId: Optional(1)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.reporting.listFacebookAds(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getFacebookAd1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "canceled_at": "2024-01-15T09:30:00Z",
                  "create_time": "2024-01-15T09:30:00Z",
                  "has_segment": true,
                  "id": "id",
                  "name": "name",
                  "published_time": "2024-01-15T09:30:00Z",
                  "recipients": {
                    "list_id": "list_id",
                    "list_is_active": true,
                    "list_name": "list_name",
                    "recipient_count": 1,
                    "segment_opts": {
                      "conditions": [
                        {
                          "value": "any",
                          "condition_type": "Aim"
                        }
                      ],
                      "match": "any",
                      "prebuilt_segment_id": "subscribers-female",
                      "saved_segment_id": 1
                    },
                    "segment_text": "segment_text"
                  },
                  "report_summary": {
                    "average_daily_budget": {
                      "amount": 1.1,
                      "currency_code": "currency_code"
                    },
                    "average_order_amount": {
                      "amount": 1.1,
                      "currency_code": "currency_code"
                    },
                    "click_rate": 1.1,
                    "clicks": 1,
                    "comments": 1,
                    "cost_per_click": {
                      "amount": 1.1,
                      "currency_code": "currency_code"
                    },
                    "ecommerce": {
                      "currency_code": "currency_code",
                      "total_revenue": 1.1
                    },
                    "extended_at": {
                      "datetime": "datetime",
                      "timezone": "timezone"
                    },
                    "first_time_buyers": 1,
                    "has_extended_ad_duration": true,
                    "impressions": 1,
                    "likes": 1,
                    "reach": 1,
                    "return_on_investment": 1.1,
                    "shares": 1,
                    "total_orders": 1,
                    "total_products_sold": 1,
                    "unique_clicks": 1
                  },
                  "show_report": true,
                  "start_time": "2024-01-15T09:30:00Z",
                  "status": "save",
                  "type": "regular",
                  "updated_at": "2024-01-15T09:30:00Z",
                  "web_id": 1,
                  "email_source_name": "email_source_name",
                  "end_time": "2024-01-15T09:30:00Z",
                  "needs_attention": true,
                  "paused_at": "2024-01-15T09:30:00Z",
                  "thumbnail": "thumbnail",
                  "was_canceled_by_facebook": true,
                  "audience": {
                    "email_source": {
                      "is_segment": true,
                      "list_name": "list_name",
                      "name": "name",
                      "segment_type": "segment_type",
                      "type": "type"
                    },
                    "include_source_in_target": true,
                    "lookalike_country_code": "lookalike_country_code",
                    "source_type": "facebook",
                    "targeting_specs": {
                      "gender": 1,
                      "interests": [
                        {}
                      ],
                      "max_age": 1,
                      "min_age": 1
                    },
                    "type": "Custom Audience"
                  },
                  "audience_activity": {
                    "clicks": [
                      {}
                    ],
                    "impressions": [
                      {}
                    ],
                    "revenue": [
                      {}
                    ]
                  },
                  "budget": {
                    "currency_code": "USD",
                    "duration": 86400,
                    "total_amount": 500
                  },
                  "channel": {
                    "fb_placement_audience": false,
                    "fb_placement_feed": true,
                    "ig_placement_feed": false
                  },
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ReportingFacebookAd(
            emailSourceName: Optional("email_source_name"),
            endTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            needsAttention: Optional(true),
            pausedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            thumbnail: Optional("thumbnail"),
            wasCanceledByFacebook: Optional(true),
            audience: Optional(ReportingFacebookAdAudience(
                emailSource: Optional(ReportingFacebookAdAudienceEmailSource(
                    isSegment: Optional(true),
                    listName: Optional("list_name"),
                    name: Optional("name"),
                    segmentType: Optional("segment_type"),
                    type: Optional("type")
                )),
                includeSourceInTarget: Optional(true),
                lookalikeCountryCode: Optional("lookalike_country_code"),
                sourceType: Optional(ReportingFacebookAdAudienceSourceType.facebook),
                targetingSpecs: Optional(ReportingFacebookAdAudienceTargetingSpecs(
                    gender: Optional(1),
                    interests: Optional([
                        ReportingFacebookAdAudienceTargetingSpecsInterestsItem(

                        )
                    ]),
                    maxAge: Optional(1),
                    minAge: Optional(1)
                )),
                type: Optional(ReportingFacebookAdAudienceType.customAudience)
            )),
            audienceActivity: Optional(ReportingFacebookAdAudienceActivity(
                clicks: Optional([
                    ReportingFacebookAdAudienceActivityClicksItem(

                    )
                ]),
                impressions: Optional([
                    ReportingFacebookAdAudienceActivityImpressionsItem(

                    )
                ]),
                revenue: Optional([
                    ReportingFacebookAdAudienceActivityRevenueItem(

                    )
                ])
            )),
            budget: Optional(ReportingFacebookAdBudget(
                currencyCode: Optional("USD"),
                duration: Optional(86400),
                totalAmount: Optional(500)
            )),
            channel: Optional(ReportingFacebookAdChannel(
                fbPlacementAudience: Optional(false),
                fbPlacementFeed: Optional(true),
                igPlacementFeed: Optional(false)
            )),
            reportSummary: Optional(ReportingFacebookAdReportSummary(
                averageDailyBudget: Optional(ReportingFacebookAdReportSummaryAverageDailyBudget(
                    amount: Optional(1.1),
                    currencyCode: Optional("currency_code")
                )),
                averageOrderAmount: Optional(ReportingFacebookAdReportSummaryAverageOrderAmount(
                    amount: Optional(1.1),
                    currencyCode: Optional("currency_code")
                )),
                clickRate: Optional(1.1),
                clicks: Optional(1),
                comments: Optional(1),
                costPerClick: Optional(ReportingFacebookAdReportSummaryCostPerClick(
                    amount: Optional(1.1),
                    currencyCode: Optional("currency_code")
                )),
                ecommerce: Optional(ReportingFacebookAdReportSummaryEcommerce(
                    currencyCode: Optional("currency_code"),
                    totalRevenue: Optional(1.1)
                )),
                extendedAt: Optional(ReportingFacebookAdReportSummaryExtendedAt(
                    datetime: Optional("datetime"),
                    timezone: Optional("timezone")
                )),
                firstTimeBuyers: Optional(1),
                hasExtendedAdDuration: Optional(true),
                impressions: Optional(1),
                likes: Optional(1),
                reach: Optional(1),
                returnOnInvestment: Optional(1.1),
                shares: Optional(1),
                totalOrders: Optional(1),
                totalProductsSold: Optional(1),
                uniqueClicks: Optional(1)
            )),
            links: Optional([
                ReportingFacebookAdLinksItem(
                    href: Optional("href"),
                    method: Optional(ReportingFacebookAdLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            canceledAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            hasSegment: Optional(true),
            id: Optional("id"),
            name: Optional("name"),
            publishedTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            recipients: Optional(FacebookAdRecipients(
                listId: Optional("list_id"),
                listIsActive: Optional(true),
                listName: Optional("list_name"),
                recipientCount: Optional(1),
                segmentOpts: Optional(FacebookAdRecipientsSegmentOpts(
                    conditions: Optional([
                        SegmentTypeItem.aim(
                            .init(
                                value: Optional("any"),
                                additionalProperties: [
                                    "condition_type": JSONValue.string("Aim")
                                ]
                            )
                        )
                    ]),
                    match: Optional(FacebookAdRecipientsSegmentOptsMatch.any),
                    prebuiltSegmentId: Optional("subscribers-female"),
                    savedSegmentId: Optional(FacebookAdRecipientsSegmentOptsSavedSegmentId.int(
                        1
                    ))
                )),
                segmentText: Optional("segment_text")
            )),
            showReport: Optional(true),
            startTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            status: Optional(FacebookAdStatus.save),
            type: Optional(FacebookAdType.regular),
            updatedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            webId: Optional(1)
        )
        let response = try await client.reporting.getFacebookAd(
            outreachId: "outreach_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listFacebookAdEcommerceProductActivity1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "products": [
                    {
                      "currency_code": "currency_code",
                      "image_url": "image_url",
                      "recommendation_purchased": 1,
                      "recommendation_total": 1,
                      "sku": "sku",
                      "title": "title",
                      "total_purchased": 1.1,
                      "total_revenue": 1.1
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListFacebookAdEcommerceProductActivityReportingResponse(
            links: Optional([
                ListFacebookAdEcommerceProductActivityReportingResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListFacebookAdEcommerceProductActivityReportingResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            products: Optional([
                ListFacebookAdEcommerceProductActivityReportingResponseProductsItem(
                    currencyCode: Optional("currency_code"),
                    imageUrl: Optional("image_url"),
                    recommendationPurchased: Optional(1),
                    recommendationTotal: Optional(1),
                    sku: Optional("sku"),
                    title: Optional("title"),
                    totalPurchased: Optional(1.1),
                    totalRevenue: Optional(1.1)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.reporting.listFacebookAdEcommerceProductActivity(
            outreachId: "outreach_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listLandingPages1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "landing_pages": [
                    {
                      "_links": [
                        {}
                      ],
                      "clicks": 1,
                      "conversion_rate": 1.1,
                      "id": "00dfc2e1f0",
                      "list_id": "list_id",
                      "list_name": "Test List",
                      "name": "name",
                      "published_at": "2024-01-15T09:30:00Z",
                      "signup_tags": [
                        {}
                      ],
                      "status": "status",
                      "subscribes": 1,
                      "timeseries": {
                        "daily_stats": {
                          "clicks": [
                            {
                              "date": "2018-04-25",
                              "val": 13
                            }
                          ],
                          "unique_visits": [
                            {
                              "date": "2018-04-25",
                              "val": 1
                            }
                          ],
                          "visits": [
                            {
                              "date": "2018-04-25",
                              "val": 11
                            }
                          ]
                        },
                        "weekly_stats": {
                          "clicks": [
                            {
                              "date": "2018-04-25",
                              "val": 23
                            }
                          ],
                          "unique_visits": [
                            {
                              "date": "2018-04-25",
                              "val": 1
                            }
                          ],
                          "visits": [
                            {
                              "date": "2018-04-25",
                              "val": 49
                            }
                          ]
                        }
                      },
                      "title": "title",
                      "unique_visits": 1,
                      "unpublished_at": "2024-01-15T09:30:00Z",
                      "url": "url",
                      "visits": 1,
                      "web_id": 33345484
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListLandingPagesReportingResponse(
            links: Optional([
                ListLandingPagesReportingResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListLandingPagesReportingResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            landingPages: Optional([
                LandingPageReport(
                    links: Optional([
                        LandingPageReportLinksItem(

                        )
                    ]),
                    clicks: Optional(1),
                    conversionRate: Optional(1.1),
                    id: Optional("00dfc2e1f0"),
                    listId: Optional("list_id"),
                    listName: Optional("Test List"),
                    name: Optional("name"),
                    publishedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    signupTags: Optional([
                        LandingPageReportSignupTagsItem(

                        )
                    ]),
                    status: Optional("status"),
                    subscribes: Optional(1),
                    timeseries: Optional(LandingPageReportTimeseries(
                        dailyStats: Optional(LandingPageReportTimeseriesDailyStats(
                            clicks: Optional([
                                LandingPageReportTimeseriesDailyStatsClicksItem(
                                    date: Optional("2018-04-25"),
                                    val: Optional(13)
                                )
                            ]),
                            uniqueVisits: Optional([
                                LandingPageReportTimeseriesDailyStatsUniqueVisitsItem(
                                    date: Optional("2018-04-25"),
                                    val: Optional(1)
                                )
                            ]),
                            visits: Optional([
                                LandingPageReportTimeseriesDailyStatsVisitsItem(
                                    date: Optional("2018-04-25"),
                                    val: Optional(11)
                                )
                            ])
                        )),
                        weeklyStats: Optional(LandingPageReportTimeseriesWeeklyStats(
                            clicks: Optional([
                                LandingPageReportTimeseriesWeeklyStatsClicksItem(
                                    date: Optional("2018-04-25"),
                                    val: Optional(23)
                                )
                            ]),
                            uniqueVisits: Optional([
                                LandingPageReportTimeseriesWeeklyStatsUniqueVisitsItem(
                                    date: Optional("2018-04-25"),
                                    val: Optional(1)
                                )
                            ]),
                            visits: Optional([
                                LandingPageReportTimeseriesWeeklyStatsVisitsItem(
                                    date: Optional("2018-04-25"),
                                    val: Optional(49)
                                )
                            ])
                        ))
                    )),
                    title: Optional("title"),
                    uniqueVisits: Optional(1),
                    unpublishedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    url: Optional("url"),
                    visits: Optional(1),
                    webId: Optional(33345484)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.reporting.listLandingPages(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getLandingPage1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "clicks": 1,
                  "conversion_rate": 1.1,
                  "ecommerce": {
                    "average_order_revenue": 1.1,
                    "currency_code": "currency_code",
                    "total_orders": 1,
                    "total_revenue": 1.1
                  },
                  "id": "00dfc2e1f0",
                  "list_id": "list_id",
                  "list_name": "Test List",
                  "name": "name",
                  "published_at": "2024-01-15T09:30:00Z",
                  "signup_tags": [
                    {
                      "tag_id": 1,
                      "tag_name": "tag_name"
                    }
                  ],
                  "status": "status",
                  "subscribes": 1,
                  "timeseries": {
                    "daily_stats": {
                      "clicks": [
                        {
                          "date": "2018-04-25",
                          "val": 13
                        }
                      ],
                      "unique_visits": [
                        {
                          "date": "2018-04-25",
                          "val": 1
                        }
                      ],
                      "visits": [
                        {
                          "date": "2018-04-25",
                          "val": 11
                        }
                      ]
                    },
                    "weekly_stats": {
                      "clicks": [
                        {
                          "date": "2018-04-25",
                          "val": 23
                        }
                      ],
                      "unique_visits": [
                        {
                          "date": "2018-04-25",
                          "val": 1
                        }
                      ],
                      "visits": [
                        {
                          "date": "2018-04-25",
                          "val": 49
                        }
                      ]
                    }
                  },
                  "title": "title",
                  "unique_visits": 1,
                  "unpublished_at": "2024-01-15T09:30:00Z",
                  "url": "url",
                  "visits": 1,
                  "web_id": 33345484
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = LandingPageReport(
            links: Optional([
                LandingPageReportLinksItem(
                    href: Optional("href"),
                    method: Optional(LandingPageReportLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            clicks: Optional(1),
            conversionRate: Optional(1.1),
            ecommerce: Optional(LandingPageReportEcommerce(
                averageOrderRevenue: Optional(1.1),
                currencyCode: Optional("currency_code"),
                totalOrders: Optional(1),
                totalRevenue: Optional(1.1)
            )),
            id: Optional("00dfc2e1f0"),
            listId: Optional("list_id"),
            listName: Optional("Test List"),
            name: Optional("name"),
            publishedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            signupTags: Optional([
                LandingPageReportSignupTagsItem(
                    tagId: Optional(1),
                    tagName: Optional("tag_name")
                )
            ]),
            status: Optional("status"),
            subscribes: Optional(1),
            timeseries: Optional(LandingPageReportTimeseries(
                dailyStats: Optional(LandingPageReportTimeseriesDailyStats(
                    clicks: Optional([
                        LandingPageReportTimeseriesDailyStatsClicksItem(
                            date: Optional("2018-04-25"),
                            val: Optional(13)
                        )
                    ]),
                    uniqueVisits: Optional([
                        LandingPageReportTimeseriesDailyStatsUniqueVisitsItem(
                            date: Optional("2018-04-25"),
                            val: Optional(1)
                        )
                    ]),
                    visits: Optional([
                        LandingPageReportTimeseriesDailyStatsVisitsItem(
                            date: Optional("2018-04-25"),
                            val: Optional(11)
                        )
                    ])
                )),
                weeklyStats: Optional(LandingPageReportTimeseriesWeeklyStats(
                    clicks: Optional([
                        LandingPageReportTimeseriesWeeklyStatsClicksItem(
                            date: Optional("2018-04-25"),
                            val: Optional(23)
                        )
                    ]),
                    uniqueVisits: Optional([
                        LandingPageReportTimeseriesWeeklyStatsUniqueVisitsItem(
                            date: Optional("2018-04-25"),
                            val: Optional(1)
                        )
                    ]),
                    visits: Optional([
                        LandingPageReportTimeseriesWeeklyStatsVisitsItem(
                            date: Optional("2018-04-25"),
                            val: Optional(49)
                        )
                    ])
                ))
            )),
            title: Optional("title"),
            uniqueVisits: Optional(1),
            unpublishedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            url: Optional("url"),
            visits: Optional(1),
            webId: Optional(33345484)
        )
        let response = try await client.reporting.getLandingPage(
            outreachId: "outreach_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listSurveys1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "surveys": [
                    {
                      "created_at": "2017-08-04T11:09:01Z",
                      "id": "040d2c2e1f0",
                      "list_id": "list_id",
                      "list_name": "list_name",
                      "published_at": "2017-08-04T11:09:01Z",
                      "status": "published",
                      "title": "New product ideas",
                      "total_responses": 810,
                      "updated_at": "2017-08-04T11:09:01Z",
                      "url": "url",
                      "web_id": 165
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListSurveysReportingResponse(
            links: Optional([
                ListSurveysReportingResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListSurveysReportingResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            surveys: Optional([
                ListSurveysReportingResponseSurveysItem(
                    createdAt: Optional(try! Date("2017-08-04T11:09:01Z", strategy: .iso8601)),
                    id: Optional("040d2c2e1f0"),
                    listId: Optional("list_id"),
                    listName: Optional("list_name"),
                    publishedAt: Optional(try! Date("2017-08-04T11:09:01Z", strategy: .iso8601)),
                    status: Optional(ListSurveysReportingResponseSurveysItemStatus.published),
                    title: Optional("New product ideas"),
                    totalResponses: Optional(810),
                    updatedAt: Optional(try! Date("2017-08-04T11:09:01Z", strategy: .iso8601)),
                    url: Optional("url"),
                    webId: Optional(165)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.reporting.listSurveys(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getSurvey1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "created_at": "2017-08-04T11:09:01Z",
                  "id": "040d2c2e1f0",
                  "list_id": "list_id",
                  "list_name": "list_name",
                  "published_at": "2017-08-04T11:09:01Z",
                  "status": "published",
                  "title": "New product ideas",
                  "total_responses": 810,
                  "updated_at": "2017-08-04T11:09:01Z",
                  "url": "url",
                  "web_id": 165
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GetSurveyReportingResponse(
            createdAt: Optional(try! Date("2017-08-04T11:09:01Z", strategy: .iso8601)),
            id: Optional("040d2c2e1f0"),
            listId: Optional("list_id"),
            listName: Optional("list_name"),
            publishedAt: Optional(try! Date("2017-08-04T11:09:01Z", strategy: .iso8601)),
            status: Optional(GetSurveyReportingResponseStatus.published),
            title: Optional("New product ideas"),
            totalResponses: Optional(810),
            updatedAt: Optional(try! Date("2017-08-04T11:09:01Z", strategy: .iso8601)),
            url: Optional("url"),
            webId: Optional(165)
        )
        let response = try await client.reporting.getSurvey(
            surveyId: "survey_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listSurveyQuestions1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "questions": [
                    {
                      "average_rating": 2.5,
                      "has_other": true,
                      "id": "id",
                      "is_required": true,
                      "options": [
                        {}
                      ],
                      "other_label": "other_label",
                      "placeholder_label": "placeholder_label",
                      "query": "query",
                      "range_high_label": "range_high_label",
                      "range_low_label": "range_low_label",
                      "subscribe_checkbox_enabled": true,
                      "subscribe_checkbox_label": "subscribe_checkbox_label",
                      "survey_id": "survey_id",
                      "total_responses": 810,
                      "type": "pickOne"
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListSurveyQuestionsReportingResponse(
            links: Optional([
                ListSurveyQuestionsReportingResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListSurveyQuestionsReportingResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            questions: Optional([
                SurveyQuestionReport(
                    averageRating: Optional(2.5),
                    hasOther: Optional(true),
                    id: Optional("id"),
                    isRequired: Optional(true),
                    options: Optional([
                        SurveyQuestionReportOptionsItem(

                        )
                    ]),
                    otherLabel: Optional("other_label"),
                    placeholderLabel: Optional("placeholder_label"),
                    query: Optional("query"),
                    rangeHighLabel: Optional("range_high_label"),
                    rangeLowLabel: Optional("range_low_label"),
                    subscribeCheckboxEnabled: Optional(true),
                    subscribeCheckboxLabel: Optional("subscribe_checkbox_label"),
                    surveyId: Optional("survey_id"),
                    totalResponses: Optional(810),
                    type: Optional(SurveyQuestionReportType.pickOne)
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.reporting.listSurveyQuestions(
            surveyId: "survey_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getSurveyQuestion1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "average_rating": 2.5,
                  "contact_counts": {
                    "known": 1,
                    "new": 1,
                    "unknown": 1
                  },
                  "has_other": true,
                  "id": "id",
                  "is_required": true,
                  "merge_field": {
                    "id": 1,
                    "label": "label",
                    "type": "text"
                  },
                  "options": [
                    {
                      "count": 1,
                      "id": "id",
                      "label": "label"
                    }
                  ],
                  "other_label": "other_label",
                  "placeholder_label": "placeholder_label",
                  "query": "query",
                  "range_high_label": "range_high_label",
                  "range_low_label": "range_low_label",
                  "subscribe_checkbox_enabled": true,
                  "subscribe_checkbox_label": "subscribe_checkbox_label",
                  "survey_id": "survey_id",
                  "total_responses": 810,
                  "type": "pickOne"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SurveyQuestionReport(
            averageRating: Optional(2.5),
            contactCounts: Optional(SurveyQuestionReportContactCounts(
                known: Optional(1),
                new: Optional(1),
                unknown: Optional(1)
            )),
            hasOther: Optional(true),
            id: Optional("id"),
            isRequired: Optional(true),
            mergeField: Optional(SurveyQuestionReportMergeField(
                id: Optional(1),
                label: Optional("label"),
                type: Optional(SurveyQuestionReportMergeFieldType.text)
            )),
            options: Optional([
                SurveyQuestionReportOptionsItem(
                    count: Optional(1),
                    id: Optional("id"),
                    label: Optional("label")
                )
            ]),
            otherLabel: Optional("other_label"),
            placeholderLabel: Optional("placeholder_label"),
            query: Optional("query"),
            rangeHighLabel: Optional("range_high_label"),
            rangeLowLabel: Optional("range_low_label"),
            subscribeCheckboxEnabled: Optional(true),
            subscribeCheckboxLabel: Optional("subscribe_checkbox_label"),
            surveyId: Optional("survey_id"),
            totalResponses: Optional(810),
            type: Optional(SurveyQuestionReportType.pickOne)
        )
        let response = try await client.reporting.getSurveyQuestion(
            surveyId: "survey_id",
            questionId: "question_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listSurveyQuestionAnswers1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "answers": [
                    {
                      "id": "id",
                      "is_new_contact": true,
                      "response_id": "response_id",
                      "submitted_at": "2024-01-15T09:30:00Z",
                      "value": "value"
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListSurveyQuestionAnswersReportingResponse(
            links: Optional([
                ListSurveyQuestionAnswersReportingResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListSurveyQuestionAnswersReportingResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            answers: Optional([
                ListSurveyQuestionAnswersReportingResponseAnswersItem(
                    id: Optional("id"),
                    isNewContact: Optional(true),
                    responseId: Optional("response_id"),
                    submittedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    value: Optional("value")
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.reporting.listSurveyQuestionAnswers(
            surveyId: "survey_id",
            questionId: "question_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listSurveyResponses1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_links": [
                    {
                      "href": "href",
                      "method": "GET",
                      "rel": "rel",
                      "schema": "schema",
                      "targetSchema": "targetSchema"
                    }
                  ],
                  "responses": [
                    {
                      "is_new_contact": true,
                      "response_id": "response_id",
                      "submitted_at": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "total_items": 1
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListSurveyResponsesReportingResponse(
            links: Optional([
                ListSurveyResponsesReportingResponseLinksItem(
                    href: Optional("href"),
                    method: Optional(ListSurveyResponsesReportingResponseLinksItemMethod.get),
                    rel: Optional("rel"),
                    schema: Optional("schema"),
                    targetSchema: Optional("targetSchema")
                )
            ]),
            responses: Optional([
                ListSurveyResponsesReportingResponseResponsesItem(
                    isNewContact: Optional(true),
                    responseId: Optional("response_id"),
                    submittedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            totalItems: Optional(1)
        )
        let response = try await client.reporting.listSurveyResponses(
            surveyId: "survey_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getSurveyRespons1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "contact": {
                    "avatar_url": "avatar_url",
                    "consents_to_one_to_one_messaging": true,
                    "contact_id": "contact_id",
                    "email": "email",
                    "email_id": "email_id",
                    "full_name": "full_name",
                    "phone": "phone",
                    "status": "Subscribed"
                  },
                  "is_new_contact": true,
                  "response_id": "response_id",
                  "results": [
                    {
                      "answer": "answer",
                      "query": "query",
                      "question_id": "question_id",
                      "question_type": "pickOne"
                    }
                  ],
                  "submitted_at": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = MailchimpClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GetSurveyResponsReportingResponse(
            contact: Optional(GetSurveyResponsReportingResponseContact(
                avatarUrl: Optional("avatar_url"),
                consentsToOneToOneMessaging: Optional(true),
                contactId: Optional("contact_id"),
                email: Optional("email"),
                emailId: Optional("email_id"),
                fullName: Optional("full_name"),
                phone: Optional("phone"),
                status: Optional(GetSurveyResponsReportingResponseContactStatus.subscribed)
            )),
            isNewContact: Optional(true),
            responseId: Optional("response_id"),
            results: Optional([
                GetSurveyResponsReportingResponseResultsItem(
                    answer: Optional("answer"),
                    query: Optional("query"),
                    questionId: Optional("question_id"),
                    questionType: Optional(GetSurveyResponsReportingResponseResultsItemQuestionType.pickOne)
                )
            ]),
            submittedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.reporting.getSurveyRespons(
            surveyId: "survey_id",
            responseId: "response_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}