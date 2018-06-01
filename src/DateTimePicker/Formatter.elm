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
import Navigator exposing (language)


titleFormatter : Date -> String
titleFormatter =
    let
        config =
            case language of
                "es_ES" ->
                    Date.Extra.Config.Config_es_es.config

                _ ->
                    Date.Extra.Config.Config_en_us.config
    in
    Date.Extra.Format.format config titlePattern


titlePattern : String
titlePattern =
    "%B %Y"


dateFormatter : Date -> String
dateFormatter =
    let
        config =
            case language of
                "es_ES" ->
                    Date.Extra.Config.Config_es_es.config

                _ ->
                    Date.Extra.Config.Config_en_us.config
    in
    Date.Extra.Format.format config datePattern


datePattern : String
datePattern =
    "%d %b %Y"


footerFormatter : Date -> String
footerFormatter =
    let
        config =
            case language of
                "es_ES" ->
                    Date.Extra.Config.Config_es_es.config

                _ ->
                    Date.Extra.Config.Config_en_us.config
    in
    Date.Extra.Format.format config footerPattern


footerPattern : String
footerPattern =
    "%A, %B %d, %Y"


dateTimeFormatter : Date -> String
dateTimeFormatter =
    let
        config =
            case language of
                "es_ES" ->
                    Date.Extra.Config.Config_es_es.config

                _ ->
                    Date.Extra.Config.Config_en_us.config
    in
    Date.Extra.Format.format config dateTimePattern


dateTimePattern : String
dateTimePattern =
    "%m/%d/%Y %I:%M %p"


timeFormatter : Date -> String
timeFormatter =
    let
        config =
            case language of
                "es_ES" ->
                    Date.Extra.Config.Config_es_es.config

                _ ->
                    Date.Extra.Config.Config_en_us.config
    in
    Date.Extra.Format.format config timePattern


timePattern : String
timePattern =
    "%I:%M %p"
