%% -*- mode: erlang;erlang-indent-level: 4;indent-tabs-mode: nil -*-
%% ex: ft=erlang sw=4 et
-module(test_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_Type, _Args) ->
    ok.

stop(_State) ->
    ok.
