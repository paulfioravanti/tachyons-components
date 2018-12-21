module ListComponents.Lists exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import List_
import Route


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Lists"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "lists/block-item-dotted-border/"
                    "Block Item Dotted Border"
                    (Route.Lists List_.blockItemDottedBorderRoute)
                , Utils.component
                    "lists/border-spaced/"
                    "Border Spaced"
                    (Route.Lists List_.borderSpacedRoute)
                , Utils.component
                    "lists/border-tight/"
                    "Border Tight"
                    (Route.Lists List_.borderTightRoute)
                , Utils.component
                    "lists/contact-phone/"
                    "Contact Phone"
                    (Route.Lists List_.contactPhoneRoute)
                , Utils.component
                    "lists/follower-notifications-rounded-square-avatar/"
                    "Follower Notifications Rounded Square Avatar"
                    (Route.Lists
                        List_.followerNotificationsRoundedSquareAvatarRoute
                    )
                , Utils.component
                    "lists/follower-notifications/"
                    "Follower Notifications"
                    (Route.Lists List_.followerNotificationsRoute)
                , Utils.component
                    "lists/hashtags/"
                    "Hashtags"
                    (Route.Lists List_.hashtagsRoute)
                , Utils.component
                    "lists/items-image-title-price/"
                    "Items Image Title Price"
                    (Route.Lists List_.itemsImageTitlePriceRoute)
                , Utils.component
                    "lists/large-links-inline/"
                    "Large Links Inline"
                    (Route.Lists List_.largeLinksInlineRoute)
                , Utils.component
                    "lists/links-animate-color/"
                    "Links Animate Color"
                    (Route.Lists List_.linksAnimateColorRoute)
                , Utils.component
                    "lists/links-inline/"
                    "Links Inline"
                    (Route.Lists List_.linksInlineRoute)
                , Utils.component
                    "lists/links-with-borders-inline/"
                    "Links With Borders Inline"
                    (Route.Lists List_.linksWithBordersInlineRoute)
                , Utils.component
                    "lists/slab-stat-large/"
                    "Slab Stat Large"
                    (Route.Lists List_.slabStatLargeRoute)
                , Utils.component
                    "lists/slab-stat-small/"
                    "Slab Stat Small"
                    (Route.Lists List_.slabStatSmallRoute)
                , Utils.component
                    "lists/slab-stat/"
                    "Slab Stat"
                    (Route.Lists List_.slabStatRoute)
                , Utils.component
                    "lists/title-text/"
                    "Title Text"
                    (Route.Lists List_.titleTextRoute)
                ]
            ]
        ]
