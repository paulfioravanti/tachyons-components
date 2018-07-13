module Card.SuggestedProfile.View exposing (view)

import Card.SuggestedProfile.Styles as Styles
import Html exposing (Html, a, article, div, h1, h2, img, p, section, text)
import Html.Attributes exposing (alt, attribute, class, href, src)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ section [ class Styles.section ]
            [ article [ class Styles.article ]
                [ image
                , div [ class Styles.profile ]
                    [ a [ class Styles.name, href "#" ]
                        [ text "Jesse Grant" ]
                    , p [ class Styles.mutualFriends ]
                        [ text "5 mutual friends" ]
                    , a [ class Styles.addFriend, href "#" ]
                        [ text "Add Friend" ]
                    ]
                , a [ class Styles.close, href "#" ]
                    [ text "×" ]
                ]
            ]
        ]


image : Html msg
image =
    let
        url =
            "https://ih0.redbubble.net/image.389388425.9711/"
                ++ "ra,triblend_tee,x2150,black_triblend,front-c,367,133"
                ++ ",750,1000-bg,f8f8f8.u1.jpg"
    in
        img
            [ src url
            , class Styles.image
            , alt "A Photo of Jesse Grant"
            ]
            []
