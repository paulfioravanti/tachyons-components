module Form.NewsletterSubscription.Styles exposing
    ( emailInput
    , emailLabel
    , fieldset
    , form
    , formWrapper
    , legend
    , signUp
    , subscribeButton
    )


emailInput : String
emailInput =
    """
    bg-white
    black-80
    bn
    br--left-ns
    br2-ns
    f6 f5-l
    fl
    input-reset
    lh-solid
    pa3
    w-100 w-75-m w-80-l
    """


emailLabel : String
emailLabel =
    "clip"


fieldset : String
fieldset =
    """
    bn
    cf
    ma0
    pa0
    """


form : String
form =
    """
    b--black-10
    ba
    bg-light-red
    br2-ns
    center
    mw7
    pa4
    """


formWrapper : String
formWrapper =
    "pa4-l"


legend : String
legend =
    """
    black-80
    f5 f4-ns
    mb3
    pa0
    """


signUp : String
signUp =
    "cf"


subscribeButton : String
subscribeButton =
    """
    bg-animate
    bg-black-70
    bn
    br2-ns br--right-ns
    button-reset
    f6 f5-l
    fl
    hover-bg-black
    pointer
    pv3
    tc
    w-100 w-25-m w-20-l
    white
    """
