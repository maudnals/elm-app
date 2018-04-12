module Main exposing (..)
import Html exposing (div, Html, program, text)



-- MODEL

type alias Model =
  String



-- MESSAGE

type Msg = 
  NoOp



-- INIT

init : (Model, Cmd Msg)
init =
  ("Init Model", Cmd.none)



-- UPDATE

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =  
  case msg of
      NoOp ->
        (model, Cmd.none)



-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none






