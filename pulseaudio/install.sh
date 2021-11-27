
# Ref: https://www.youtube.com/watch?v=Goeucg7A9qE
# Ref: https://github.com/NapoleonWils0n/cerberus/blob/master/pulseaudio/virtual-mic.org

mkdir -pv ~/.config/pulse/
cp ./default.pa ~/.config/pulse/
pulseaudio -k
