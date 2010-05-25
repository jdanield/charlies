<div class="titrePage">
	<h2>Charlies' content [{$Charlies.version}]</h2>
</div>

<form method="post" action="" class="Charlies properties{if !empty($themeconf.name)} {$themeconf.name}{/if}{if !empty($themeconf.id)} {$themeconf.id}{/if}">

{if $page == 'templates'}
<script type="text/javascript">
jQuery().ready(function(){ldelim}
  jQuery('.charlie-tlp').accordion();
});
</script>
<fieldset>
<legend>{'Charlies player template-mimetype association'|@translate}</legend>
	<div class="charlie-tlp">
		{foreach from=$players item=player name=player}
		<a href="#" class="xl">charlie_{$player.name|@strtolower}.tpl</a>
		<div>
			<table class="checking" summary="Extensions and templates">
				<tr>
				{foreach from=$extensions item=extension name=extension}
				{if ($smarty.foreach.extension.index - 1) % 10 == 9}</tr><tr>{/if}
				<td>
					<input id="{$player.name}-{$smarty.foreach.extension.iteration}" type="checkbox" 
					{if in_array($extension, $player.ext)} checked {/if} value="{$extension}" name="{$player.name}[]"/> {$extension} 
				</td>
				{/foreach}
				</tr>
			</table>
		</div>
		{/foreach}
	</div>
<input type="submit" value="{'Save Charlies\' configuration'|@translate}" name="submit" class="submit"/>
	<p class="bot">[ {'Bind your prefered extensions to a template file (player) from:'|@translate} {$CHARLIES_PATH} ]<br />
	[ {'Note: These options are available with the Maxi FLV Player. More details on all theses options on:'|@translate} 
	<a class="external" href="http://flv-player.net/en/players/maxi/documentation/" title="Documentation">FLV Player</a> (neolao production). ]</p>
	<div><input type="hidden" name="from" value="templates" /></div>
{/if}

