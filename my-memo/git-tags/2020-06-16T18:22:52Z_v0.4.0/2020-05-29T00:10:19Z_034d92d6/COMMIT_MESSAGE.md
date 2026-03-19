commit 034d92d6475f6ae8d97f9dd8a656893c1ca2c2f7
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu May 28 20:10:19 2020 -0400

    Add experimental Logs proto (#1045)
    
    This is using the same ProtoBuf generation mechanism as OTLP traces and metrics but
    keeps Logs proto message definition in this repo for now, during the experimentation
    phase. Once we settle on a certain proto format for logs this will be proposed
    as official extension of Logs in OTLP.
    
    This change also generates in-memory structs for logs using pdatagen.
    
    TODO:
    Body needs to implement than `any` data type that Log Data Model requires.
    It will be done in a future PR. I want to align AttributeKeyValue in OTLP
    with `any` value first.
