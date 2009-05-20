<!-- /charlie_music.tpl -->
{*
 If you don't plan to any music via Windows Media Player on your web site, 
 change player by the one you want.
Based on documentation from
http://msdn.microsoft.com/library/en-us/wmplay10/mmp_sdk/usingtheplayercontrolinawebpage.asp
*}
<br />
{assign var="main_width" value="`450+$by_style+$by_style`"}
<div id="charlie" style="height: 64px; width:{$main_width}px; padding-top: 55px; margin-top: 40px;">
	<div class="{$curtain}_1" style="padding-left:{$by_style}px;">
		<div class="{$curtain}_2" style="padding-right:{$by_style}px;">
			<object id="MediaPlayer" height="64" width="450" alt="object {$ALT_IMG}"
			  classid="CLSID:22D6f312-B0F6-11D0-94AB-0080C74C7E95"
			  standby="Loading Windows Media Player components..."
			  type="application/x-oleobject"
			  codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=6,4,7,1112">
				  {if ($Charlies.autoplay==1)}<param name="autostart" value="true">{/if}
				  <param name="filename" value="{$SRC_IMG}">
				  {if ($Charlies.showplayer==1)}<param name="showcontrols" value="true">{/if}
			<!--[if !IE]> <-->
			<embed type="application/x-mplayer2" src="{$SRC_IMG}" alt="embed {$ALT_IMG}"
			  name="MediaPlayer" height="64" width="450" {if ($Charlies.showplayer==1)}showcontrols="true"{/if} {if ($Charlies.autoplay==1)}autostart="true"{/if}>
			</embed>
			<!--> <![endif]-->
			</object>
		</div>
	</div>
</div>
{html_head}
<link rel="stylesheet" type="text/css" href="{$CHARLIES_PATH|@cat:'charlies.css'}"> 
{/html_head}