{if $page == 'options'}
<fieldset>
	<legend>{'Charlies players configuration'|@translate}</legend>

	<div id="main-options">
	<ul>
		<li><a class="nlink" href="#fgeneral">{'General options'|@translate}</a></li>
		<li><a class="nlink" href="#fbuffer">{'Buffering'|@translate}</a></li>
		<li><a class="nlink" href="#felement">{'Config by element'|@translate}</a></li>
		<li><a class="nlink" href="#fskin">{'Skin'|@translate}</a></li>
		<li><a class="nlink" href="#ftitle">{'Titleling'|@translate}</a></li>
		<li><a class="nlink" href="#fsubtitle">{'Subtitleling'|@translate}</a></li>
		<li><a class="nlink" href="#fplayer">{'Player and Buttons'|@translate}</a></li>
		<li><a class="nlink" href="#fmiscel">{'Miscellaneous'|@translate}</a></li>
	</ul>
 </div>
	<div class="none" id="fgeneral">
	<ul>
		<li><table summary="General player options" style="width:100%;"><tr><td style="width:24.5%;">
			<span class="property">{'Autoload'|@translate}</span>
			<input type="radio" value="1" name="autoload" {if ($Charlies.autoload==1)} checked="checked" {/if} title="{'Display first picture'|@translate}" />{'On'|@translate}
			<input type="radio" value="0" name="autoload" {if ($Charlies.autoload==0)} checked="checked" {/if}/>{'Off'|@translate}
		</td>
		<td style="width:24.5%;">
			<span class="property">{'Autoplay'|@translate}</span>
			<input type="radio" value="1" name="autoplay" {if ($Charlies.autoplay==1)} checked="checked" {/if}/>{'On'|@translate}
			<input type="radio" value="0" name="autoplay" {if ($Charlies.autoplay==0)} checked="checked" {/if}/>{'Off'|@translate}
		</td>
		<td style="width:24.5%;">
			<span class="property">{'Loop'|@translate}</span>
			<input type="radio" value="1" name="loop" {if ($Charlies.loop==1)} checked="checked" {/if}/>{'On'|@translate}
			<input type="radio" value="0" name="loop" {if ($Charlies.loop==0)} checked="checked" {/if}/>{'Off'|@translate}
		</td>
		<td style="width:24.5%;">
			<span class="property">{'Fullscreen'|@translate}</span>
			<input type="radio" value="1" name="full" {if ($Charlies.full==1)} checked="checked" {/if} title="{'Flash Player 9.0.16.60 or above is required.'|@translate}"/>{'On'|@translate}
			<input type="radio" value="0" name="full" {if ($Charlies.full==0)} checked="checked" {/if}/>{'Off'|@translate}
		</td><td style="width:210px;"></td></tr></table></li>
		<li>
			<span class="property">{'Forced video width'|@translate}</span>
			<input type="text" id="forced_width" name="forced_width" value="{$Charlies.forced_width}" />
		</li>
		<li>
			<span class="property">{'Forced video height'|@translate}</span>
			<input type="text" id="forced_height" name="forced_height" value="{$Charlies.forced_height}" />
		</li>
		<li>
			<span class="property">{'Video default width'|@translate}</span>
			<input type="text" id="video_default_width" name="video_default_width" value="{$Charlies.video_default_width}" />
		</li>
		<li>
			<span class="property">{'Video default height'|@translate}</span>
			<input type="text" id="video_default_height" name="video_default_height" value="{$Charlies.video_default_height}" />
		</li>
		<li>
			<span class="property">{'Volume [0-200]'|@translate}</span>
			<input type="text" id="volume" maxlength="3" size="8" name="volume" value="{$Charlies.volume}" />
		</li>
		<li>
			<p class="property" style="text-align:center; width:100%;">{'Onclick URL'|@translate} <span style="font-weight:normal;font-size:0.8;font-style:italic;">{'or fullscreen or playpause or none'|@translate}</span><br />
			<input type="text" size="80" id="onclick" name="onclick" value="{$Charlies.onclick}" />
			<input type="radio" value="1" name="onclicktarget" {if ($Charlies.onclicktarget==1)} checked="checked" {/if}/>{'_blank'|@translate}
			<input type="radio" value="0" name="onclicktarget" {if ($Charlies.onclicktarget==0)} checked="checked" {/if}/>{'_self'|@translate}
			</p>
		</li>
		<li>
			<p class="property" style="text-align:center; width:100%;">{'On doubleclick URL'|@translate} <span style="font-weight:normal;font-size:0.8;font-style:italic;">{'or fullscreen or playpause or none'|@translate}</span><br />
			<input type="text" size="80" id="ondoubleclick" name="ondoubleclick" value="{$Charlies.ondoubleclick}" />
			<input type="radio" value="1" name="ondoubleclicktarget" {if ($Charlies.ondoubleclicktarget==1)} checked="checked" {/if}/>{'_blank'|@translate}
			<input type="radio" value="0" name="ondoubleclicktarget" {if ($Charlies.ondoubleclicktarget==0)} checked="checked" {/if}/>{'_self'|@translate}
			</p>
		</li>
	</ul>
	</div>

	<div class="none" id="fbuffer">
	<ul>
		<li>
			<span class="property">{'Video buffer size in seconds'|@translate}</span>
			<input type="text" id="buffer" maxlength="3" size="8" name="buffer" value="{$Charlies.buffer}" title="{'Default 5 seconds.'|@translate}" />
		</li>
		<li>
			<span class="property">{'Video buffer percent message'|@translate}</span>
			<input type="text" size="32" id="buffermessage" name="buffermessage" value="{$Charlies.buffermessage}" title="{'Buffering _n_'|@translate}" />
		</li>
		<li>
			<span class="property">{'Video buffer background'|@translate}</span>
			<input type="radio" value="1" name="buffershowbg" {if ($Charlies.buffershowbg==1)} checked="checked" {/if}/>{'On'|@translate}
			<input type="radio" value="0" name="buffershowbg" {if ($Charlies.buffershowbg==0)} checked="checked" {/if}/>{'Off'|@translate}
		</li>
	</ul>
	</div>

	<div class="none" id="felement">
	<ul>
		<li>
			<span class="property">{'Use existing .txt to config'|@translate}</span>
			<input type="radio" value="1" name="config" {if ($Charlies.config==1)} checked="checked" {/if} title="{'Filename.txt might be use as config.txt file'|@translate}" />{'On'|@translate}
			<input type="radio" value="0" name="config" {if ($Charlies.config==0)} checked="checked" {/if}/>{'Off'|@translate}
		</li>
		<li>
			<span class="property">{'Use existing .xml to config'|@translate}</span>
			<input type="radio" value="1" name="configxml" {if ($Charlies.configxml==1)} checked="checked" {/if} title="{'Filename.xml might be use as config.xml file'|@translate}" />{'On'|@translate}
			<input type="radio" value="0" name="configxml" {if ($Charlies.configxml==0)} checked="checked" {/if}/>{'Off'|@translate}
		</li>
	</ul>
	</div>

	<div class="none" id="fskin">
	<ul>
		<li>
			<span class="property">{'Margin for skin'|@translate}</span>
			<input type="text" id="margin" maxlength="2" size="8" name="margin" value="{$Charlies.margin}" />
		</li>
		<li>
			<p class="property" style="text-align:center; width:100%;">{'Skin image'|@translate} <span style="font-weight:normal;font-size:0.8;font-style:italic;">{'(URL of a non progressive jpg)'|@translate}</span><br />
			<input type="text" size="80" id="skin" name="skin" value="{$Charlies.skin}" /></p>
		</li>
	</ul>
	</div>

	<div class="none" id="ftitle">
	<ul>
		<li>
			<span class="property">{'Title'|@translate}</span>
			<input type="text" id="title" maxlength="32" size="32" name="title" value="{$Charlies.title|@stripslashes}" />
		</li>
		<li>
			<span class="property">{'Title font size [12-72]'|@translate}</span>
			<input type="text" id="titlesize" maxlength="2" size="8" name="titlesize" value="{$Charlies.titlesize}" title="{'Default size might be 20.'|@translate}" />
		</li>
		<li>
			<p class="property" style="text-align:center; width:100%;">{'Start image'|@translate} <span style="font-weight:normal;font-size:0.8;font-style:italic;">{'(URL of a non progressive jpg)'|@translate}</span><br />
			<input type="text" size="80" id="start_image" name="start_image" value="{$Charlies.start_image}" /></p>
		</li>
		<li>
			<span class="property">{'Title and start picture'|@translate}</span>
			<input type="radio" value="1" name="showtitleandstartimage" {if ($Charlies.showtitleandstartimage==1)} checked="checked" {/if}/>{'On'|@translate}
			<input type="radio" value="0" name="showtitleandstartimage" {if ($Charlies.showtitleandstartimage==0)} checked="checked" {/if}/>{'Off'|@translate}
		</li>
		<li>
			<span class="property">{'Play icon in middle'|@translate}</span>
			<input type="radio" value="1" name="showiconplay" {if ($Charlies.showiconplay==1)} checked="checked" {/if}/>{'On'|@translate}
			<input type="radio" value="0" name="showiconplay" {if ($Charlies.showiconplay==0)} checked="checked" {/if}/>{'Off'|@translate}
		</li>
		<li>
			<span class="property">{'Play icon transparency [0-100]'|@translate}</span>
			<input type="text" id="iconplaybgalpha" maxlength="3" size="8" name="iconplaybgalpha" value="{$Charlies.iconplaybgalpha}" />
		</li>
		<li>
			<p class="property" style="text-align:center; width:100%;">{'Load an image over video'|@translate} <span style="font-weight:normal;font-size:0.8;font-style:italic;">{'(URL|x|y : where x,y are the offsets to place the picture)'|@translate}</span><br />
			<input type="text" size="80" id="top1" name="top1" value="{$Charlies.top1}" /></p>
		</li>
	</ul>
	</div>

	<div class="none" id="fsubtitle">
	<ul>
		<li>
			<span class="property">{'Use subtitles'|@translate}</span>
			<input type="radio" value="1" name="srt" {if ($Charlies.srt==1)} checked="checked" {/if} title="{'Filename.srt might be use for captioning'|@translate}" />{'On'|@translate}
			<input type="radio" value="0" name="srt" {if ($Charlies.srt==0)} checked="checked" {/if}/>{'Off'|@translate}
		</li>
		<li>
			<span class="property">{'Subtitles font size [8-24]'|@translate}</span>
			<input type="text" id="srtsize" maxlength="2" size="8" name="srtsize" value="{$Charlies.srtsize}" title="{'Default size might be 11.'|@translate}" />
		</li>
		<li>
			<p class="property" style="text-align:center; width:100%;">{'Subtitles file URL'|@translate} <span style="font-weight:normal;font-size:0.8;font-style:italic;">{'(URL of .srt)'|@translate}</span><br />
			<input type="text" size="80" id="srturl" name="srturl" value="{$Charlies.srturl}" /></p>
		</li>
	</ul>
	</div>

	<div class="none" id="fplayer">
	<ul>
		<li>
			<span class="property">{'Show player'|@translate}</span>
			<input type="radio" value="1" name="showplayer" {if ($Charlies.showplayer==1)} checked="checked" {/if}/>{'Autohide'|@translate}
			<input type="radio" value="2" name="showplayer" {if ($Charlies.showplayer==2)} checked="checked" {/if}/>{'Always'|@translate}
			<input type="radio" value="0" name="showplayer" {if ($Charlies.showplayer==0)} checked="checked" {/if}/>{'Never'|@translate}
		</li>
		<li>
			<span class="property">{'Show loading'|@translate}</span>
			<input type="radio" value="1" name="showloading" {if ($Charlies.showloading==1)} checked="checked" {/if}/>{'Autohide'|@translate}
			<input type="radio" value="2" name="showloading" {if ($Charlies.showloading==2)} checked="checked" {/if}/>{'Always'|@translate}
			<input type="radio" value="0" name="showloading" {if ($Charlies.showloading==0)} checked="checked" {/if}/>{'Never'|@translate}
		</li>
		<li>
			<span class="property">{'Show mouse'|@translate}</span>
			<input type="radio" value="1" name="showmouse" {if ($Charlies.showmouse==1)} checked="checked" {/if}/>{'Autohide'|@translate}
			<input type="radio" value="2" name="showmouse" {if ($Charlies.showmouse==2)} checked="checked" {/if}/>{'Always'|@translate}
			<input type="radio" value="0" name="showmouse" {if ($Charlies.showmouse==0)} checked="checked" {/if}/>{'Never'|@translate}
		</li>
		<li>
			<span class="property">{'Show time'|@translate}</span>
			<input type="radio" value="1" name="showtime" {if ($Charlies.showtime==1)} checked="checked" {/if}/>{'On'|@translate}
			<input type="radio" value="2" name="showtime" {if ($Charlies.showtime==2)} checked="checked" {/if}/>{'Time left'|@translate}
			<input type="radio" value="0" name="showtime" {if ($Charlies.showtime==0)} checked="checked" {/if}/>{'Off'|@translate}
		</li>
		<li>
			<span class="property">{'Player transparency [0-100]'|@translate}</span>
			<input type="text" id="playeralpha" maxlength="3" size="8" name="playeralpha" value="{$Charlies.playeralpha}" />
		</li>
		<li>
			<span class="property">{'Autohide delay [0-9999]'|@translate}</span>
			<input type="text" id="playertimeout" maxlength="4" size="8" name="playertimeout" value="{$Charlies.playertimeout}" title="{'Default 1500 milliseconds.'|@translate}" />
		</li>
		<li><table summary="Stop and volume"><tr><td style="width:285px;">
			<span class="property">{'Show stop button'|@translate}</span>
			<input type="radio" value="1" name="showstop" {if ($Charlies.showstop==1)} checked="checked" {/if}/>{'On'|@translate}
			<input type="radio" value="0" name="showstop" {if ($Charlies.showstop==0)} checked="checked" {/if}/>{'Off'|@translate}
		</td >
		<td style="width:285px;">
			<span class="property">{'Show volume'|@translate}</span>
			<input type="radio" value="1" name="showvolume" {if ($Charlies.showvolume==1)} checked="checked" {/if}/>{'On'|@translate}
			<input type="radio" value="0" name="showvolume" {if ($Charlies.showvolume==0)} checked="checked" {/if}/>{'Off'|@translate}
		</td></tr></table>
		<li><table summary="Subtitles and stop loading"><tr><td style="width:285px;">
			<span class="property">{'Show subtitles switch'|@translate}</span>
			<input type="radio" value="1" name="showswitchsubtitles" {if ($Charlies.showswitchsubtitles==1)} checked="checked" {/if}/>{'On'|@translate}
			<input type="radio" value="0" name="showswitchsubtitles" {if ($Charlies.showswitchsubtitles==0)} checked="checked" {/if}/>{'Off'|@translate}
		</td>
		<td style="width:285px;">
			<span class="property">{'Stop stops loading'|@translate}</span>
			<input type="radio" value="1" name="loadonstop" {if ($Charlies.loadonstop==1)} checked="checked" {/if}/>{'On'|@translate}
			<input type="radio" value="0" name="loadonstop" {if ($Charlies.loadonstop==0)} checked="checked" {/if}/>{'Off'|@translate}
		</td>
		<td style="width:285px;">
			<span class="property">{'Keyboard shortcuts'|@translate}</span>
			<input type="radio" value="1" name="shortcut" {if ($Charlies.shortcut==1)} checked="checked" {/if}/>{'On'|@translate}
			<input type="radio" value="0" name="shortcut" {if ($Charlies.shortcut==0)} checked="checked" {/if}/>{'Off'|@translate}
		</td></tr></table>
	</ul>
	</div>

	<div class="none" id="fmiscel">
	<ul>
		<li>
			<span class="property">{'PHP streaming'|@translate}</span>
			<input type="radio" value="1" name="phpstream" {if ($Charlies.phpstream==1)} checked="checked" {/if}/>{'On'|@translate}
			<input type="radio" value="0" name="phpstream" {if ($Charlies.phpstream==0)} checked="checked" {/if}/>{'Off'|@translate}
		</li>
		<li>
			<p class="property" style="text-align:center; width:100%;">{'RTMP server URL'|@translate} <span style="font-weight:normal;font-size:0.8;font-style:italic;">{'(Adobe Systems for streaming audio, video and data)'|@translate}</span><br />
			<input type="text" size="80" id="netconnection" name="netconnection" value="{$Charlies.netconnection}" /></p>
		</li>
	</ul>
	</div>
