module Footer.Logo exposing (Logo, facebook, linkedIn, list, medium, twitter)

import Svg exposing (g, path)
import Svg.Attributes
    exposing
        ( d
        , fillRule
        )
import SvgLogo


type alias Logo msg =
    { path : Svg.Svg msg
    , name : String
    , url : String
    }


list : List (Logo msg)
list =
    [ facebook
    , github
    , instagram
    , youtube
    , soundCloud
    , stackOverflow
    , slack
    , medium
    , linkedIn
    , twitter
    , tumblr
    , codePen
    ]


codePen : Logo msg
codePen =
    { path = path [ d SvgLogo.codePen, fillRule "nonzero" ] []
    , name = "CodePen"
    , url = "#"
    }


tumblr : Logo msg
tumblr =
    { path = path [ d SvgLogo.tumblr, fillRule "nonzero" ] []
    , name = "Tumblr"
    , url = "#"
    }


twitter : Logo msg
twitter =
    { path = path [ d SvgLogo.twitter, fillRule "nonzero" ] []
    , name = "Twitter"
    , url = "#"
    }


linkedIn : Logo msg
linkedIn =
    { path = path [ d SvgLogo.linkedIn, fillRule "nonzero" ] []
    , name = "LinkedIn"
    , url = "#"
    }


medium : Logo msg
medium =
    { path = path [ d SvgLogo.medium ] []
    , name = "Medium"
    , url = "#"
    }


slack : Logo msg
slack =
    { path =
        g [ fillRule "nonzero" ]
            [ path [ d SvgLogo.slackLogoMiddleSquare ] []
            , path [ d SvgLogo.slackLogo ] []
            ]
    , name = "Slack"
    , url = "http://tachyons-slack-invite.herokuapp.com"
    }


stackOverflow : Logo msg
stackOverflow =
    { path = path [ d SvgLogo.stackOverflow ] []
    , name = "Stack Overflow"
    , url = "http://stackoverflow.com"
    }


soundCloud : Logo msg
soundCloud =
    { path = g [ fillRule "nonzero" ] [ path [ d SvgLogo.soundCloud ] [] ]
    , name = "SoundCloud"
    , url = "https://soundcloud.com/mrsjxn"
    }


youtube : Logo msg
youtube =
    { path = path [ d SvgLogo.youtube ] []
    , name = "Youtube"
    , url = "https://youtube.com"
    }


instagram : Logo msg
instagram =
    { path = path [ d SvgLogo.instagram ] []
    , name = "Instagram"
    , url = "https://instagram.com/mrmrs_"
    }


github : Logo msg
github =
    { path = path [ d SvgLogo.github ] []
    , name = "Github"
    , url = "https://github.com/mrmrs"
    }


facebook : Logo msg
facebook =
    { path = path [ d SvgLogo.facebook, fillRule "nonzero" ] []
    , name = "Facebook"
    , url = "https://facebook.com"
    }
