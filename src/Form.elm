module Form
    exposing
        ( Route
        , bodyClasses
        , checkboxListRoute
        , inputTextLabelRoute
        , matchers
        , newsletterSubscriptionRoute
        , passwordRoute
        , sectionContentLinkImageFormatting
        , signInRoute
        , view
        )

import Form.Route as Route exposing (Route)
import Form.Styles as Styles
import Form.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


checkboxListRoute : Route
checkboxListRoute =
    Route.CheckboxList


inputTextLabelRoute : Route
inputTextLabelRoute =
    Route.InputTextLabel


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


newsletterSubscriptionRoute : Route
newsletterSubscriptionRoute =
    Route.NewsletterSubscription


passwordRoute : Route
passwordRoute =
    Route.Password


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


signInRoute : Route
signInRoute =
    Route.SignIn


view : Route -> Html msg
view route =
    View.view route
