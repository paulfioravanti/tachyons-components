module List_.Hashtags.Styles exposing
    ( article
    , editLink
    , hashtagLink
    , hashtagMentions
    , hashtagName
    , heading
    , li
    , section
    , ul
    )


article : String
article =
    """
    b--black-10
    ba
    bg-white
    br2
    center
    mw6
    pa4
    """


editLink : String
editLink =
    """
    blue
    dib
    f6
    ml1
    mb0
    no-underline
    underline-hover
    v-mid
    """


hashtagLink : String
hashtagLink =
    """
    blue
    lh-title
    link
    """


hashtagMentions : String
hashtagMentions =
    """
    black-60
    db
    """


hashtagName : String
hashtagName =
    """
    fw7
    underline-hover
    """


heading : String
heading =
    """
    black-60
    dib
    f5
    fw4
    mr3
    mv0
    v-mid
    """


li : String
li =
    "pv2"


section : String
section =
    """
    bg-washed-blue
    pa2 pa4-ns
    """


ul : String
ul =
    """
    f6
    list
    mb0
    mt3
    pl0
    """
