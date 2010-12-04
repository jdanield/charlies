<?php
//Plugin Name: Charlies content
//File charlies_config.php

$lang['Templates configuration'] = 'Parauga konfiguracija';
$lang['Players options'] = 'Atskanotaja iespejas';
$lang['Players colors'] = 'Atskanotaja krasas';
$lang['Curtain selection'] = 'Aizsega izvele';
$lang['Forced width is out of range (Correct range: 90-1024)'] = 'Izveletais platums ir arpus diapazona (Korektais diapazons: 90-1024)';
$lang['Forced height is out of range (Correct range: 90-1024)'] = 'Izveletais augstums ir arpus diapazona (Korektais diapazons: 90-1024)';
$lang['Default width is out of range (Correct range: 90-1024)'] = 'Platums pec noklusejuma ir arpus diapazona (Korektais diapazons: 90-1024)';
$lang['Default height is out of range (Correct range: 90-1024)'] = 'Augstums pec noklusejuma ir arpus diapazona (Korektais diapazons: 90-1024)';
$lang['Volume is out of range (Correct range: 0-200)'] = 'Skalums ir arpus diapazona (Korektais diapazons: 0-200)';
$lang['Unknown file (Start image)'] = 'Nezinams fails (Ievadattels)';
$lang['Unknown file or URL|x|y error (x and y must be numeric)'] = ' Nezinams fails vai URL|x|y kluda (x un y jabut cipariem)';
$lang['Title font size is out of range (Correct range: 12-72)'] = 'Virsraksta fonta izmers ir arpus diapazona (Korektais diapazons: 12-72)';
$lang['Play icon transparency is out of range (Correct range: 0-100)'] = 'Atskanotaja ikonas caurspidigums ir arpus diapazona (Korektais diapazons: 0-100)';
$lang['Margin is out of range (Correct range: 0-40)'] = 'Malas ir arpus diapazona (Korektais diapazons: 0-40)';
$lang['Unknown file (skin)'] = 'Nezinams fails (ieterps)';
$lang['Autohide delay is out of range (Correct range: 0-9999)'] = 'Auto paslepšanas kavejums ir arpus diapazona (Korektais diapazons: 0-9999)';
$lang['Player transparency is out of range (Correct range: 0-100)'] = 'Atskanotaja caurspidigums ir arpus diapazona (Korektais diapazons: 0-100)';
$lang['Subtitle font size is out of range (Correct range: 8-24)'] = 'Subtitru fonta izmers ir arpus diapazona (Korektais diapazons: 8-24)';
$lang['Wrong filename or file not found (Subtitles file)'] = 'Nekorekts faila nosaukums vai fails nav atrasts (Subtitru fails)';
$lang['Wrong filename. RTMP (Real Time Messaging Protocol) is a TCP based propriety protocol developed by Adobe System for the purpose of streaming Audio/Video data between Flash Player and media server.'] = 'Nekorekts faila nosaukums. RTMP (Reala Laika Zinojumu Protokols) ir uz TCP bazets, Adobe System radits, piemerošanas protokols Audio/Video datu straumešanai starp Flash Player un media serveri.';
$lang['Invalid color code: 3 or 6 hexadecimal characters, preceded by "#"'] = 'Kludains krasas kods: 3 vai 6 hexadecimalas rakstu zimes, kam sakuma "#"';
$lang['Your configuration is NOT saved due to above reasons.'] = 'Jusu konfiguracija NAV saglabata del augstak minetiem iemesliem.';
$lang['You are Adviser and you are not authorized to change this configuration.'] = 'Jus esat Konsultants un Jums nav atlauts izmanit šo konfiguraciju.';
$lang['Your configuration is saved.'] = 'Jusu konfiguracija ir saglabata.';

