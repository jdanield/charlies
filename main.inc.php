<?php /*
Plugin Name: Charlies content
Version: 2.0.c
Description: Charlies content is a global solution for none picture files.
Plugin URI: http://fr.piwigo.org/ext/extension_view.php?eid=119
Author: VDigital, rvelices (PhpWebGallery team)
Author URI: http://www.phpwebgallery.net
*/
/* Synopsis
1 - Based on file extension...
2 - A template is used in state of the default content

Localisation of Charlies content: Possible

Requirements/recommendations:
1 - php 5
2 - GETID3 php modules (James Heinrich, Allan Hansen)
3 - $charlie['xxxxx']=array(....extensions....) means:
    if file extension is in the array a file charlie_xxxxx.tpl will be used and 
    must be in the charlies_content directory

/** History ***************
  2009-04-13 2.0.c 
	           Flipflip proposal to exclude GETID3 for some extends
						 nolive proposal to support GPX extensions
						 Forced width/height are supported by flvstreamer
  2009-02-15 2.0.b 
	           Admin configuration menu
						 And related changes (New version of GetID3)

  2008-10-30 2.0.a (Not distributed)
             Smarty version for Piwigo (Don't use it with PhpWebGallery 1.7.x)
  2008/03/26: error_reporting(E_ERROR | E_WARNING | E_PARSE);
             during getid3 call (Only one referenced case).             
  2008/02/22:
 * 3GP support : video streams from mobile phones.
   There are two different standards for this format:
   3gp for GSM-based Phones, or 3g2 for CDMA-based Phones.
 * $page['slideshow'] active/inactive support for "Pause" enhancement 
   so Charlies won't act on active slideshow but will act on Slideshow pause

  2007-10-21 1.7.a First release for PhpWebGallery 1.7
  2006-01-06 Video Integrator and followed by Media Integrator
  and previously Kitof's Original MOD.
 **/

/** 
 * All media file have to be broadcasted via an embedded player
 * so link its extention to a player name as to be define
 * the same player can be used for several extentions
 */
  global $conf, $charlie;

