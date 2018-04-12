module Model exposing (..)





type Route = 
  PlayersRoute 
  | PlayerRoute PlayerId
  | NotFoundRoute