module Page.Double.View exposing (view)

import Html
    exposing
        ( Html
        , div
        , h1
        , main_
        , p
        , span
        , text
        )
import Html.Attributes exposing (attribute, class, style)
import Page.Double.Styles as Styles


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ main_ [ class Styles.main_ ]
            [ div [ class Styles.photo1 ]
                [ image "v/022" "center" ]
            , div [ class Styles.photo2 ]
                [ image "v/024" "center" ]
            , div [ class Styles.photo3 ]
                [ image "050" "left" ]
            , div [ class Styles.photo4 ]
                [ image "049" "center" ]
            , inset
            , div [ class Styles.clearfix ]
                [ div [ class Styles.photo5 ]
                    [ image "051" "center" ]
                , articleCopy
                , div [ class Styles.articlePhotos ]
                    [ div [ class Styles.photo6 ]
                        [ div
                            [ class Styles.image6
                            , style
                                [ ( "backgroundImage"
                                  , "url(http://mrmrs.github.io/photos/u/001.jpg)"
                                  )
                                ]
                            ]
                            []
                        ]
                    , div [ class Styles.photo7 ]
                        [ image "u/002" "center" ]
                    , div [ class Styles.photo8 ]
                        [ image "u/003" "center" ]
                    , div [ class Styles.photo9 ]
                        [ div
                            [ class Styles.image9
                            , style
                                [ ( "backgroundImage"
                                  , "url(http://mrmrs.github.io/photos/u/004.jpg)"
                                  )
                                ]
                            ]
                            []
                        ]
                    ]
                ]
            ]
        ]


image : String -> String -> Html msg
image id positioning =
    div
        [ class (Styles.image positioning)
        , style
            [ ( "backgroundImage"
              , "url(http://mrmrs.github.io/photos/" ++ id ++ ".jpg)"
              )
            ]
        ]
        []


inset : Html msg
inset =
    let
        description =
            """
            That is the essence of syntax: the discipline that controls the
            proper use of grammar in the construction of phrases and the
            articulation of a language, Design. The syntax of design is
            provided by many components in the nature of the project.
            """
    in
        div [ class Styles.inset ]
            [ div [ class Styles.insetContentWrapper ]
                [ h1 [ class Styles.insetHeading ]
                    [ text "#004" ]
                , p [ class Styles.insetParagraph ]
                    [ span [ class Styles.insetQuoteHeading ]
                        [ text "Mies, my great mentor said:" ]
                    , span [ class Styles.insetQuote ]
                        [ text "“God is in the details.”" ]
                    , span [ class Styles.insetDescription ]
                        [ text description ]
                    ]
                ]
            ]


articleCopy : Html msg
articleCopy =
    let
        leadingSentence =
            "For us Graphic Design is “organization of information.”"

        copy =
            """
            There are other types of graphic design more concerned with
            illustration or of a narrative nature. Nothing could be more useful
            to reach our intention than the Grid. The grid represents the
            basic structure of our graphic design, it helps to organize the
            content, it provides consistency, it gives an orderly look and it
            projects a level of intellectual elegance that we like to express.
            There are in nite kinds of grids, but just one - the most
            appropriate - for any problem. Therefore, it becomes important to
            know which kind of grid is the most appropriate. The basic
            understanding is that the smaller the module of the grid the least
            helpful it could be. We could say that an empty page is a page with
            an in nitesimal small grid. Therefore, it is equivalent to not being
            there. Conversely a page with a coarse grid is a very restricting
            grid offering too few alternatives. The secret is to nd the proper
            kind of grid for the job at hand. Sometimes, in designing a grid we
            want to have the outside margins small enough to provide a certain
            tension between the edges of the page and the content. After that we
            divide the page in a certain number of columns according to the
            content, three, two, four, ve, six, etc. Columns provide only one
            kind of consistency, but we also need to have an horizontal frame
            of reference to assure certain levels of continuity throughout the
            publication. Therefore, we will divide the page from top to bottom
            in a certain number of Modules, four, six, eight, or more, according
            to size and need. Once we have structured the page, we will begin to
            structure the information and place it in the grid in such a way
            that the clarity of the message will be enhanced by the placement of
            the text on the grid. There are in nite ways of doing this and that
            is why the grid is a useful tool, rather than a constricting device.
            """
    in
        div [ class Styles.copyWrapper ]
            [ p [ class Styles.copy ]
                [ span [ class Styles.leadingSentence ]
                    [ text leadingSentence ]
                , text copy
                ]
            ]
