commit bf2e0a8cd15263171ba8ef580fbd5c35b47890b9
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Dec 5 15:16:01 2022 -0800

    [pdata] Change [...Slice|Map].Sort methods to not return any value (#6667)
    
    Returning the same object from Sort methods leads to subtle bug when non-mutating components rely use the returned object assuming it's a copy. Making the methods to not return anything makes it clear that they are mutating.