<input type="submit" value="{'Save Charlies\' configuration'|@translate}" name="submit" class="submit"/><br />
<input type="submit" value="{'Reset ALL Charlies\' configuration'|@translate}" name="reset" class="submit" onclick="return confirm('{'Reset ALL Confirmation'|@translate|@escape:javascript}');"/>
	<p class="bot">[ {'FYI: all these options might be used or NOT by the inbound player (template).'|@translate} ]<br />
	[ {'Note: These options are available with the Maxi FLV Player. More details on all theses options on:'|@translate} 
	<a class="external" href="http://flv-player.net/en/players/maxi/documentation/" title="Documentation">FLV Player</a> (neolao production). ]</p>
	<div><input type="hidden" name="from" value="options" /></div>

{literal}
<script type="text/javascript">
  jQuery(document).ready(function(){
    jQuery("#main-options").tabs();
  });
</script>
{/literal}

{/if}

{if $page == 'colors'}
<fieldset>
	<legend>{'Players colours selection '|@translate}</legend>
	<table class="checking" summary="Color weel">
	<tr><td style="padding-right:20px;">{'Background'|@translate}</td><td><input type="text" id="color0" name="color0" class="colorwell" value="{$Charlies.color0}" />
	</td><td rowspan="9" style="padding: 0 40px;"><div id="picker" style="float: right;"></div></td>
	<td><input type="text" id="color9" name="color9" class="colorwell" value="{$Charlies.color9}" /></td><td>{'Subtitles background'|@translate}</td>
	</tr><tr><td style="padding-right:20px;">
	  {'Top border fading'|@translate}
	</td><td>
	  <input type="text" id="color1" name="color1" class="colorwell" value="{$Charlies.color1}" />
	</td><td>
	  <input type="text" id="color10" name="color10" class="colorwell" value="{$Charlies.color10}" />
	</td><td>
	{'Player'|@translate}
	</td></tr><tr><td style="padding-right:20px;">
	  {'Bottom border fading'|@translate}
	</td><td>
	  <input type="text" id="color2" name="color2" class="colorwell" value="{$Charlies.color2}" />
	</td><td>
	  <input type="text" id="color11" name="color11" class="colorwell" value="{$Charlies.color11}" />
	</td><td>
	  {'Loading bar'|@translate}
	</td></tr><tr><td style="padding-right:20px;">
		{'Player buttons'|@translate}
	</td><td>
	  <input type="text" id="color3" name="color3" class="colorwell" value="{$Charlies.color3}" />
	</td><td>
	  <input type="text" id="color12" name="color12" class="colorwell" value="{$Charlies.color12}" />
	</td><td>
	  {'Leftbar gradient fading'|@translate}
	</td></tr><tr><td style="padding-right:20px;">
	  {'Hover player buttons'|@translate}
	</td><td>
	  <input type="text" id="color4" name="color4" class="colorwell" value="{$Charlies.color4}" />
	</td><td>
	  <input type="text" id="color13" name="color13" class="colorwell" value="{$Charlies.color13}" />
	</td><td>
	  {'Rightbar gradient fading'|@translate}
	</td></tr><tr><td style="padding-right:20px;">
	  {'Buffer'|@translate}
	</td><td>
	  <input type="text" id="color5" name="color5" class="colorwell" value="{$Charlies.color5}" />
	</td><td>
	  <input type="text" id="color14" name="color14" class="colorwell" value="{$Charlies.color14}" />
	</td><td>
	  {'Hover bar gradient'|@translate}
	</td></tr><tr><td style="padding-right:20px;">
	  {'Buffer background'|@translate}
	</td><td>
	  <input type="text" id="color6" name="color6" class="colorwell" value="{$Charlies.color6}" />
	</td><td>
	  <input type="text" id="color15" name="color15" class="colorwell" value="{$Charlies.color15}" />
	</td><td>
	{'Play icon'|@translate}
	</td></tr><tr><td style="padding-right:20px;">
	  {'Title'|@translate}
	</td><td>
	  <input type="text" id="color7" name="color7" class="colorwell" value="{$Charlies.color7}" />
	</td><td>
	  <input type="text" id="color16" name="color16" class="colorwell" value="{$Charlies.color16}" />
	</td><td>
	  {'Play icon background'|@translate}
	</td></tr><tr><td style="padding-right:20px;">
	  {'Subtitles'|@translate}
	</td><td>
	  <input type="text" id="color8" name="color8" class="colorwell" value="{$Charlies.color8}" />
	</td></tr>
	</table>
