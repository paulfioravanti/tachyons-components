module List_.FollowerNotifications.View exposing (view)

import Html
    exposing
        ( Html
        , article
        , button
        , div
        , form
        , h1
        , h2
        , img
        , main_
        , text
        )
import Html.Attributes exposing (attribute, class, src, type_)
import List_.Follower as Follower exposing (Follower)
import List_.FollowerNotifications.Styles as Styles


view : Html msg
view =
    let
        followers =
            Follower.list
    in
        div [ attribute "data-name" "component" ]
            [ main_ [ class Styles.main_ ]
                (List.map follower followers)
            ]


follower : Follower -> Html msg
follower { id, name, handle } =
    article [ class Styles.article ]
        [ image id
        , info name handle
        , followButton
        ]


image : String -> Html msg
image id =
    div [ class Styles.imageWrapper ]
        [ img
            [ class Styles.image
            , src ("http://mrmrs.github.io/photos/p/" ++ id ++ ".jpg")
            ]
            []
        ]


info : String -> String -> Html msg
info name handle =
    div [ class Styles.info ]
        [ h1 [ class Styles.name ]
            [ text name ]
        , h2 [ class Styles.handle ]
            [ text handle ]
        ]


followButton : Html msg
followButton =
    div [ class Styles.follow ]
        [ form [ class Styles.followForm ]
            [ button [ class Styles.followButton, type_ "submit" ]
                [ text "+ Follow" ]
            ]
        ]
