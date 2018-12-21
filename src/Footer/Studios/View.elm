module Footer.Studios.View exposing (view)

import Footer.Logo as Logo exposing (Logo)
import Footer.Studios.Studio as Studio exposing (Studio)
import Footer.Studios.Styles as Styles
import Html
    exposing
        ( Html
        , a
        , article
        , div
        , footer
        , h1
        , h4
        , input
        , p
        , section
        , span
        , text
        )
import Html.Attributes
    exposing
        ( attribute
        , class
        , href
        , placeholder
        , style
        , title
        , type_
        )
import Svg exposing (svg)
import Svg.Attributes
    exposing
        ( clipRule
        , fillRule
        , strokeLinejoin
        , strokeMiterlimit
        , viewBox
        )


view : Html msg
view =
    let
        studios =
            Studio.list
    in
    div [ attribute "data-name" "component" ]
        [ footer [ class Styles.footer ]
            [ div [ class Styles.studios ]
                (heading :: List.map studio studios)
            , section [ class Styles.section ]
                [ emailAddress
                , signUp
                ]
            , div [ class Styles.bottomSection ]
                [ copyright
                , socialIcons
                ]
            ]
        , copyrightMobile
        ]


heading : Html msg
heading =
    h1 [ class Styles.heading ]
        [ text "Studios" ]


studio : Studio -> Html msg
studio { name, street, city, phone } =
    article [ class Styles.article ]
        [ h4 [ class Styles.studioName ]
            [ text name ]
        , span [ class Styles.streetName ]
            [ text street ]
        , span [ class Styles.cityName ]
            [ text city ]
        , a
            [ href ("tel:" ++ phone)
            , title ("Call " ++ name ++ " office")
            , class Styles.phone
            ]
            [ text phone ]
        ]


emailAddress : Html msg
emailAddress =
    div [ class Styles.emailAddress ]
        [ a
            [ class Styles.emailAddressLink
            , href "mailto:hello@impossible.com"
            ]
            [ text "hello@yourcompany.com" ]
        ]


signUp : Html msg
signUp =
    div [ class Styles.signUp ]
        [ p [ class Styles.signUpText ]
            [ text "Sign up for our newsletter." ]
        , input [ placeholder "Email Address", class Styles.signUpField ] []
        , input [ type_ "submit", class Styles.signUpButton ] []
        ]


copyright : Html msg
copyright =
    div [ class Styles.copyright ]
        [ p [ class Styles.copyrightText ]
            [ text "Copyright © Your Company 2048" ]
        ]


socialIcons : Html msg
socialIcons =
    let
        icons =
            [ Logo.facebook, Logo.twitter, Logo.medium, Logo.linkedIn ]
    in
    div [ class Styles.socialIcons ]
        (List.map socialIcon icons)


socialIcon : Logo msg -> Html msg
socialIcon { path, name, url } =
    a [ href url, class Styles.socialIconLink, title name ]
        [ svg
            [ attribute "data-icon" name
            , viewBox "0 0 16 16"
            , style "fill" "currentcolor"
            , fillRule "evenodd"
            , clipRule "evenodd"
            , strokeLinejoin "round"
            , strokeMiterlimit "1.414"
            , Svg.Attributes.class Styles.svg
            ]
            [ path ]
        ]


copyrightMobile : Html msg
copyrightMobile =
    div [ class Styles.copyrightMobile ]
        [ p [ class Styles.copyrightTextMobile ]
            [ text "Copyright © Your Company 2038" ]
        ]
