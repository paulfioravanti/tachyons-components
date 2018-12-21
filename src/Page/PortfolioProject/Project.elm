module Page.PortfolioProject.Project exposing (Project, example)


type alias Project =
    { title : String
    , description : String
    , subtitle : String
    , p1 : String
    , p2 : String
    , p3 : String
    , p4 : String
    , p5 : String
    }


example : Project
example =
    let
        description =
            """
            A short description of your project. Maybe a few notes concerning
            your constraints and process. Standard lorem ipsum dolor sit amet,
            consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
            labore etc. al dolore magna aliqua. Ut enim ad.
            """

        p1 =
            """
            Back in the office after his vacation on a 154-foot rented yacht
            named Mister Terrible, he feels that relaxation slipping away. He
            feels pulled inward, toward his own most valuable and destructive
            traits. Slights roll through his mind, eating at him: worst record
            ever, can't build a team, absentee landlord. Jordan reads the things
            written about him, the fuel arriving in a packet of clips his staff
            prepares. He knows what people say. He needs to know, a needle for a
            hungry vein. There's a palpable simmering whenever you're around
            Jordan, as if Air Jordan is still in there, churning, trying to
            escape. It must be strange to be locked in combat with the ghost of
            your former self.
            """

        p2 =
            """
            The memories came to him, how he felt then. "It was very pure, if I
            can say it right," he'd explain later. "It was pure in 1984 … I was
            still dreaming." During the Olympics, he was deep in negotiations
            with Nike for his first shoe contract. He traded pins with other
            athletes. Eight years later, when he was the most famous person in
            the world and the Dream Team was forced to stay outside the Olympic
            Village, he'd be disappointed when that separation kept him from
            swapping pins again.
            """

        p3 =
            """
            “I remember going up to that McDonald's and getting my damn McRib.
            When I first got there.”
            """

        p4 =
            "Michael Jordan"

        p5 =
            """
            There's an unspoken shadow over the stories about that town house
            on Essex Drive. James Jordan remodeled the basement for his son.
            Did all the work himself, because he'd never let Michael pay for
            something he could do on his own. The first winter, while Michael
            was out of town for the All-Star Game, his pipes froze. His dad
            ripped out the walls, replacing the pipes himself, patching and
            repainting when he finished. He spent two weeks fixing his son's
            home. James and Mike -- that's where all this nostalgia has been
            headed, from the moment it began.
            """
    in
    { title = "Project Title #034"
    , description = description
    , subtitle = "The subtitle for the project"
    , p1 = p1
    , p2 = p2
    , p3 = p3
    , p4 = p4
    , p5 = p5
    }
