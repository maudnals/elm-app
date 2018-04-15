module Routing exposing (..)

import Navigation exposing (Location)
import Models exposing (PlayerId, Route(..))
import UrlParser exposing (..)


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map PlayersRoute top
        , map PlayerRoute (s "players" </> string)
        , map PlayersRoute (s "players")
        ]
-- oneOf takes a list of matchers and tries each item
-- order is important as always in routing


parseLocation : Location -> Route
parseLocation location =
  case (parseHash matchers location) of
    Just route -> 
      route
    Nothing ->
      NotFoundRoute
