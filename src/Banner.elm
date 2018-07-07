module Banner
    exposing
        ( Route
        , basicRoute
        , bodyClasses
        , matchers
        , view
        )

import Banner.Route as Route exposing (Route)
import Banner.Styles as Styles
import Banner.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


basicRoute : Route
basicRoute =
    Route.Basic


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


view : Route -> Html msg -> Html msg
view route footer =
    View.view route footer
