module Article
    exposing
        ( Route
        , bodyClasses
        , matchers
        , featureRoute
        , fullBleedBackgroundRoute
        , headlineTitleTextRoute
        , largeTitleTextRoute
        , titleTextRoute
        , view
        )

import Article.Route as Route exposing (Route)
import Article.Styles as Styles
import Article.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


featureRoute : Route
featureRoute =
    Route.Feature


fullBleedBackgroundRoute : Route
fullBleedBackgroundRoute =
    Route.FullBleedBackground


headlineTitleTextRoute : Route
headlineTitleTextRoute =
    Route.HeadlineTitleText


largeTitleTextRoute : Route
largeTitleTextRoute =
    Route.LargeTitleText


titleTextRoute : Route
titleTextRoute =
    Route.TitleText


view : Route -> Html msg -> Html msg
view route footer =
    View.view route footer
