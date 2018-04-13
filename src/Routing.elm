module Routing exposing (..)

import Navigation exposing (Location)
import Models exposing (PlayerId, Route(..))
import UrlParser exposing (..)


matchers : 

-- oneOf takes a list of matchers and tries each item
-- order is important as always in routing


parseLocation : Location -> Route
parseLocation location =
  case (parseHash matchers location) of
    Just route -> 
      route
    Nothing ->
      NotFoundRoute
