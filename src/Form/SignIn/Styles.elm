module Form.SignIn.Styles exposing
    ( email
    , emailInput
    , fieldset
    , form
    , label
    , legend
    , link
    , links
    , main_
    , password
    , passwordInput
    , rememberMe
    , signInButton
    )


email : String
email =
    "mt3"


emailInput : String
emailInput =
    fieldInput


fieldset : String
fieldset =
    """
    b--transparent
    ba
    mh0
    ph0
    """


form : String
form =
    """
    center
    measure
    """


label : String
label =
    """
    db
    f6
    fw6
    lh-copy
    """


legend : String
legend =
    """
    f4
    fw6
    mh0
    ph0
    """


link : String
link =
    """
    black
    db
    dim
    f6
    link
    """


links : String
links =
    """
    lh-copy
    mt3
    """


main_ : String
main_ =
    """
    black-80
    pa4
    """


password : String
password =
    "mv3"


passwordInput : String
passwordInput =
    fieldInput ++ "b"


fieldInput : String
fieldInput =
    """
    ba
    bg-transparent
    hover-bg-black
    hover-white
    input-reset
    pa2
    w-100
    """


rememberMe : String
rememberMe =
    """
    f6
    ma0
    lh-copy
    pa0
    pointer
    """


signInButton : String
signInButton =
    """
    b
    b--black
    ba
    bg-transparent
    dib
    f6
    grow
    input-reset
    ph3
    pointer
    pv2
    """
