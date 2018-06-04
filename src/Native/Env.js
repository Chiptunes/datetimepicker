var _chiptunes$datetimepicker$Native_Env = function() {

  var env = typeof window !== 'undefined'
          ? window.cw_env
          : { coowry_env: "headless", version: "0.0.0", static_url: "", language: "en", languages: ["en"], countries: ["ES"] };

  return {
    env: {
      coowryEnv: env.coowry_env,
      version: env.version,
      staticUrl: env.static_url,
      language: env.language,
      languages: _elm_lang$core$Native_List.fromArray(env.languages),
      countries: _elm_lang$core$Native_List.fromArray(env.countries)
    }
  };

}();
