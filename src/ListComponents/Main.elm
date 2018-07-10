module ListComponents.Main exposing (view)

import Html exposing (Html, header, main_, a, div, section, text)
import Html.Attributes exposing (class, href)
import ListComponents.Styles as Styles
import ListComponents.Articles as Articles
import ListComponents.ArticleLists as ArticleLists
import ListComponents.Avatars as Avatars
import ListComponents.Banners as Banners
import ListComponents.Buttons as Buttons
import ListComponents.Cards as Cards
import ListComponents.Collections as Collections
import ListComponents.DefinitionLists as DefinitionLists
import ListComponents.ErrorPages as ErrorPages
import ListComponents.Footers as Footers
import ListComponents.Forms as Forms
import ListComponents.Headers as Headers
import ListComponents.Layouts as Layouts
import ListComponents.Links as Links
import ListComponents.Lists as Lists
import ListComponents.Marketing as Marketing
import Route exposing (Route)
import Styles
import Utils


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    let
        views =
            [ ArticleLists.view
            , Articles.view
            , Avatars.view
            , Banners.view
            , Buttons.view
            , Cards.view
            , Collections.view
            , DefinitionLists.view
            , ErrorPages.view
            , Footers.view
            , Forms.view
            , Headers.view
            , Layouts.view
            , Links.view
            , Lists.view
            , Marketing.view
            ]
                |> List.map (\componentView -> componentView changeLocationMsg)
    in
        main_ [ class Styles.main_ ]
            [ mainHeader
            , section []
                views
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
                |> List.map anchorLink
    in
        header [ class Styles.mainHeader ]
            [ div [ class Styles.centerContent ]
                anchorLinks
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
