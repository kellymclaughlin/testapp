-module(dummy_SUITE).

%% tests to make sure we reap dead or invalid connections

-export([init_per_suite/1,
         end_per_suite/1,
         init_per_testcase/2,
         end_per_testcase/2,
         all/0]).

-export([dummy_test/1]).

-include_lib("common_test/include/ct.hrl").
-include_lib("eunit/include/eunit.hrl").

init_per_suite(_Config) ->
    _Config.

end_per_suite(_Config) ->
    _Config.

init_per_testcase(_Case, _Config) ->
    _Config.

end_per_testcase(_, _Config) ->
    ok.

all() ->
    [dummy_test].

dummy_test(_Config) ->
    ?assert(true).
