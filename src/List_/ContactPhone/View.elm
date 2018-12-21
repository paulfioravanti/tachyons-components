module List_.ContactPhone.View exposing (view)

import Html exposing (Html, a, div, img, li, span, text, ul)
import Html.Attributes exposing (attribute, class, href, src)
import List_.ContactPhone.Contact as Contact exposing (Contact)
import List_.ContactPhone.Styles as Styles


view : Html msg
view =
    let
        contacts =
            Contact.list
    in
    div [ attribute "data-name" "component" ]
        [ ul [ class Styles.ul ]
            (List.map contact contacts)
        ]


contact : Contact -> Html msg
contact { avatarId, name, company, phone } =
    li [ class Styles.li ]
        [ img
            [ class Styles.img
            , src ("http://tachyons.io/img/avatar-" ++ avatarId ++ ".jpg")
            ]
            []
        , div [ class Styles.div ]
            [ span [ class Styles.info ]
                [ text name ]
            , span [ class Styles.info ]
                [ text company ]
            ]
        , div []
            [ a [ class Styles.link, href "tel:" ]
                [ text phone ]
            ]
        ]
