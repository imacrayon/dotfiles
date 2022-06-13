id="5CCF7F1DF456"
read -p "Filimin ID [$id]: " input
id="${input:-$id}"

osascript -ss - "$id" <<EOF
on run argv
   tell application "terminal"
      do script ("mosquitto_sub -h getfilimin.net -i ESP8266hostClient$RANDOM -p 443 --insecure --cafile /Users/christian/Sites/manager.filimin/storage/mqtt.pem -t 'devices/filimin/clientmsgs/ESP8266Client" & item 1 of argv & "'")
   end tell

   tell application "terminal"
      do script ("mosquitto_sub -h getfilimin.net -i ESP8266hostClient$RANDOM -p 443 --insecure --cafile /Users/christian/Sites/manager.filimin/storage/mqtt.pem -t 'devices/filimin/hostmsgs/ESP8266Client" & item 1 of argv & "'")
   end tell
end run
EOF

osascript -ss - "$id" <<EOF
on run argv
   tell application "terminal"
      do script ("mosquitto_pub -h getfilimin.net -i ESP8266hostClient$RANDOM -p 443 --insecure --cafile /Users/christian/Sites/manager.filimin/storage/mqtt.pem -t 'devices/filimin/hostmsgs/ESP8266Client" & item 1 of argv & "' -m {\"cmd\":6}")
   end tell
end run
EOF