//File charlies_config.tpl
$lang['Save Charlies\' configuration'] = 'Saglabat Carlija konfiguraciju';
$lang['On'] = 'Ieslegts';
$lang['Off'] = 'Izslegts';
//tab1 : templates
$lang['Charlies player template-mimetype association'] = 'Carlija atskanotaja paraugveidnes-mime tipa asociacija';
$lang['Bind your prefered extensions to a template file (player) from:'] = 'Sasaistit jusu izveletos paplašinajumus ar paraugveidnes failu (atskanotaju) no:';
$lang['Note: These options are available with the Maxi FLV Player. More details on all theses options on:'] = 'Piezime: Šis iespejas ir pieejamas kopa ar Maxi FLV Atskanotaju. Vairak detalu par visam šim opcijam:';
//tab2 : options
$lang['Charlies players configuration'] = 'Carlija atskanotaja konfiguracija';
$lang['General options'] = 'Visparejas opcijas';
$lang['Buffering'] = 'Buferešana';
$lang['Config by element'] = 'Konfigurets pec elementa';
$lang['Skin'] = 'Ieterps';
$lang['Titleling'] = 'Virsrakstišana';
$lang['Subtitleling'] = 'Subtitlešana';
$lang['Player and Buttons'] = 'Atskanotajs un Pogas';
$lang['Miscellaneous'] = 'Dažadi';
//tab2 : options -> subtab1 : General options
$lang['Autoload'] = 'Autoielade';
$lang['Display first picture'] = 'Radit pirmo attelu';
$lang['Autoplay'] = 'Autoatskanošana';
$lang['Loop'] = 'Cilpa';
$lang['Fullscreen'] = 'Pilns ekrans';
$lang['Flash Player 9.0.16.60 or above is required.'] = 'Vajadzigs 9.0.16.60 vai austak minetais Flash Atskanotajs.';
$lang['Forced video width'] = 'Piespiedu video platums';
$lang['Forced video height'] = 'Piespiedu video augstums';
$lang['Video default width'] = 'Video platums pec noklusejuma';
$lang['Video default height'] = 'Video augstums pec noklusejuma';
$lang['Volume [0-200]'] = 'Skalums [0-200]';
$lang['Onclick URL'] = 'Onklik URL';
$lang['or fullscreen or playpause or none'] = 'vai pilnekrana vai spelpauze vai neviens';
$lang['_blank'] = '_tukšs';
$lang['_self'] = '_pats';
//tab2 : options -> subtab2 : Buffering
$lang['Video buffer size in seconds'] = 'Video bufera izmers sekundes';
$lang['Default 5 seconds'] = 'Pec noklusejuma 5 sekundes';
$lang['Video buffer percent message'] = 'Video bufera procentzinojums';
$lang['Buffering _n_'] = 'Buferet _n_';
$lang['Video buffer background'] = 'Video bufera fons';
//tab2 : options -> subtab3 : Config by element
$lang['Use existing .txt to config'] = 'Lietot esošo .txt failu konfigurešanai';
$lang['Filename.txt might be use as config.txt file'] = 'Failanosaukums.txt var tikt lietots
ka config.txt fails';
$lang['Use existing .xml to config'] = 'Lietot esošo .xml failu konfigurešanai';
$lang['Filename.xml might be use as config.xml file'] = 'Failanosaukums.txt var tikt lietots ka config.xml fails';
//tab2 : options -> subtab4 : Skin
$lang['Margin for skin'] = 'Malina ieterpam';
$lang['Skin image'] = 'Ieterpa attels';
$lang['(URL of a non progressive jpg)'] = '(neprogresiva jpg URL)';
//tab2 : options -> subtab5 : Titleling
$lang['Title'] = 'Virsraksts';
$lang['Title font size [12-72]'] = 'Virsraksta fonta izmers [12-72]';
$lang['Default size might be 20.'] = 'Izmeram pec noklusejuma jabut 20.';
$lang['Start image'] = 'Ievada attels';
$lang['Title and start picture'] = 'Virsraksts un ievadattels';
$lang['Play icon in middle'] = 'Atskanošanas ikona vidu';
$lang['Play icon transparency [0-100]'] = 'Atskanošanas ikonas caurspidigums [0-100]';
$lang['Load an image over video'] = 'Ieladet attelu virs video';
$lang['(URL|x|y : where x,y are the offsets to place the picture)'] = '(URL|x|y : kur x,y ir ofsets attela izvietošanai)';
//tab2 : options -> subtab6 : Subtitleling
$lang['Use subtitles'] = 'Lietot subtitrus';
$lang['Filename.srt might be use for captioning'] = 'Failanosaukums.srt varetu tikt izmantots aizgušanai';
$lang['Subtitles font size [8-24]'] = 'Subtitru fonta izmers [8-24]';
$lang['Default size might be 11.'] = 'Izmeram pec noklusešanas jabut 11.';
$lang['Subtitles file URL'] = 'Subtitru faila URL';
$lang['URL of .srt'] = '.srt URL';
//tab2 : options -> subtab7 : Player and Buttons
$lang['Show player'] = 'Radit atskanotaju';
$lang['Autohide'] = 'Autopaslept';
$lang['Always'] = 'Vienmer';
$lang['Never'] = 'Nekad';
$lang['Show loading'] = 'Radit ieladi';
$lang['Show mouse'] = 'Radit peli';
$lang['Show time'] = 'Radit laiku';
$lang['Time left'] = 'Laiks atlicis';
$lang['Player transparency [0-100]'] = 'Atskanotaja caurspidigums [0-100]';
$lang['Autohide delay [0-9999]'] = 'Autoslepšanas kavejums [0-9999]';
$lang['Default 1500 milliseconds.'] = 'Pec noklusejuma 1500 milisekundes.';
$lang['Show stop button'] = 'Radit stop pogu';
$lang['Show volume'] = 'Radit skalumu';

