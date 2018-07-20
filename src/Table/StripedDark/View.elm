module Table.StripedDark.View exposing (view)

import Html exposing (Html, div, table, tbody, td, th, thead, tr, text)
import Html.Attributes exposing (attribute, class)
import Table.User as User exposing (User)
import Table.StripedDark.Styles as Styles


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ div [ class Styles.content ]
            [ div [ class Styles.container ]
                [ userTable ]
            ]
        ]


userTable : Html msg
userTable =
    let
        users =
            User.list
    in
        table [ class Styles.table, attribute "cellSpacing" "0" ]
            [ tableHeadings
            , tbody [ class Styles.tableBody ]
                (List.map tableRow users)
            ]


tableHeadings : Html msg
tableHeadings =
    let
        tableHeadings =
            [ "Name", "Username", "Email", "ID" ]
    in
        thead []
            [ tr [ class Styles.stripe ]
                (List.map tableHeading tableHeadings)
            ]


tableHeading : String -> Html msg
tableHeading heading =
    th [ class Styles.tableHeading ]
        [ text heading ]


tableRow : User -> Html msg
tableRow { name, username, email, id } =
    let
        attributes =
            [ name, username, email, id ]
    in
        tr [ class Styles.stripe ]
            (List.map tableData attributes)


tableData : String -> Html msg
tableData data =
    td [ class Styles.tableData ]
        [ text data ]
