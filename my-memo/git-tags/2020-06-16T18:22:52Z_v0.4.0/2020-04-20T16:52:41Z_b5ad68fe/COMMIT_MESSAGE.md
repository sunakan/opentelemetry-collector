commit b5ad68fe077db76d0c5a41f60cd3d8e234403bd8
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Apr 20 09:52:41 2020 -0700

    Remove dead code from oc_to_resource (#852)
    
    Since we don't allocate attributes slice explicitly anymore, we don't need to count attributes
