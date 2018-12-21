module Form.Password.Styles exposing
    ( form
    , passwordField
    , passwordHelperText
    , passwordInput
    , passwordLabel
    )


form : String
form =
    """
    black-80
    pa4
    """


passwordField : String
passwordField =
    "measure-narrow"


passwordHelperText : String
passwordHelperText =
    """
    black-60
    db
    f6
    lh-copy
    mb2
    """


passwordInput : String
passwordInput =
    """
    b--black-20
    ba
    db
    input-reset
    mb2
    pa2
    w-100
    """


passwordLabel : String
passwordLabel =
    """
    b
    db
    f6
    mb2
    """
