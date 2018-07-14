module Collection.Vinyl.Album
    exposing
        ( Album
        , beyonce
        , boniver
        , clamscasino
        , coloranything
        , dannybrown
        , flume
        , glassanimals
        , goldpanda
        , humanenergy
        , justice
        , kaytranada
        , moodyman
        , moonshapedpool
        , paak
        , solange
        , strangerthings
        , untitledunmastered
        )


type alias Album =
    { amazonUrl : String
    , imageUrl : String
    , label : String
    }


paak : Album
paak =
    let
        amazonUrl =
            "https://www.amazon.com/Malibu-Anderson-Paak/dp/B01BXNXBAS/"
                ++ "ref=sr_1_1_twi_lp__3?s=music&ie=UTF8&qid=1480422041&"
                ++ "sr=1-1&keywords=paak&tag=mrmrs01-20"
    in
        { amazonUrl = amazonUrl
        , imageUrl = "http://mrmrs.github.io/photos/paak.jpg"
        , label = "Malibu -  Anderson Paak"
        }


boniver : Album
boniver =
    let
        amazonUrl =
            "https://www.amazon.com/22-Million-Bon-Iver/dp/B01KBKVK2K/"
                ++ "ref=sr_tnr_p_6_195212011_1_twi_lp__3?s=music&ie=UTF8&"
                ++ "qid=1480422776&sr=1-6&tag=mrmrs01-20"
    in
        { amazonUrl = amazonUrl
        , imageUrl = "http://mrmrs.github.io/photos/boniver.jpg"
        , label = "22 Million - Bon Iver"
        }


glassanimals : Album
glassanimals =
    let
        amazonUrl =
            "https://www.amazon.com/How-Be-Human-Being-LP/dp/B01GQ7DIJA/"
                ++ "ref=tmm_vnl_swatch_0?_encoding=UTF8&qid=1480421224&"
                ++ "sr=8-1&tag=mrmrs01-20"
    in
        { amazonUrl = amazonUrl
        , imageUrl = "http://mrmrs.github.io/photos/glassanimals.jpg"
        , label = "How Be Human Being LP"
        }


strangerthings : Album
strangerthings =
    let
        amazonUrl =
            "https://www.amazon.com/Stranger-Things-Netflix-Original-"
                ++ "Soundtrack/dp/B01KA4MVF2/ref=sr_1_1_twi_lp__3?s=music&"
                ++ "ie=UTF8&qid=1480423240&sr=1-1&keywords=stranger+things&"
                ++ "tag=mrmrs01-20"
    in
        { amazonUrl = amazonUrl
        , imageUrl = "http://mrmrs.github.io/photos/strangerthings.jpg"
        , label = "Stranger Things Netflix Original Soundtrack"
        }


moodyman : Album
moodyman =
    let
        amazonUrl =
            "https://www.amazon.com/Moodymann-DJ-Kicks-DJ-KICKS/dp/"
                ++ "B01AEOM6D0/ref=sr_1_1_twi_lp__3?s=music&ie=UTF8&"
                ++ "qid=1480371894&sr=1-1&keywords=dj+kicks+moodymann&"
                ++ "tag=mrmrs01-20"
    in
        { amazonUrl = amazonUrl
        , imageUrl = "http://mrmrs.github.io/photos/moodyman.jpg"
        , label = "Moodymann - DJ Kicks"
        }


humanenergy : Album
humanenergy =
    let
        amazonUrl =
            "https://www.amazon.com/Human-Energy-MACHINEDRUM/dp/B01HC7UTBI/"
                ++ "ref=sr_1_1_twi_lp__3?s=music&ie=UTF8&qid=1480371226&"
                ++ "sr=1-1&keywords=human+energy&tag=mrmrs01-20"
    in
        { amazonUrl = amazonUrl
        , imageUrl = "http://mrmrs.github.io/photos/humanenergy.jpg"
        , label = "Human Energy - Machinedrum"
        }


dannybrown : Album
dannybrown =
    let
        amazonUrl =
            "https://www.amazon.com/Danny-Brown-Atrocity-Exhibition-Exclusive/"
                ++ "dp/B01M9F0LSQ/ref=sr_1_2?ie=UTF8&qid=1480421198&sr=8-2&"
                ++ "keywords=danny+brown+vinyl&tag=mrmrs01-20"
    in
        { amazonUrl = amazonUrl
        , imageUrl = "http://mrmrs.github.io/photos/dannybrown.jpg"
        , label = "Danny Brown Atrocity Exhibition Exclusive"
        }


clamscasino : Album
clamscasino =
    let
        amazonUrl =
            "https://www.amazon.com/32-Levels-Clams-Casino/dp/B01GU83I4K/"
                ++ "ref=sr_1_2_twi_lp__1?s=music&ie=UTF8&qid=1480371183&"
                ++ "sr=1-2&keywords=clams+casino&tag=mrmrs01-20"
    in
        { amazonUrl = amazonUrl
        , imageUrl = "http://mrmrs.github.io/photos/clamscasino.jpg"
        , label = "32 Levels Clams Casino"
        }


