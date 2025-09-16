  Formate issues : 

 1.  old data formate

```xml
  <OtherTag ID="BT7" LABEL="CustomZone" DESCRIPTION="block type CustomZone"/>
  <OtherTag ID="BT8" LABEL="DamageZone" DESCRIPTION="block type DamageZone"/>
  <OtherTag ID="BT9" LABEL="DigitizationArtefactZone" DESCRIPTION="block type DigitizationArtefactZone"/>
  <OtherTag ID="BT10" LABEL="DropCapitalZone" DESCRIPTION="block type DropCapitalZone"/>
  <OtherTag ID="BT11" LABEL="GraphicZone" DESCRIPTION="block type GraphicZone"/>
  <OtherTag ID="BT12" LABEL="MainZone" DESCRIPTION="block type MainZone"/>
  <OtherTag ID="BT13" LABEL="MarginTextZone" DESCRIPTION="block type MarginTextZone"/>
  <OtherTag ID="BT14" LABEL="MusicZone" DESCRIPTION="block type MusicZone"/>
  <OtherTag ID="BT15" LABEL="NumberingZone" DESCRIPTION="block type NumberingZone"/>
  <OtherTag ID="BT17" LABEL="QuireMarksZone" DESCRIPTION="block type QuireMarksZone"/>
  <OtherTag ID="BT18" LABEL="RunningTitleZone" DESCRIPTION="block type RunningTitleZone"/>
  <OtherTag ID="BT19" LABEL="SealZone" DESCRIPTION="block type SealZone"/>
  <OtherTag ID="BT20" LABEL="StampZone" DESCRIPTION="block type StampZone"/>
  <OtherTag ID="BT21" LABEL="TableZone" DESCRIPTION="block type TableZone"/>
  <OtherTag ID="BT22" LABEL="TitlePageZone" DESCRIPTION="block type TitlePageZone"/>
  <OtherTag ID="BT1851" LABEL="MainZone-P" DESCRIPTION="block type MainZone-P"/>
  <OtherTag ID="BT1852" LABEL="MainZone-Head" DESCRIPTION="block type MainZone-Head"/>
  <OtherTag ID="BT1853" LABEL="MainZone-P-Continued" DESCRIPTION="block type MainZone-P-Continued"/>
  <OtherTag ID="BT1854" LABEL="MarginTextZone-ManuscriptAddendum" DESCRIPTION="block type MarginTextZone-ManuscriptAddendum"/>
  <OtherTag ID="BT1855" LABEL="text" DESCRIPTION="block type text"/>
  <OtherTag ID="BT1856" LABEL="MainZone-Entry" DESCRIPTION="block type MainZone-Entry"/>
  <OtherTag ID="BT1857" LABEL="MainZone-Entry-Continued" DESCRIPTION="block type MainZone-Entry-Continued"/>
  <OtherTag ID="BT1877" LABEL="GraphicZone-Decoration" DESCRIPTION="block type GraphicZone-Decoration"/>
  <OtherTag ID="BT1894" LABEL="MainZone-Other" DESCRIPTION="block type MainZone-Other"/>
    
  <OtherTag ID="LT7" LABEL="CustomLine" DESCRIPTION="line type CustomLine"/>
  <OtherTag ID="LT8" LABEL="DefaultLine" DESCRIPTION="line type DefaultLine"/>
  <OtherTag ID="LT9" LABEL="DropCapitalLine" DESCRIPTION="line type DropCapitalLine"/>
  <OtherTag ID="LT10" LABEL="HeadingLine" DESCRIPTION="line type HeadingLine"/>
  <OtherTag ID="LT11" LABEL="InterlinearLine" DESCRIPTION="line type InterlinearLine"/>
  <OtherTag ID="LT12" LABEL="MusicLine" DESCRIPTION="line type MusicLine"/>
  <OtherTag ID="LT636" LABEL="default" DESCRIPTION="line type default"/>
  ```

  2.  new formate : 

  ```xml
<OtherTag ID="BT100001" LABEL="MainZone-Head" DESCRIPTION="block type MainZone-Head"/>
<OtherTag ID="BT100002" LABEL="MainZone-Lg" DESCRIPTION="block type MainZone-Lg"/>
<OtherTag ID="BT100003" LABEL="MainZone-Signature" DESCRIPTION="block type MainZone-Signature"/>
<OtherTag ID="BT100004" LABEL="GraphicZone-Decoration" DESCRIPTION="block type GraphicZone-Decoration"/>
<OtherTag ID="BT100005" LABEL="MainZone-P" DESCRIPTION="block type MainZone-P"/>
<OtherTag ID="BT100006" LABEL="MainZone-Continued" DESCRIPTION="block type MainZone-Continued"/>
<OtherTag ID="BT100007" LABEL="MarginTextZone-ManuscriptAddendum" DESCRIPTION="block type MarginTextZone-ManuscriptAddendum"/>
<OtherTag ID="BT100008" LABEL="MainZone-Sp" DESCRIPTION="block type MainZone-Sp"/>
<OtherTag ID="BT100009" LABEL="MarginTextZone-Notes" DESCRIPTION="block type MarginTextZone-Notes"/>
<OtherTag ID="BT100010" LABEL="MainZone-Other" DESCRIPTION="block type MainZone-Other"/>
<OtherTag ID="BT100011" LABEL="MainZone-Entry" DESCRIPTION="block type MainZone-Entry"/>

  ```
1. Problem list 
- LABEL for MainZone-P-Continued change in MainZone-Continued
- add : 
<OtherTag ID="BT100002" LABEL="MainZone-Lg" DESCRIPTION="block type MainZone-Lg"/> 
<OtherTag ID="BT100003" LABEL="MainZone-Signature" DESCRIPTION="block type MainZone-Signature"/>;
<OtherTag ID="BT100009" LABEL="MarginTextZone-Notes" DESCRIPTION="block type MarginTextZone-Notes"/>



solution : python script  ?
premier essaie en corrigeant slmt le nom de la MainZone-P-Continued en MainZone-P
