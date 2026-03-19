commit 22d3a4d483e970e01cbc71cfee07df3dcd20dda6
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Fri Sep 9 14:24:11 2022 -0400

    [confmap] Add mapstructure hook function for unmarshalling confmap.Conf (#6029)
    
    * [confmap] Add mapstructure hook function for confmap.Unmarshaler
    
    This allows structs to implement custom unmarshaling behaviors when
    being unmarshaled from confmap.Conf.
    
    * Switch order of checks in Unmarshaler hook
