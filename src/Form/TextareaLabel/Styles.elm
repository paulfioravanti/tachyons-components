module Form.TextareaLabel.Styles exposing
    ( commentsField
    , commentsHelperText
    , commentsHelperTextLink
    , commentsInput
    , commentsLabel
    , commentsLabelConstraint
    , form
    )


form : String
form =
    """
    black-80
    pa4
    """


commentsField : String
commentsField =
    "measure"


commentsHelperText : String
commentsHelperText =
    """
    black-60
    db
    f6
    mb2
    """


commentsHelperTextLink : String
commentsHelperTextLink =
    """
    black-80
    hover-blue
    link
    underline
    """


commentsInput : String
commentsInput =
    """
    b--black-20
    ba
    db
    input-reset
    mb2
    pa2
    w-100
    """


commentsLabel : String
commentsLabel =
    """
    b
    db
    f6
    mb2
    """


commentsLabelConstraint : String
commentsLabelConstraint =
    """
    black-60
    normal
    """
