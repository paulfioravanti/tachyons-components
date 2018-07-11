module Article.Feature.View exposing (view)

import Article.Feature.Feature as Feature exposing (Feature)
import Article.Feature.Styles as Styles
import Html
    exposing
        ( Html
        , article
        , blockquote
        , cite
        , div
        , header
        , h1
        , h2
        , h3
        , p
        , text
        )
import Html.Attributes exposing (attribute, class, style)


view : Html msg
view =
    let
        feature =
            Feature.example
    in
        div [ attribute "data-name" "component" ]
            [ article [ class Styles.article ]
                [ hero feature
                , content feature
                ]
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
