module Table.Basic.View exposing (view)

import Html exposing (Html, div, table, tbody, td, text, th, thead, tr)
import Html.Attributes exposing (attribute, class)
import Table.Basic.Styles as Styles
import Table.User as User exposing (User)


view : Html msg
view =
    let
        users =
            User.list

        tableHeadings =
            [ "Name", "Username", "Email", "ID" ]
    in
    div [ attribute "data-name" "component" ]
        [ div [ class Styles.content ]
            [ div [ class Styles.container ]
                [ table [ class Styles.table, attribute "cellSpacing" "0" ]
                    [ thead []
                        [ tr []
                            (List.map tableHeading tableHeadings)
                        ]
                    , tbody [ class Styles.tableBody ]
                        (List.map tableRow users)
                    ]
                ]
            ]
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
    tr []
        (List.map tableData attributes)


tableData : String -> Html msg
tableData data =
    td [ class Styles.tableData ]
        [ text data ]
