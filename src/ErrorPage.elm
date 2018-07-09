module ErrorPage
    exposing
        ( Route
        , bodyClasses
        , fourOhFourRoute
        , matchers
        , sectionContentLinkImageFormatting
        , view
        )

import ErrorPage.Route as Route exposing (Route)
import ErrorPage.Styles as Styles
import ErrorPage.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


fourOhFourRoute : Route
fourOhFourRoute =
    Route.FourOhFour


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg -> Html msg
view route footer =
    View.view route footer
