module List_
    exposing
        ( Route
        , blockItemDottedBorderRoute
        , bodyClasses
        , matchers
        , sectionContentLinkImageFormatting
        , view
        )

import List_.Route as Route exposing (Route)
import List_.Styles as Styles
import List_.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


blockItemDottedBorderRoute : Route
blockItemDottedBorderRoute =
    Route.BlockItemDottedBorder


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg -> Html msg
view route footer =
    View.view route footer
