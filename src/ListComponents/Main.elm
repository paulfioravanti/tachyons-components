module ListComponents.Main exposing (view)

import Html exposing (Html, header, main_, a, div, section, text)
import Html.Attributes exposing (class, href)
import ListComponents.Styles as Styles
import ListComponents.Articles as Articles
import ListComponents.ArticleLists as ArticleLists
import ListComponents.Avatars as Avatars
import ListComponents.Banners as Banners
import Route exposing (Route)
import String.Extra
import Styles
import Utils


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    main_ [ class Styles.main_ ]
        [ mainHeader
        , section []
            [ ArticleLists.view changeLocationMsg
            , Articles.view changeLocationMsg
            , Avatars.view changeLocationMsg
            , Banners.view changeLocationMsg
            ]
        ]


mainHeader : Html msg
mainHeader =
    let
        anchorLinks =
            [ "Article Lists"
            , "Articles"
            , "Avatars"
            , "Banners"
            , "Buttons"
            , "Cards"
            , "Collections"
            , "Definition Lists"
            , "Error Pages"
            , "Footers"
            , "Forms"
            , "Headers"
            , "Layout"
            , "Links"
            , "Lists"
            , "Marketing"
            , "Nav"
            , "Pages"
            , "Quotes"
            , "Tables"
            , "Text"
            ]
    in
        header [ class Styles.mainHeader ]
            [ div [ class Styles.centerContent ]
                (List.map anchorLink anchorLinks)
            ]


anchorLink : String -> Html msg
anchorLink linkText =
    let
        anchor =
            linkText
                |> Utils.toPath
                |> (++) "#"
    in
        a [ class Styles.anchor, href anchor ]
            [ text linkText ]
