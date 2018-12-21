module List_.Hashtags.View exposing (view)

import Html
    exposing
        ( Html
        , a
        , article
        , div
        , h4
        , li
        , section
        , span
        , text
        , ul
        )
import Html.Attributes exposing (attribute, class, href)
import List_.Hashtags.Styles as Styles


view : Html msg
view =
    let
        hashtags =
            [ ( "AmazingSerena", "134.5" )
            , ( "womenintech", "11" )
            , ( "SenWarrenRoastsWellsFargo", "99" )
            , ( "blackgirlmagic", "256.5" )
            , ( "becauseofthemwecan", "4.1" )
            , ( "gillscottheron", "20.11" )
            , ( "trending", "4.1" )
            ]
    in
    div [ attribute "data-name" "component" ]
        [ section [ class Styles.section ]
            [ article [ class Styles.article ]
                [ heading
                , ul [ class Styles.ul ]
                    (List.map hashtag hashtags)
                ]
            ]
        ]


heading : Html msg
heading =
    div []
        [ h4 [ class Styles.heading ]
            [ text "Hashtags" ]
        , a [ href "", class Styles.editLink ]
            [ text "Edit" ]
        ]


hashtag : ( String, String ) -> Html msg
hashtag ( name, mentions ) =
    li [ class Styles.li ]
        [ a [ class Styles.hashtagLink, href "#" ]
            [ span [ class Styles.hashtagName ]
                [ text ("#" ++ name) ]
            , span [ class Styles.hashtagMentions ]
                [ text (mentions ++ "k mentions") ]
            ]
        ]
