<!-- /charlie_mp3player.tpl -->
{*
 If you don't plan to play flv files on your web site,
 change player by the one you want
 Based on documention from http://www.macromedia.com/devnet/flvplayer/
*}
<br />
{assign var="main_width" value="`$by_style+$by_style+200`"}
<div id="charlie" style="height: 64px; width:{$main_width}px; padding-top: 0px; margin-top: 0px;">
	<div class="{$curtain}_1" style="padding-left:{$by_style}px;">
		<div class="{$curtain}_2" style="padding-right:{$by_style}px;height: 64px;min-height: 64px;">
			<object type="application/x-shockwave-flash" width="200" height="20" style="margin-top: 22px;"
			    data="{$pwg_root}plugins/charlies_content/dewplayer.swf?son={$SRC_IMG}{* -
					*}{if ($Charlies.autoplay==1)}&amp;autostart=1{/if}&amp;bgcolor={$Charlies.color0|substr:1}&amp;volume={$Charlies.volume}">
			    <param name="movie" value="{$pwg_root}plugins/charlies_content/dewplayer.swf?son={$SRC_IMG_ENCODED}{* -
					*}{if ($Charlies.autoplay==1)}&amp;autostart=1{/if}&amp;bgcolor={$Charlies.color0|substr:1}&amp;volume={$Charlies.volume}">
			</object> 
		</div>
	</div>
</div>
{html_head}
<link rel="stylesheet" type="text/css" href="{$CHARLIES_PATH|@cat:'charlies.css'}"> 
{/html_head}