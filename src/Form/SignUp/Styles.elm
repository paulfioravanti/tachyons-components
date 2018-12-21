module Form.SignUp.Styles exposing
    ( article
    , emailInput
    , field
    , fieldset
    , label
    , legend
    , passwordInput
    , signUpButton
    )


article : String
article =
    """
    black-80
    pa4
    """


emailInput : String
emailInput =
    """
    measure
    w-100
    """
        ++ fieldInput


field : String
field =
    "mt3"


fieldset : String
fieldset =
    """
    b--transparent
    ba
    mh0
    ph0
    """


label : String
label =
    """
    db
    f6
    fw4
    lh-copy
    """


legend : String
legend =
    """
    clip
    fw6
    mh0
    ph0
    """


passwordInput : String
passwordInput =
    fieldInput ++ "b"


signUpButton : String
signUpButton =
    """
    b
    b--black
    ba
    bg-transparent
    f6
    grow
    input-reset
    ph3
    pointer
    pv2
    """


fieldInput : String
fieldInput =
    """
    ba
    bg-transparent
    input-reset
    pa2
    """
