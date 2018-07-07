module Avatar
    exposing
        ( Route
        , bodyClasses
        , matchers
        , circleBorderRoute
        , view
        )

import Avatar.Route as Route exposing (Route)
import Avatar.Styles as Styles
import Avatar.View as View
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


circleBorderRoute : Route
circleBorderRoute =
    Route.CircleBorder


view : Route -> Html msg -> Html msg
view route footer =
    View.view route footer