$lang['Show subtitles switch'] = 'Radit subtitru sledzi';
$lang['Stop stops loading'] = 'Stop aptur ladešanu';
$lang['Keyboard shortcuts'] = 'Tautstiniscelš';
//tab2 : options -> subtab8 : Miscellaneous
$lang['PHP streaming'] = 'PHP straumešana';
$lang['RTMP server URL'] = 'RTMP servera URL';
$lang['(Adobe Systems for streaming audio, video and data)'] = '(Adobe Systems priekš audio, video un datu straumešanas)';
$lang['FYI: all these options might be used or NOT by the inbound player (template).'] = 'FYI: visas šis iespejas ir lietojamas vai NAV lietojamas ar iebuveto atskanotaju (paraugu) (template).';
$lang['Reset ALL Charlies\' configuration'] = 'Atjaunot (Reset) VISU Carlija konfiguraciju ';
$lang['Reset ALL Confirmation'] = 'Atjaunot (Reset) VISUS Apstiprinajumus';

//Tab3 : colors
$lang['Players colours selection'] = 'Atskanotaja krasu izvele';
$lang['Background'] = 'Fons';
$lang['Subtitles background'] = 'Subtitru fons';
$lang['Top border fading'] = 'Augšejas robežas sapludums';
$lang['Player'] = 'Atskanotajs';
$lang['Bottom border fading'] = 'Apakšejas robežas sapludums';
$lang['Loading bar'] = 'Ladešanas josla';
$lang['Player buttons'] = 'Atskanotaja pogas';
$lang['Leftbar gradient fading'] = 'Kreisas joslas gradients sapludums';
$lang['Hover player buttons'] = 'Hover atskanotaja pogas';
$lang['Rightbar gradient fading'] = 'Labas joslas gradients sapludums';
$lang['Buffer'] = 'Buferis';
$lang['Hover bar gradient'] = 'Hover joslas gradients';
$lang['Buffer background'] = 'Fona buferis';
$lang['Play icon'] = 'Atskanošanas ikona';
$lang['Title'] = 'Virsraksts';
$lang['Play icon background'] = 'Atskanošanas ikonas fons';
$lang['Subtitles'] = 'Subtitri';
$lang['Color usage might be just for information (Players could just ignore them or use them differently)'] = 'Krasu lietošana varetu but tikai informativa (Atskanotaji to var ignoret vai lietot atškirigi)';

//Tab4 : curtain
$lang['Active curtains'] = 'Aktivie aizkari';
$lang['.png without transparency are recommended. Maybe you can change a set of curtains by yours.'] = 'rekomendeti .png bez caurspidiguma. Varat nomainit aizkaru komplektu ar savejiem.';

?>