<input type="submit" value="{'Save Charlies\' configuration'|@translate}" name="submit" class="submit"/>
	<p class="bot">[ {'Color usage might be just for information (Players could just ignore them or use them differently).'|@translate} ]<br />
	[ {'Note: These options are available with the Maxi FLV Player. More details on all theses options on:'|@translate} 
	<a class="external" href="http://flv-player.net/en/players/maxi/documentation/" title="Documentation">FLV Player</a> (neolao production). ]</p>
	<div><input type="hidden" name="from" value="colors" /></div>

{literal}
<script type="text/javascript">
  jQuery(document).ready(function() {
    var f = $.farbtastic('#picker');
    var p = $('#picker').css('opacity', 1);
    var selected;
    jQuery('.colorwell')
      .each(function () { f.linkTo(this); $(this).css('opacity', 0.50); })
      .focus(function() {
        if (selected) {
          jQuery(selected).css('opacity', 0.90).removeClass('colorwell-selected');
        }
        f.linkTo(this);
        p.css('opacity', 1);
        jQuery(selected = this).css('opacity', 1).addClass('colorwell-selected');
      });
  });
</script>
{/literal}
{/if}

{if $page == 'curtain'}
<fieldset id="theImage">
	<legend>{'Active curtains'|@translate}</legend>
	<div id="charlie">
		<table summary="Curtain choice">
		<tr>
		{foreach from=$curtains item=curtain name=curtain}
		{if ($smarty.foreach.curtain.index % 3) == 0 and $smarty.foreach.curtain.index > 0 and $smarty.foreach.curtain.index < 18}</tr><tr>{/if}
		<td class="{$curtain}_1 curtain_l">&nbsp;</td>
		<td {if $smarty.foreach.curtain.index < 18}class="input{if $smarty.foreach.curtain.index > 14} i15{/if}"{else}class="none"{/if}>
		<input type="radio" value="{$curtain}" name="curtain" {if ($curtain == $Charlies.curtain)} checked="checked" {/if}/> {$curtain}</td>
		<td class="{$curtain}_2 curtain_r">&nbsp;</td>
		{if $smarty.foreach.curtain.index < 18}<td class="padd">&nbsp;</td>{/if}
		{/foreach}</tr>
		</table>
	</div>
