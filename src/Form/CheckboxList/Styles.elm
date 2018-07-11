module Form.CheckboxList.Styles
    exposing
        ( checkbox
        , checkboxWrapper
        , fieldset
        , form
        , label
        , legend
        )


checkbox : String
checkbox =
    "mr2"


checkboxWrapper : String
checkboxWrapper =
    [ "flex"
    , "items-center"
    , "mb2"
    ]
        |> String.join " "


fieldset : String
fieldset =
    "bn"


form : String
form =
    "pa4"


label : String
label =
    "lh-copy"


legend : String
legend =
    [ "fw7"
    , "mb2"
    ]
        |> String.join " "
