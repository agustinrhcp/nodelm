port module Main exposing (main)


main : Program () Model Msg
main =
    Platform.worker
        { init = init
        , update = update
        , subscriptions = subscriptions
        }


port start : (Int -> msg) -> Sub msg


port return : Int -> Cmd msg


type alias Model =
    {}


type Msg
    = Add Int


init : () -> ( Model, Cmd Msg )
init _ =
    ( {}, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Add int ->
            ( model, return (int + 1) )


subscriptions : Model -> Sub Msg
subscriptions _ =
    start Add
