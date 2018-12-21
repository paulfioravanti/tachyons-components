module ListComponents.Forms exposing (view)

import Form
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Forms"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "forms/checkbox-list/"
                    "Checkbox List"
                    (Route.Forms Form.checkboxListRoute)
                , Utils.component
                    "forms/input-text-label/"
                    "Input Text Label"
                    (Route.Forms Form.inputTextLabelRoute)
                , Utils.component
                    "forms/newsletter-subscription/"
                    "Newsletter Subscription"
                    (Route.Forms Form.newsletterSubscriptionRoute)
                , Utils.component
                    "forms/password/"
                    "Password"
                    (Route.Forms Form.passwordRoute)
                , Utils.component
                    "forms/sign-in/"
                    "Sign In"
                    (Route.Forms Form.signInRoute)
                , Utils.component
                    "forms/sign-up/"
                    "Sign Up"
                    (Route.Forms Form.signUpRoute)
                , Utils.component
                    "forms/textarea-label/"
                    "Textarea Label"
                    (Route.Forms Form.textareaLabelRoute)
                ]
            ]
        ]
