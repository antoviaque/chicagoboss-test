-module(language_core_search_controller, [Req]).
-compile(export_all).

expression('GET', []) ->
    {output, "Enter word or expression to find:"}.

proxy('GET', []) ->
    {ok, {{Version, 200, ReasonPhrase}, Headers, Body}} = 
        httpc:request(get, {"http://free.fr", []}, [{ssl,[{verify,0}]}], []),
    {output, Body}.

notfound('GET', []) ->
    {output, "Requested page was not found."}.

