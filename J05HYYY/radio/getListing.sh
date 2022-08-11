#!/bin/sh

echo '<html>'
echo '<body>'
echo '<table>'
echo 'Station: <input type="text" id="counter" value="0"></input><button id="tune">Tune</button>'
echo '<script src="m3u-player.js" defer="defer"></script>'
echo '<audio src="streams.m3u" controls="controls">'
echo 'not supported?'
echo '</audio>'
echo '<br><br>'
	a=0
	grep EXTINF streams.m3u | cut -c 11- | while read line; do
		echo "$a: $line"
		echo "<br>"
		a="$(expr $a + 1)"
	done
echo '</table>'
echo '<br><br>'
echo '<b>For my personal use only. Private software.</b>'
echo '</body>'
echo '</html>'