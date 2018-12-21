module Form.View exposing (view)

import Form.CheckboxList.View as CheckboxList
import Form.InputTextLabel.View as InputTextLabel
import Form.NewsletterSubscription.View as NewsletterSubscription
import Form.Password.View as Password
import Form.Route as Route exposing (Route)
import Form.SignIn.View as SignIn
import Form.SignUp.View as SignUp
import Form.TextareaLabel.View as TextareaLabel
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Route.CheckboxList ->
            CheckboxList.view

        Route.InputTextLabel ->
            InputTextLabel.view

        Route.NewsletterSubscription ->
            NewsletterSubscription.view

        Route.Password ->
            Password.view

        Route.SignIn ->
            SignIn.view

        Route.SignUp ->
            SignUp.view

        Route.TextareaLabel ->
            TextareaLabel.view
