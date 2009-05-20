<!-- /charlie_flvplayer.tpl -->
{*
 If you don't plan to play flv files on your web site,
 change player by the one you want
 Based on documention from http://www.macromedia.com/devnet/flvplayer/
*}
<br />
{assign var="main_width" value="`$fileinfo.video.resolution_x+$by_style+$by_style`"}
<div id="charlie" style="height: {$fileinfo.video.resolution_y}px; width:{$main_width}px; padding-top: 0px; margin-top: 0px;">
	<div class="{$curtain}_1" style="padding-left:{$by_style}px;">
		<div class="{$curtain}_2" style="padding-right:{$by_style}px;">
			<object type="application/x-shockwave-flash" width="{$fileinfo.video.resolution_x}" height="{$fileinfo.video.resolution_y}"
			   data="{$pwg_root}plugins/charlies_content/flvplayer.swf?file={$SRC_IMG}{if ($Charlies.autoplay==1)}&amp;autoStart=true{/if}">
			   <param name="movie" value="{$pwg_root}plugins/charlies_content/flvplayer.swf?file={$SRC_IMG}{if ($Charlies.autoplay==1)}&amp;autoStart=true{/if}" />
			</object>
		</div>
	</div>
</div>
{html_head}
<link rel="stylesheet" type="text/css" href="{$CHARLIES_PATH|@cat:'charlies.css'}"> 
{/html_head}