module DateTimePicker.Formatter
    exposing
        ( dateFormatter
        , datePattern
        , dateTimeFormatter
        , dateTimePattern
        , footerFormatter
        , footerPattern
        , timeFormatter
        , timePattern
        , titleFormatter
        , titlePattern
        )

import Date exposing (Date)
import Date.Extra.Config.Config_en_us
import Date.Extra.Config.Config_es_es
import Date.Extra.Format
import DateTimePicker.Env exposing (getEnv)


titleFormatter : Date -> String
titleFormatter =
    let
        _ =
            Debug.log "lang" ( getEnv.language, getEnv.language == "es" )

        config =
            case getEnv.language of
                "es" ->
                    Date.Extra.Config.Config_es_es.config

                _ ->
                    Date.Extra.Config.Config_en_us.config
    in
    Date.Extra.Format.format Date.Extra.Config.Config_es_es.config titlePattern


titlePattern : String
titlePattern =
    "%B %Y"


dateFormatter : Date -> String
dateFormatter =
    let
        _ =
            Debug.log "lang" getEnv.language

        config =
            case getEnv.language of
                "es" ->
                    Date.Extra.Config.Config_es_es.config

                _ ->
                    Date.Extra.Config.Config_en_us.config
    in
    Date.Extra.Format.format Date.Extra.Config.Config_es_es.config datePattern


datePattern : String
datePattern =
    "%d %b %Y"


footerFormatter : Date -> String
footerFormatter =
    let
        _ =
            Debug.log "lang" getEnv.language

        config =
            case getEnv.language of
                "es" ->
                    Date.Extra.Config.Config_es_es.config

                _ ->
                    Date.Extra.Config.Config_en_us.config
    in
    Date.Extra.Format.format Date.Extra.Config.Config_es_es.config footerPattern


footerPattern : String
footerPattern =
    "%A, %B %d, %Y"


dateTimeFormatter : Date -> String
dateTimeFormatter =
    let
        _ =
            Debug.log "lang" getEnv.language

        config =
            case getEnv.language of
                "es" ->
                    Date.Extra.Config.Config_es_es.config

                _ ->
                    Date.Extra.Config.Config_en_us.config
    in
    Date.Extra.Format.format Date.Extra.Config.Config_es_es.config dateTimePattern


dateTimePattern : String
dateTimePattern =
    "%m/%d/%Y %I:%M %p"


timeFormatter : Date -> String
timeFormatter =
    let
        _ =
            Debug.log "lang" getEnv.language

        config =
            case getEnv.language of
                "es" ->
                    Date.Extra.Config.Config_es_es.config

                _ ->
                    Date.Extra.Config.Config_en_us.config
    in
    Date.Extra.Format.format Date.Extra.Config.Config_es_es.config timePattern


timePattern : String
timePattern =
    "%I:%M %p"
