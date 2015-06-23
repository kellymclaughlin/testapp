-module(test_sup).
-behaviour(supervisor).

-export([start_link/0, init/1]).


start_link() ->
    supervisor:start_link(?MODULE, []).

init([]) ->
    ChildSpecs = [],
    {ok, {{one_for_one, 10, 10}, ChildSpecs}}.
