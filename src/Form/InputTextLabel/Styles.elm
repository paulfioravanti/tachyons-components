module Form.InputTextLabel.Styles
    exposing
        ( form
        , nameField
        , nameHelperText
        , nameInput
        , nameLabel
        , nameLabelConstraint
        )


form : String
form =
    """
    black-80
    pa4
    """


nameField : String
nameField =
    "measure"


nameHelperText : String
nameHelperText =
    """
    black-60
    db
    f6
    mb2
    """


nameInput : String
nameInput =
    """
    b--black-20
    ba
    db
    input-reset
    mb2
    pa2
    w-100
    """


nameLabel : String
nameLabel =
    """
    b
    db
    f6
    mb2
    """


nameLabelConstraint : String
nameLabelConstraint =
    """
    black-60
    normal
    """
