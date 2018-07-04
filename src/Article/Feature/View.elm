module Article.Feature.View exposing (view)

import Article.Feature.Feature as Feature exposing (Feature)
import Article.Feature.Styles as Styles
import Html
    exposing
        ( Html
        , a
        , article
        , blockquote
        , cite
        , div
        , header
        , h1
        , h2
        , h3
        , img
        , p
        , section
        , text
        )
import Html.Attributes exposing (alt, class, href, src, style)


view : Html msg -> Html msg
view footer =
    let
        feature =
            Feature.example
    in
        div []
            [ article [ class Styles.article ]
                [ hero feature
                , content feature
                ]
            , footer
            ]


hero : Feature -> Html msg
hero { backgroundImageUrl, issue, edition, title, slogan, author } =
    let
        backgroundImageStyle =
            [ ( "background"
              , "url(" ++ backgroundImageUrl ++ ") no-repeat center"
              )
            ]
    in
        div
            [ class Styles.backgroundImage
            , style backgroundImageStyle
            ]
            [ div [ class Styles.heroContent ]
                [ heroHeader issue edition
                , h1 [ class Styles.title ]
                    [ text title ]
                , heroFooter slogan author
                ]
            ]


heroHeader : String -> String -> Html msg
heroHeader issue edition =
    header [ class Styles.header ]
        [ h2 [ class Styles.issue ]
            [ text issue ]
        , h3 [ class Styles.edition ]
            [ text edition ]
        ]


heroFooter : String -> String -> Html msg
heroFooter slogan author =
    blockquote [ class Styles.heroFooter ]
        [ p [ class Styles.slogan ]
            [ text slogan ]
        , cite [ class Styles.author ]
            [ text author ]
        ]


content : Feature -> Html msg
content feature =
    div [ class Styles.content ]
        [ h1 [ class Styles.headline ]
            [ text feature.headline ]
        , p [] [ text feature.paragraph1 ]
        , p [] [ text feature.paragraph2 ]
        , p [] [ text feature.paragraph3 ]
        , p [] [ text feature.paragraph4 ]
        , p [] [ text feature.paragraph5 ]
        ]
