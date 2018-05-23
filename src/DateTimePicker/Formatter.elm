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
import Date.Extra.Config.Config_en_us exposing (config)
import Date.Extra.Config.Config_es_es exposing (config)
import Date.Extra.Format


titleFormatter : Maybe String -> Date -> String
titleFormatter lang =
    let
        conf =
            case lang of
                Nothing ->
                    Date.Extra.Config.Config_en_us.config

                Just str ->
                    if str == "es" then
                        Date.Extra.Config.Config_es_es.config
                    else
                        Date.Extra.Config.Config_en_us.config
    in
    Date.Extra.Format.format conf titlePattern


titlePattern : String
titlePattern =
    "%B %Y"


dateFormatter : Maybe String -> Date -> String
dateFormatter lang =
    let
        conf =
            case lang of
                Nothing ->
                    Date.Extra.Config.Config_en_us.config

                Just str ->
                    if str == "es" then
                        Date.Extra.Config.Config_es_es.config
                    else
                        Date.Extra.Config.Config_en_us.config
    in
    Date.Extra.Format.format conf datePattern


datePattern : String
datePattern =
    "%d %b %Y"


footerFormatter : Maybe String -> Date -> String
footerFormatter lang =
    let
        conf =
            case lang of
                Nothing ->
                    Date.Extra.Config.Config_en_us.config

                Just str ->
                    if str == "es" then
                        Date.Extra.Config.Config_es_es.config
                    else
                        Date.Extra.Config.Config_en_us.config
    in
    Date.Extra.Format.format conf footerPattern


footerPattern : String
footerPattern =
    "%A, %B %d, %Y"


dateTimeFormatter : Date -> String
dateTimeFormatter =
    Date.Extra.Format.format config dateTimePattern


dateTimePattern : String
dateTimePattern =
    "%m/%d/%Y %I:%M %p"


timeFormatter : Date -> String
timeFormatter =
    Date.Extra.Format.format config timePattern


timePattern : String
timePattern =
    "%I:%M %p"
