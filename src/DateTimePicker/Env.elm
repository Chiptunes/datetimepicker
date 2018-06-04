module DateTimePicker.Env exposing (cdn, getEnv)

import Native.Env
import Standard.Country exposing (CountryCode)
import Standard.Language exposing (LanguageCode)


type alias Env =
    { coowryEnv : CoowryEnv
    , version : String
    , staticUrl : String
    , language : LanguageCode
    , languages : List LanguageCode
    , countries : List CountryCode
    }


type CoowryEnv
    = Headless
    | Dev
    | Pre
    | Pro


readCoowryEnv : String -> CoowryEnv
readCoowryEnv env =
    case env of
        "headless" ->
            Headless

        "dev" ->
            Dev

        "pre" ->
            Pre

        "pro" ->
            Pro

        _ ->
            Debug.crash ("Invalid CoowryEnv: " ++ env)


getEnv : Env
getEnv =
    let
        { coowryEnv, version, staticUrl, language, languages, countries } =
            Native.Env.env

        env =
            { coowryEnv = readCoowryEnv coowryEnv
            , version = version
            , staticUrl = staticUrl
            , language = language
            , languages = languages
            , countries = countries
            }

        _ =
            -- Log env in console in non-production environments
            case env.coowryEnv of
                Pro ->
                    env

                Headless ->
                    env

                _ ->
                    Debug.log "Environment" env
    in
    env


cdn : String -> String
cdn url =
    getEnv.staticUrl ++ "/" ++ url
