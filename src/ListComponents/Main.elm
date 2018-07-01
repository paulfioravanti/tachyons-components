module ListComponents.Main exposing (view)

import Html exposing (Html, header, main_, a, div, h3, p, section, text)
import Html.Attributes exposing (attribute, class, href, id, title)
import ListComponents.Styles as Styles
import Msg exposing (Msg)


view : Html Msg
view =
    let
        screenshot =
            "/components/article-lists/"
                ++ "title-preview-author-media-flipped/screenshot.jpg"
    in
        main_ [ class Styles.main_ ]
            [ mainHeader
            , section []
                [ sectionHeader "article-lists" "Article Lists"
                , div [ class Styles.sectionContentWrapper ]
                    [ div [ class Styles.sectionContent ]
                        [ a
                            [ class Styles.sectionContentLink
                            , href "#"
                            , title "Title Preview Author Media Flipped"
                            ]
                            [ div [ class Styles.sectionContentLinkContent ]
                                [ div
                                    [ class Styles.sectionContentLinkImage
                                    , attribute "data-bg" screenshot
                                    ]
                                    []
                                ]
                            , p [ class Styles.sectionContentTitle ]
                                [ text "Title Preview Author Media Flipped" ]
                            ]
                        ]
                    ]
                ]
            ]


mainHeader : Html Msg
mainHeader =
    let
        anchorLinks =
            [ ( "#article-lists", "Article Lists" )
            , ( "#articles", "Articles" )
            , ( "#avatars", "Avatars" )
            , ( "#banners", "Banners" )
            , ( "#buttons", "Buttons" )
            , ( "#cards", "Cards" )
            , ( "#collections", "Collections" )
            , ( "#definition-lists", "Definition Lists" )
            , ( "#error-pages", "Error Pages" )
            , ( "#footers", "Footers" )
            , ( "#forms", "Forms" )
            , ( "#headers", "Headers" )
            , ( "#layout", "Layout" )
            , ( "#links", "Links" )
            , ( "#lists", "Lists" )
            , ( "#marketing", "Marketing" )
            , ( "#nav", "Nav" )
            , ( "#pages", "Pages" )
            , ( "#quotes", "Quotes" )
            , ( "#tables", "Tables" )
            , ( "#text", "Text" )
            ]
    in
        header [ class Styles.mainHeader ]
            [ div [ class Styles.anchors ]
                (List.map anchorLink anchorLinks)
            ]


anchorLink : ( String, String ) -> Html Msg
anchorLink ( link, linkText ) =
    a [ class Styles.anchor, href link ]
        [ text linkText ]


sectionHeader : String -> String -> Html Msg
sectionHeader sectionId title =
    div [ class Styles.sectionHeader, id sectionId ]
        [ div [ class Styles.sectionTitleWrapper ]
            [ h3 [ class Styles.sectionTitle ]
                [ text title ]
            ]
        ]
