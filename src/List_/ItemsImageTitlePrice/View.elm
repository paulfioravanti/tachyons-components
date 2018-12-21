module List_.ItemsImageTitlePrice.View exposing (view)

import Html
    exposing
        ( Html
        , a
        , article
        , dd
        , div
        , dl
        , dt
        , h1
        , h2
        , img
        , main_
        , text
        )
import Html.Attributes exposing (attribute, class, src)
import List_.ItemsImageTitlePrice.Item as Item exposing (Item)
import List_.ItemsImageTitlePrice.Styles as Styles


view : Html msg
view =
    let
        items =
            Item.list
    in
    div [ attribute "data-name" "component" ]
        [ main_ [ class Styles.main_ ]
            (List.map item items)
        ]


item : Item -> Html msg
item { id, title, author, price } =
    article []
        [ a [ class Styles.itemLink ]
            [ image id
            , div [ class Styles.info ]
                [ h1 [ class Styles.title ]
                    [ text title ]
                , h2 [ class Styles.author ]
                    [ text author ]
                , dl [ class Styles.priceWrapper ]
                    [ dt [ class Styles.priceLabel ]
                        [ text "Price" ]
                    , dd [ class Styles.priceAmount ]
                        [ text price ]
                    ]
                ]
            ]
        ]


image : String -> Html msg
image id =
    div [ class Styles.imageWrapper ]
        [ img
            [ class Styles.image
            , src ("http://mrmrs.github.io/images/00" ++ id ++ ".jpg")
            ]
            []
        ]
