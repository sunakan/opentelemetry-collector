commit 001d6c3fa2af5c193d5ace25be755698e9d260cf
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Feb 13 10:44:40 2024 -0800

    [chore] [scrapererror] Remove nil check from IsPartialScrapeError (#9555)
    
    Remove the nil check from `IsPartialScrapeError` as redundant,
    `errors.As` has the same condition
