module List_
    exposing
        ( Route
        , blockItemDottedBorderRoute
        , bodyClasses
        , borderSpacedRoute
        , borderTightRoute
        , contactPhoneRoute
        , followerNotificationsRoundedSquareAvatarRoute
        , followerNotificationsRoute
        , hashtagsRoute
        , itemsImageTitlePriceRoute
        , largeLinksInlineRoute
        , linksAnimateColorRoute
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


borderSpacedRoute : Route
borderSpacedRoute =
    Route.BorderSpaced


borderTightRoute : Route
borderTightRoute =
    Route.BorderTight


contactPhoneRoute : Route
contactPhoneRoute =
    Route.ContactPhone


followerNotificationsRoundedSquareAvatarRoute : Route
followerNotificationsRoundedSquareAvatarRoute =
    Route.FollowerNotificationsRoundedSquareAvatar


followerNotificationsRoute : Route
followerNotificationsRoute =
    Route.FollowerNotifications


hashtagsRoute : Route
hashtagsRoute =
    Route.Hashtags


itemsImageTitlePriceRoute : Route
itemsImageTitlePriceRoute =
    Route.ItemsImageTitlePrice


largeLinksInlineRoute : Route
largeLinksInlineRoute =
    Route.LargeLinksInline


linksAnimateColorRoute : Route
linksAnimateColorRoute =
    Route.LinksAnimateColor


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg
view route =
    View.view route
