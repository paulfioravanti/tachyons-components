module Card.SuggestedProfile.Styles exposing
    ( addFriend
    , article
    , close
    , image
    , mutualFriends
    , name
    , profile
    , section
    )


addFriend : String
addFriend =
    [ "bg-animate"
    , "bg-dark-blue"
    , "br1"
    , "db"
    , "f6"
    , "hover-bg-blue"
    , "link"
    , "ph3"
    , "pv1"
    , "tc"
    , "white"
    ]
        |> String.join " "


article : String
article =
    [ "b--black-20"
    , "ba"
    , "center"
    , "hide-child"
    , "mw5"
    , "relative"
    ]
        |> String.join " "


close : String
close =
    [ "absolute"
    , "b"
    , "ba"
    , "black-40"
    , "br-100"
    , "bw1"
    , "child"
    , "grow"
    , "h1"
    , "lh-solid"
    , "no-underline"
    , "pa2"
    , "right-1"
    , "top-1"
    , "w1"
    ]
        |> String.join " "


image : String
image =
    "db"


mutualFriends : String
mutualFriends =
    [ "f6"
    , "gray"
    , "mv1"
    ]
        |> String.join " "


name : String
name =
    [ "dark-blue"
    , "db"
    , "f6"
    , "hover-blue"
    , "link"
    ]
        |> String.join " "


profile : String
profile =
    [ "b--black-20"
    , "bt"
    , "pa2"
    ]
        |> String.join " "


section : String
section =
    [ "pa3 pa5-ns"
    , "tc"
    ]
        |> String.join " "