if (!defined('PHPWG_ROOT_PATH')) die('Hacking attempt!');
define('CHARLIES_DIR' , basename(dirname(__FILE__)));
define('CHARLIES_PATH' , PHPWG_PLUGINS_PATH . CHARLIES_DIR . '/');
define('CHARLIES_VER' , '2.0.c');
$x = @file_get_contents( $conf['local_data_dir'].'/plugins/'.basename(dirname(__FILE__)).'.dat');
if ($x!==false) $charlie = unserialize($x);
if (!isset($charlie['version']) or  $charlie['version'] != CHARLIES_VER) 
{
	$charlie['version'] = CHARLIES_VER;
	if (!isset($charlie['FlvStreamer'])) $charlie['FlvStreamer'] = array('flv',); 
	if (!isset($charlie['Flash'])) 			$charlie['Flash'] = array('swf',); 
	if (!isset($charlie['Music'])) 			$charlie['Music'] = array('pls','m3u','wav','mid','au','aif',); 
	if (!isset($charlie['mp3Player'])) 	$charlie['mp3Player'] = array('mp3',); 
	if (!isset($charlie['Acrobat'])) 		$charlie['Acrobat'] = array('pdf',); 
	if (!isset($charlie['WMplayer'])) 	$charlie['WMplayer'] = array('asf','wmv','divx','xvid',); 
	if (!isset($charlie['QuickTime'])) 	$charlie['QuickTime'] = 
	array('aiff','aac','bmp','gsm','mov','mpg','mpeg','mp4','m4a','psd','qt','qtif','qif','qti','snd','tif','tiff','3g2','3pg');
	if (!isset($charlie['Archive'])) 		$charlie['Archive'] = array('zip','rar',); 
	if (!isset($charlie['GPS'])) 				$charlie['GPS'] = array('gpx',); 

	if (!isset($charlie['autoplay'])) 	$charlie['autoplay'] = 1;
	if (!isset($charlie['loop'])) 			$charlie['loop'] = 1;
	if (!isset($charlie['full'])) 			$charlie['full'] = 1;
	if (!isset($charlie['forced_width'])) 	$charlie['forced_width'] = '';
	if (!isset($charlie['forced_height'])) 	$charlie['forced_height'] = '';
	if (!isset($charlie['video_default_width'])) 		$charlie['video_default_width'] =  320;
	if (!isset($charlie['video_default_height']))		$charlie['video_default_height'] =  240;
	if (!isset($charlie['volume'])) 		$charlie['volume'] = 150;
	if (!isset($charlie['onclick'])) 		$charlie['onclick'] = 'playpause';
	if (!isset($charlie['onclicktarget'])) 	$charlie['onclicktarget'] = 0;
	if (!isset($charlie['ondoubleclick'])) 	$charlie['ondoubleclick'] = 'fullscreen';
	if (!isset($charlie['ondoubleclicktarget'])) 		$charlie['ondoubleclicktarget'] = 0;
	if (!isset($charlie['buffer'])) 		$charlie['buffer'] = 10;
	if (!isset($charlie['buffermessage'])) 	$charlie['buffermessage'] = 1;
	if (!isset($charlie['buffershowbg'])) 	$charlie['buffershowbg'] = 0;
	if (!isset($charlie['config'])) 		$charlie['config'] = 0;
	if (!isset($charlie['configxml'])) 	$charlie['configxml'] = 0;
	if (!isset($charlie['margin'])) 		$charlie['margin'] = 8;
	if (!isset($charlie['skin'])) 			$charlie['skin'] = ''; // './plugins/charlies_content/skin.jpg';
	if (!isset($charlie['title'])) 			$charlie['title'] = '/n/n/nCharlies\' content ';
	if (!isset($charlie['titlesize'])) 	$charlie['titlesize'] = 26;
	if (!isset($charlie['start_image'])) 		$charlie['start_image'] = './plugins/charlies_content/city-lights.jpg';
	if (!isset($charlie['showtitleandstartimage'])) 	$charlie['showtitleandstartimage'] = 0;
	if (!isset($charlie['showiconplay'])) 		$charlie['showiconplay'] = 0;
	if (!isset($charlie['iconplaybgalpha'])) 	$charlie['iconplaybgalpha'] = 20;
	if (!isset($charlie['srt'])) 		$charlie['onclick'] = 0;
	if (!isset($charlie['showplayer'])) 		$charlie['showplayer'] = 1;
	if (!isset($charlie['showloading'])) 		$charlie['showloading'] = 1;
	if (!isset($charlie['showmouse'])) 		$charlie['showmouse'] = 1;
	if (!isset($charlie['showtime'])) 		$charlie['showtime'] = 2;
	if (!isset($charlie['playeralpha'])) 		$charlie['playeralpha'] = 20;
	if (!isset($charlie['playertimeout'])) 		$charlie['playertimeout'] = 1500;
	if (!isset($charlie['showstop'])) 	$charlie['showstop'] = 1;
	if (!isset($charlie['showvolume'])) $charlie['showvolume'] = 1;
	if (!isset($charlie['showswitchsubtitles'])) 	$charlie['showswitchsubtitles'] = 0;
	if (!isset($charlie['loadonstop'])) $charlie['loadonstop'] = 0;
	if (!isset($charlie['shortcut'])) 	$charlie['shortcut'] = 1;
	if (!isset($charlie['phpstream'])) 		$charlie['phpstream'] = 1;
	if (!isset($charlie['curtain'])) 		$charlie['curtain'] = 'none';
	if (!isset($charlie['start_image']))	$charlie['start_image'] =  CHARLIES_PATH . 'background.jpg';
	if (!isset($charlie['color16']))
	{
		$charlie['color0'] = '#111111';
		$charlie['color1'] = '#ff7700';
		$charlie['color2'] = '#444444';
		$charlie['color3'] = '#ff3333';
		$charlie['color4'] = '#ff3363';
		$charlie['color5'] = '#ff7700';
		$charlie['color6'] = '#111111';
		$charlie['color7'] = '#ff3333';
		$charlie['color8'] = '#ff3363';
		$charlie['color9'] = '#111111';
		$charlie['color10'] = '#444444';
		$charlie['color11'] = '#ff3333';
		$charlie['color12'] = '#ff3363';
		$charlie['color13'] = '#ff7700';
		$charlie['color14'] = '#444444';
		$charlie['color15'] = '#ff3333';
		$charlie['color16'] = '#111111';
	}

	$dir = $conf['local_data_dir'].'/plugins/';
	@mkdir($dir);
	$file = fopen( $dir.basename(dirname(__FILE__)).'.dat', 'w' );
	fwrite($file, serialize($charlie));
	fclose( $file );
}
  /* Note: Uppercase extensions are not requested */
  /**
   * That means you must have a tpl file for each... player
   * like for Flash => ./plugings/charlies_content/flash_content.tpl
   *
   * Player name is in lower-case followed by _content.tpl
   */

add_event_handler('render_element_content', 'render_Charlie_element_content', 40, 2 );
add_event_handler('get_admin_plugin_menu_links', 'Charlie_plugin_admin_menu');
$all = array();
foreach ($charlie as $ext) { 
  if ( is_array($ext)) $all = array_merge ($all, $ext); 
}
$conf['file_ext'] = array_merge (
    $conf['file_ext'], $all, array_map('strtoupper', $all) );

function Charlie_plugin_admin_menu($menu)
{
	array_push($menu, array(
				'NAME' => 'Charlies\'', 
				'URL' => get_admin_plugin_menu_link(dirname(__FILE__).'/charlies_config.php'), 
			));
	return $menu;
}  

/**
 * Only if picture.php is active
 */
function render_Charlie_element_content($content, $picture)
{
  global $template, $charlie, $page, $conf;
  if ( isset($page['slideshow']) and $page['slideshow'] ) return $content;
  if ( @$picture['is_picture'] ) return $content; 
  $all = array();
  foreach ($charlie as $ext) { if (is_array($ext)) $all = array_merge ($all, $ext); }
  $charlie['all'] = $all;
  $extension = strtolower(get_extension($picture['file']));
  if (!in_array($extension, $charlie['all']))
  { // in fact nothing to do (Lucky Charlies)
    return $content; }
  unset($charlie['all']);
  include_once(CHARLIES_PATH.'charlies.inc.php');
  return Charlies_content($picture);
}
?>