<input type="submit" value="{'Save Charlies\' configuration'|@translate}" name="submit" class="submit"/>
	<p class="bot">[ {'.png without transparency are recommended. Maybe you can change a set of curtains by yours.'|@translate} ]<br />
	[ {'Note: These options are available with the Maxi FLV Player. More details on all theses options on:'|@translate} 
	<a class="external" href="http://flv-player.net/en/players/maxi/documentation/" title="Documentation">FLV Player</a> (neolao production). ]</p>
	<div><input type="hidden" name="from" value="curtain" /></div>

{/if}

</fieldset>

</form>

<script type="text/javascript">
jQuery(document).ready(function() {ldelim}
	jQuery(".infos").fadeOut(800).fadeIn(1200).fadeOut(400).fadeIn(800).fadeOut(400);
	jQuery(".errors").fadeOut(200).fadeIn(200).fadeOut(300).fadeIn(300).fadeOut(400).fadeIn(400); 
	jQuery('#theAdminPage #the_page').addClass('{$themeconf.name}');
{if $page == 'options'}
	jQuery('#theAdminPage #the_page h2').addClass('cl2');
{/if}{if $page == 'colors'}
	jQuery('#theAdminPage #the_page.clear h2').addClass('cl3');
{/if}{if $page == 'curtain'}
	jQuery('#theAdminPage #the_page.roma h2').addClass('cl2');
{/if}});
	jQuery('#theAdminPage #the_page h2').fadeIn(1800);
</script>

{html_head}
<script type="text/javascript" 
        src="{$CHARLIES_PATH|@cat:'farbtastic/farbtastic.js'}"></script>
<link rel="stylesheet" type="text/css"
      href="{$CHARLIES_PATH|@cat:'farbtastic/farbtastic.css'}">
<link rel="stylesheet" type="text/css" href="{$CHARLIES_PATH|@cat:'charlies.css'}"> 
{/html_head}

{known_script id="jquery.ui" src=$ROOT_URL|@cat:"themes/default/js/ui/packed/ui.core.packed.js"}
{known_script id="jquery.ui.tabs" src=$ROOT_URL|@cat:"themes/default/js/ui/packed/ui.tabs.packed.js"}
