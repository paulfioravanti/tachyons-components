module Page.PortfolioProject.View exposing (view)

import Html
    exposing
        ( Html
        , a
        , article
        , blockquote
        , div
        , h1
        , iframe
        , img
        , main_
        , p
        , section
        , text
        )
import Html.Attributes exposing (attribute, class, href, src, style)
import Page.PortfolioProject.Project as Project exposing (Project)
import Page.PortfolioProject.Styles as Styles


view : Html msg
view =
    let
        project =
            Project.example
    in
    div [ attribute "data-name" "component" ]
        [ main_ []
            [ article [ class Styles.article ]
                [ heroImage
                , div [ class Styles.projectContent ]
                    [ header project
                    , headerImages
                    , projectPart1 project
                    , blockquoteImage
                    , blockquoteContent project
                    , projectPart2 project
                    ]
                ]
            , otherProjects
            ]
        ]


heroImage : Html msg
heroImage =
    div
        [ class Styles.image1
        , style "backgroundImage" "url(http://mrmrs.github.io/photos/001.jpg"
        ]
        []


header : Project -> Html msg
header { title, description } =
    div [ class Styles.header ]
        [ h1 [ class Styles.title ]
            [ text title ]
        , p [ class Styles.description ]
            [ text description ]
        ]


headerImages : Html msg
headerImages =
    let
        images =
            [ ( Styles.headerImage1, "2" )
            , ( Styles.headerImage2, "3" )
            , ( Styles.headerImage3, "4" )
            ]
    in
    div [ class Styles.headerImages ]
        (List.map headerImage images)


headerImage : ( String, String ) -> Html msg
headerImage ( styles, imageId ) =
    div [ class styles ]
        [ div
            [ class Styles.headerImage
            , style "backgroundImage" ("url(http://mrmrs.github.io/photos/00" ++ imageId ++ ".jpg")
            ]
            []
        ]


projectPart1 : Project -> Html msg
projectPart1 { subtitle, p1, p2 } =
    div [ class Styles.projectPart1 ]
        [ h1 [ class Styles.subtitle ]
            [ text subtitle ]
        , p [ class Styles.copy ]
            [ text p1 ]
        , p [ class Styles.copy ]
            [ text p2 ]
        ]


blockquoteImage : Html msg
blockquoteImage =
    img
        [ class Styles.blockquoteImage
        , src "http://mrmrs.github.io/photos/005.jpg"
        ]
        []


blockquoteContent : Project -> Html msg
blockquoteContent { p3, p4 } =
    blockquote [ class Styles.blockquote ]
        [ p [ class Styles.quote ]
            [ text p3 ]
        , p [ class Styles.quoteAttribution ]
            [ text p4 ]
        ]


projectPart2 : Project -> Html msg
projectPart2 { p5 } =
    div [ class Styles.projectPart2 ]
        [ p [ class Styles.copy ]
            [ text p5 ]
        , div [ class Styles.video ]
            [ iframe
                [ class Styles.videoEmbed
                , src "https://www.youtube.com/embed/LAr6oAKieHk"
                , attribute "frameBorder" "0"
                , attribute "webkitallowfullscreen" "true"
                , attribute "mozallowfullscreen" "true"
                , attribute "allowfullscreen" "true"
                ]
                []
            ]
        ]


otherProjects : Html msg
otherProjects =
    section [ class Styles.otherProjects ]
        [ h1 [ class Styles.otherProjectsHeading ]
            [ text "Other Projects" ]
        , a [ class Styles.otherProjectsFirstRowImageWrapper ]
            [ div
                [ class (Styles.otherProjectsFirstRowImage "center")
                , href "#0"
                , style "backgroundImage" "url(https://s3-us-west-2.amazonaws.com/prnt/hw-080411-cargo_960.jpg"
                ]
                []
            ]
        , a [ class Styles.otherProjectsFirstRowImageWrapper ]
            [ div
                [ class (Styles.otherProjectsFirstRowImage "top")
                , href "#0"
                , style "backgroundImage" "url(https://s3-us-west-2.amazonaws.com/prnt/hwspringtour-cargo_960-1.jpg)"
                ]
                []
            ]
        , a [ class Styles.otherProjectsFirstRowImageWrapper ]
            [ div
                [ class (Styles.otherProjectsFirstRowImage "top")
                , href "#0"
                , style "backgroundImage" "url(https://s3-us-west-2.amazonaws.com/prnt/cc010611.s_960.jpg)"
                ]
                []
            ]
        , a [ class Styles.otherProjectsMiddleRowImageWrapper ]
            [ div
                [ class Styles.otherProjectsMiddleRowImage
                , href "#0"
                , style "backgroundImage" "url(https://s3-us-west-2.amazonaws.com/prnt/adam-stern-031209_960-2.jpg)"
                ]
                []
            ]
        , a [ class Styles.otherProjectsLastRowImageWrapper ]
            [ div
                [ class Styles.otherProjectsLastRowImage
                , href "#0"
                , style "backgroundImage" "url(https://s3-us-west-2.amazonaws.com/prnt/zh170311.4.cargo_960.jpg)"
                ]
                []
            ]
        , a [ class Styles.otherProjectsLastRowImageWrapper ]
            [ div
                [ class Styles.otherProjectsLastRowImage
                , href "#0"
                , style "backgroundImage" "url(https://s3-us-west-2.amazonaws.com/prnt/hw090911_960.jpg)"
                ]
                []
            ]
        ]