goldpanda : Album
goldpanda =
    let
        amazonUrl =
            "https://www.amazon.com/Good-Luck-Do-Your-Best/dp/B01C3IHINI/"
                ++ "ref=sr_1_1_twi_lp__3?s=music&ie=UTF8&qid=1480371123&sr=1-1&"
                ++ "keywords=good+luck+gold+panda&tag=mrmrs01-20"
    in
        { amazonUrl = amazonUrl
        , imageUrl = "http://mrmrs.github.io/photos/goldpanda.jpg"
        , label = "Good Luck Do Your Best"
        }


coloranything : Album
coloranything =
    let
        amazonUrl =
            "https://www.amazon.com/Colour-Anything-2-LP/dp/B01F8674B8/"
                ++ "ref=sr_1_1_twi_lp__3?s=music&ie=UTF8&qid=1480371036&"
                ++ "sr=1-1&keywords=color+in+anything&tag=mrmrs01-20"
    in
        { amazonUrl = amazonUrl
        , imageUrl = "http://mrmrs.github.io/photos/colouranything.jpg"
        , label = "Colour Anything 2"
        }


moonshapedpool : Album
moonshapedpool =
    let
        amazonUrl =
            "https://www.amazon.com/Moon-Shaped-Pool-2-LP-Download/dp/"
                ++ "B01FDF12UI/ref=sr_1_1_twi_lp__3?s=music&ie=UTF8&qid=1480370971&"
                ++ "sr=1-1&keywords=moon+shaped+pool&tag=mrmrs01-20"
    in
        { amazonUrl = amazonUrl
        , imageUrl = "http://mrmrs.github.io/photos/moonshapedpool.jpg"
        , label = "Moon Shaped Pool 2"
        }


untitledunmastered : Album
untitledunmastered =
    let
        amazonUrl =
            "https://www.amazon.com/untitled-unmastered-LP-Kendrick-Lamar/dp/"
                ++ "B01DET9BV2/ref=sr_1_3_twi_lp__3?s=music&ie=UTF8&"
                ++ "qid=1480370912&sr=1-3&keywords=kendrick+lamar&"
                ++ "tag=mrmrs01-20"
    in
        { amazonUrl = amazonUrl
        , imageUrl = "http://mrmrs.github.io/photos/untitledunmastered.jpg"
        , label = "Untitled Unmastered - Kendrick Lamar"
        }


solange : Album
solange =
    let
        amazonUrl =
            "https://www.amazon.com/Seat-at-Table-Solange/dp/B01LXP7I5N/"
                ++ "ref=sr_tnr_p_1_195429011_1_twi_lp__3?s=music&ie=UTF8&"
                ++ "qid=1480422087&sr=1-1&keywords=solange+seat+at+the+table&"
                ++ "tag=mrmrs01-20"
    in
        { amazonUrl = amazonUrl
        , imageUrl = "http://mrmrs.github.io/photos/solange.jpg"
        , label = "Seat at Table Solange"
        }


flume : Album
flume =
    let
        amazonUrl =
            "https://www.amazon.com/Skin-Flume/dp/B01DD5N35W/"
                ++ "ref=sr_1_1_twi_lp__3?s=music&ie=UTF8&qid=1480422133&"
                ++ "sr=1-1&keywords=flume&tag=mrmrs01-20"
    in
        { amazonUrl = amazonUrl
        , imageUrl = "http://mrmrs.github.io/photos/flume.jpg"
        , label = "Skin - Flume"
        }


justice : Album
justice =
    let
        amazonUrl =
            "https://www.amazon.com/Woman-2LP-Set-Full-Album/dp/B01LX3E0ET/"
                ++ "ref=sr_1_1?s=music&ie=UTF8&qid=1480422119&sr=1-1&"
                ++ "keywords=justice&tag=mrmrs01-20"
    in
        { amazonUrl = amazonUrl
        , imageUrl = "http://mrmrs.github.io/photos/justice.jpg"
        , label = "Woman - Justice"
        }


kaytranada : Album
kaytranada =
    let
        amazonUrl =
            "https://www.amazon.com/99-9-KAYTRANADA/dp/B01D9DBNX2/"
                ++ "ref=sr_1_1_twi_lp__3?s=music&ie=UTF8&qid=1480422105&"
                ++ "sr=1-1&keywords=kaytranada+vinyl&tag=mrmrs01-20"
    in
        { amazonUrl = amazonUrl
        , imageUrl = "http://mrmrs.github.io/photos/kaytranada.jpg"
        , label = "Kaytranada"
        }


beyonce : Album
beyonce =
    let
        amazonUrl =
            "https://www.amazon.com/BEYONCÉ-Beyonce/dp/B00KCOMBJC/"
                ++ "ref=sr_1_2_twi_lp__3?s=music&ie=UTF8&qid=1480422067&"
                ++ "sr=1-2&keywords=beyonce&tag=mrmrs01-20"
    in
        { amazonUrl = amazonUrl
        , imageUrl = "http://mrmrs.github.io/photos/beyonce.jpg"
        , label = "Beyoncé"
        }
