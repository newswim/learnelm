module Resources exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


type alias Resource =
    { url : String, dsc : String }


resources : List Resource
resources =
    [ { url = "https://google.com"
      , dsc = "Awesome site, really great."
      }
    , { url = "https://stackoverflow.com"
      , dsc = "Another real gem."
      }
    ]


resourceList : List Resource -> Html msg
resourceList resources =
    resources
        |> List.map (\l -> li [] [ a [ href l.url ] [ text l.url ], text (" - " ++ l.dsc) ])
        |> ul []
