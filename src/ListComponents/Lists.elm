module ListComponents.Lists exposing (view)

import List_
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Lists))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Lists"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "lists/block-item-dotted-border/"
                    "Block Item Dotted Border"
                    changeLocationMsg
                    (Lists List_.blockItemDottedBorderRoute)
                , Utils.component
                    "lists/border-spaced/"
                    "Border Spaced"
                    changeLocationMsg
                    (Lists List_.borderSpacedRoute)
                , Utils.component
                    "lists/border-tight/"
                    "Border Tight"
                    changeLocationMsg
                    (Lists List_.borderTightRoute)
                , Utils.component
                    "lists/contact-phone/"
                    "Contact Phone"
                    changeLocationMsg
                    (Lists List_.contactPhoneRoute)
                , Utils.component
                    "lists/follower-notifications-rounded-square-avatar/"
                    "Follower Notifications Rounded Square Avatar"
                    changeLocationMsg
                    (Lists List_.followerNotificationsRoundedSquareAvatarRoute)
                , Utils.component
                    "lists/follower-notifications/"
                    "Follower Notifications"
                    changeLocationMsg
                    (Lists List_.followerNotificationsRoute)
                , Utils.component
                    "lists/hashtags/"
                    "Hashtags"
                    changeLocationMsg
                    (Lists List_.hashtagsRoute)
                , Utils.component
                    "lists/items-image-title-price/"
                    "Items Image Title Price"
                    changeLocationMsg
                    (Lists List_.itemsImageTitlePriceRoute)
                , Utils.component
                    "lists/large-links-inline/"
                    "Large Links Inline"
                    changeLocationMsg
                    (Lists List_.largeLinksInlineRoute)
                , Utils.component
                    "lists/links-animate-color/"
                    "Links Animate Color"
                    changeLocationMsg
                    (Lists List_.linksAnimateColorRoute)
                , Utils.component
                    "lists/links-inline/"
                    "Links Inline"
                    changeLocationMsg
                    (Lists List_.linksInlineRoute)
                , Utils.component
                    "lists/links-with-borders-inline/"
                    "Links With Borders Inline"
                    changeLocationMsg
                    (Lists List_.linksWithBordersInlineRoute)
                ]
            ]
        ]
