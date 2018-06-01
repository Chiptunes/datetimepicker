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

                Just str ->
                    if str == "es" then
                        Date.Extra.Config.Config_es_es.config
                    else
                        Date.Extra.Config.Config_en_us.config
    in
    Date.Extra.Format.format conf dateTimePattern


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

                Just str ->
                    if str == "es" then
                        Date.Extra.Config.Config_es_es.config
                    else
                        Date.Extra.Config.Config_en_us.config
    in
    Date.Extra.Format.format conf timePattern


timePattern : String
timePattern =
    "%I:%M %p"
