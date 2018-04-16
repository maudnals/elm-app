module Models exposing (..)



typa alias Model = 
 {players: List Player}

type Route = 
  PlayersRoute 
  | PlayerRoute PlayerId
  | NotFoundRoute
