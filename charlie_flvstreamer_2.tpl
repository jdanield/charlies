<!-- /charlie_flvstreamer.tpl -->
{*
 If you don't plan to play flv files on your web site,
 change player by the one you want
 Based on documention from http://bluebird.univ-reunion.fr/fms/proto/flv-stream-player/
*}
<br />
{if $Charlies.forced_width!=''}{assign var="fileinfo.video.resolution_x" value="`$Charlies.forced_width`"}{/if}
{if $Charlies.forced_height!=''}{assign var="fileinfo.video.resolution_x" value="`$Charlies.forced_height`"}{/if}
{assign var="main_width" value="`$fileinfo.video.resolution_x+$by_style+$by_style`"}

<div id="charlie" style="height: {$fileinfo.video.resolution_y}px; width:{$main_width}px; padding-top: 0px; margin-top: 0px;">
	<div class="{$curtain}_1" style="padding-left:{$by_style}px;">
		<div class="{$curtain}_2" style="padding-right:{$by_style}px;">
			<object type="application/x-shockwave-flash" data="{$pwg_root}plugins/charlies_content/player_flv_maxi.swf" 
				width="{$fileinfo.video.resolution_x}" height="{$fileinfo.video.resolution_y}">
					<param name="movie" value="{$pwg_root}plugins/charlies_content/player_flv_maxi.swf" />
					{if ($Charlies.full==1)}<param name="allowFullScreen" value="true" />{/if}
					<param name="FlashVars" value="flv={$SRC_IMG_ENCODED}{* -
				General options
					*}{if ($Charlies.loop==1)}&amp;loop=1{/if}{* -
					*}{if ($Charlies.autoload==1)}&amp;autoload=1{/if}{* -
					*}{if ($Charlies.autoplay==1)}&amp;autoplay=1{/if}{* -
					*}{if ($Charlies.full==1)}&amp;showfullscreen=1{/if}{* -
					*}{if $Charlies.forced_width!=''}&amp;width={$Charlies.forced_width}{/if}{* -
					*}{if $Charlies.forced_height!=''}&amp;height={$Charlies.forced_height}{/if}{* -
					*}{if ($Charlies.volume!='')}&amp;volume={$Charlies.volume}{/if}{* -
					*}{if ($Charlies.onclick!='')}&amp;onclick={$Charlies.onclick}{/if}{* -
					*}{if ($Charlies.onclicktarget==1)}&amp;onclicktarget=_blank{/if}{* -
					*}{if ($Charlies.ondoubleclick!='')}&amp;ondoubleclick={$Charlies.ondoubleclick}{/if}{* -
					*}{if ($Charlies.ondoubleclicktarget==1)}&amp;ondoubleclicktarget=_blank{/if}{* -
				Buffering
					*}{if $Charlies.buffer!=''}&amp;buffer={$Charlies.buffer}{/if}{* -
					*}{if ($Charlies.buffermessage==1)}&amp;buffermessage=1&amp;buffercolor={$Charlies.color5|substr:1}{/if}{* -
					*}{if ($Charlies.buffershowbg==1)}&amp;buffershowbg=1&amp;bufferbgcolor={$Charlies.color6|substr:1}{/if}{* -
				Config by element
					*}{if ($Charlies.config==1)}&amp;config={$SRC_IMG_ENCODED|substr:0:-3}txt{/if}{* -
					*}{if ($Charlies.configxml==1)}&amp;configxml={$SRC_IMG_ENCODED|substr:0:-3}xml{/if}{* -
				Skin
					*}{if $Charlies.margin!=''}&amp;margin={$Charlies.margin}{/if}{* -
					*}{if $Charlies.skin!=''}&amp;skin={$Charlies.skin}{/if}{* -
				Titleling
					*}{if $Charlies.title!=''}&amp;title={$Charlies.title}&amp;titlecolor={$Charlies.color7|substr:1}{/if}{* -
					*}{if $Charlies.titlesize!=''}&amp;titlesize={$Charlies.titlesize}{/if}{* -
					*}{if $Charlies.start_image!=''}&amp;startimage={$Charlies.start_image}{/if}{* -
					*}{if ($Charlies.showtitleandstartimage==1)}&amp;showtitleandstartimage=1{/if}{* -
					*}{if ($Charlies.showiconplay==1)}&amp;showiconplay=1{/if}{* -
					*}{if ($Charlies.iconplaybgalpha!='')}&amp;iconplaybgalpha={$Charlies.iconplaybgalpha}{/if}{* -
					*}{if ($Charlies.top1!='')}&amp;top1={$Charlies.top1}{/if}{* -
				Subtitleling
					*}{if ($Charlies.srt==1)}&amp;srt=1&amp;srtcolor={$Charlies.color8|substr:1}{* -
					*}&amp;srtcolor={$Charlies.color9|substr:1}{/if}{* -
					*}{if ($Charlies.srtsize!='')}&amp;srtsize={$Charlies.srtsize}{/if}{* -
					*}{if ($Charlies.srturl!='')}&amp;srturl={$Charlies.srturl}{/if}{* -
				Player and Buttons
					*}{if ($Charlies.showplayer==1)}&amp;showplayer=autohide{/if}{* -
					*}{if ($Charlies.showplayer==2)}&amp;showplayer=always{/if}{* -
					*}{if ($Charlies.showplayer==0)}&amp;showplayer=never{/if}{* -
					*}{if ($Charlies.showloading==1)}&amp;showloading=autohide{/if}{* -
					*}{if ($Charlies.showloading==2)}&amp;showloading=always{/if}{* -
					*}{if ($Charlies.showloading==0)}&amp;showloading=never{/if}{* -
					*}{if ($Charlies.showmouse==1)}&amp;showmouse=autohide{/if}{* -
					*}{if ($Charlies.showmouse==2)}&amp;showmouse=always{/if}{* -
					*}{if ($Charlies.showmouse==0)}&amp;showmouse=never{/if}{* -
					*}{if ($Charlies.showtime>0)}&amp;showtime={$Charlies.showtime}{/if}{* -
					*}{if ($Charlies.playeralpha!='')}&amp;playeralpha={$Charlies.playeralpha}{/if}{* -
					*}{if isset($Charlies.playertimeout)}&amp;playertimeout={$Charlies.playertimeout}{/if}{* -
					*}{if ($Charlies.showstop==1)}&amp;showstop=1{/if}{* -
					*}{if ($Charlies.showvolume==1)}&amp;showvolume=1{/if}{* -
					*}{if ($Charlies.showswitchsubtitles==1)}&amp;showswitchsubtitles=1{/if}{* -
					*}{if $Charlies.loadonstop==1}&amp;loadonstop=1{/if}{* -
					*}{if ($Charlies.shortcut!='')}&amp;shortcut={$Charlies.shortcut}{/if}{* -
				Miscellaneous
					*}{if ($Charlies.phpstream==1)}&amp;phpstream=1{/if}{* -
					*}{if ($Charlies.netconnection!='')}&amp;netconnection={$Charlies.netconnection}{/if}{* -
				Colors
					*}&amp;bgcolor={$Charlies.color0|substr:1}{* -
					*}&amp;bgcolor1={$Charlies.color1|substr:1}{* -
					*}&amp;bgcolor2={$Charlies.color2|substr:1}{* -
					*}&amp;buttoncolor={$Charlies.color3|substr:1}{* -
					*}&amp;buttonovercolor={$Charlies.color4|substr:1}{* -
					*}&amp;playercolor={$Charlies.color10|substr:1}{* -
					*}&amp;loadingcolor={$Charlies.color11|substr:1}{* -
					*}&amp;slidercolor1={$Charlies.color12|substr:1}{* -
					*}&amp;slidercolor2={$Charlies.color13|substr:1}{* -
					*}&amp;sliderovercolor={$Charlies.color14|substr:1}{* -
					*}&amp;videobgcolor={$Charlies.color0|substr:1}{* -
					*}&amp;iconplaycolor={$Charlies.color15|substr:1}{* -
					*}&amp;iconplaybgcolor={$Charlies.color16|substr:1}" />
			</object>
		</div>
	</div>
</div>
{html_head}
<link rel="stylesheet" type="text/css" href="{$CHARLIES_PATH|@cat:'charlies.css'}"> 
{/html_head}