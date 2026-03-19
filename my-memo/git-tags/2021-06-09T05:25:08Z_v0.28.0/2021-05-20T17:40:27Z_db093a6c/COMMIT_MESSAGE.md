commit db093a6ca458a3fea6854715965d29cb65f48a46
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Thu May 20 13:40:27 2021 -0400

    Introduce model translation and encoding interfaces (#3200)
    
    * [wip] Introduce model translation and encodings interfaces
    
    This is a somewhat more limited version of #3044. It decouples
    translation of models from encodings.
    
    Models refers to the in-memory representation of a protcol like the zipkin v2
    SpanModel. After translating from pdata to the model an encoding is used to
    serialize the model to a particular byte representation (protobuf, JSON, etc.).
    The reverse also applies in deserializing an encoding of bytes to a model then
    translating the model to pdata.
    
    * use encode/decode consistently
    
    * review feedback
    
    * decouple encoding from model
    
    Before the encoder interfaces took pdata and serialized it by calling the
    translator. This fully separates the concerns by having model do pure
    translation, encoding do pure serialization, and the transcoder doing both.
    
    Without this there was no way to use the encoder if you already had a model.
    
    Only updates traces for feedback purposes.
    
    * add high level interface
    
    * standardized on encoding/decoding terminology
    * renamed encodings to bytes to avoid confusion with encode/decode terminology
    * added high level interfaces to top level protocols package that goes directly pdata <-> bytes
    
    * cleanup
    
    * Apply suggestions from code review
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
    
    * renamings
    
    * reword error
    
    * cleanup
    
    * return interface instead of out parameter
    
    * review feedback
    
    * serialize -> marshal
    
    * put in internal
    
    * lint
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
