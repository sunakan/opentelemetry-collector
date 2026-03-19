commit ad5e50c02a97678bf39022d4a0ed21b4c67351ba
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Jun 28 20:50:58 2021 +0300

    Remove usage of Translator/Encoder in OTLP json/protobuf (#3503)
    
    This removes unnecessary checks for interface{} types.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
