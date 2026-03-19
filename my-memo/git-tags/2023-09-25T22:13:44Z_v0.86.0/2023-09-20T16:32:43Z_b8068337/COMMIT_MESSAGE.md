commit b80683375c0dcb6e58f82a73e1929a12f33be248
Author: Alex Boten <aboten@lightstep.com>
Date:   Wed Sep 20 09:32:43 2023 -0700

    deprecate exporter API in obsreport (#8493)
    
    The functionality has been moved into exporter helper. This is part of
    #8492
    
    There is no functional changes, just:
    - code moved from `obsreport` to `exporterhelper`
    - tests moved
    - updated references to `obsreport.Exporter`,
    `obsreport.ExporterSettings`, `obsreport.NewExporter`
    - added aliases and temporary methods to replace ^^^
    - removed duplicated Exporter name in new code location:
      - `obsreport.Exporter` -> `exporterhelper.Exporter`
      - `obsreport.ExporterSettings` -> `exporterhelper.Settings`
      - `obsreport.NewExporter` -> `exporterhelper.New`
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
