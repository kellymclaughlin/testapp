-module(test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

-endif.

-export([test/0]).

test() ->
    1.


-ifdef(TEST).

my_test_() ->
    {spawn, [{setup,
              fun setup/0,
              fun teardown/1,
              ?_assertEqual(1, test())}
            ]}.

setup() ->
    ok.

teardown(_) ->
    ok.

-endif.
