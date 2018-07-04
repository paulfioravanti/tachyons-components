module Article
    exposing
        ( Route
        , bodyClasses
        , matchers
        , featureRoute
        , fullBleedBackgroundRoute
        , toPath
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


toPath : Route -> String
toPath route =
    Route.toPath route


view : Route -> Html msg -> Html msg
view route footer =
    View.view route footer
