module Nav exposing
    ( Route
    , bodyClasses
    , fixedSemiTransparentRoute
    , largeTitleLinkListRoute
    , listOverflowRoute
    , logoLinksInlineCollapseRoute
    , logoLinksInlineRoute
    , logoTitlesLinksCenteredRoute
    , matchers
    , minimalSignUpRoute
    , routeToPath
    , sectionContentLinkImageFormatting
    , titleLinkListRoute
    , view
    )

import Html exposing (Html)
import Nav.Route as Route exposing (Route)
import Nav.Styles as Styles
import Nav.View as View
import Url.Parser exposing (Parser)


type alias Route =
    Route.Route


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


fixedSemiTransparentRoute : Route
fixedSemiTransparentRoute =
    Route.FixedSemiTransparent


largeTitleLinkListRoute : Route
largeTitleLinkListRoute =
    Route.LargeTitleLinkList


listOverflowRoute : Route
listOverflowRoute =
    Route.ListOverflow


logoLinksInlineCollapseRoute : Route
logoLinksInlineCollapseRoute =
    Route.LogoLinksInlineCollapse


logoLinksInlineRoute : Route
logoLinksInlineRoute =
    Route.LogoLinksInline


logoTitlesLinksCenteredRoute : Route
logoTitlesLinksCenteredRoute =
    Route.LogoTitlesLinksCentered


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


minimalSignUpRoute : Route
minimalSignUpRoute =
    Route.MinimalSignUp


routeToPath : Route -> String
routeToPath route =
    Route.toPath route


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


titleLinkListRoute : Route
titleLinkListRoute =
    Route.TitleLinkList


view : Route -> Html msg
view route =
    View.view route
