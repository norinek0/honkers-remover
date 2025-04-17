#!/usr/bin/env fish

set targets \
    /usr/lib/the-honkers-railway-launcher-bin \
    /usr/bin/honkers-launcher \
    /usr/share/pixmaps/honkers-launcher.png \
    /usr/share/applications/honkers-launcher.desktop \
    /usr/share/icons/moe.launcher.honkers-launcher.png

for item in $targets
    if test -e $item
        if test -d $item
            echo "removing directory: $item"
            sudo rm -rv $item
        else
            echo "removing file: $item"
            sudo rm -v $item
        end
    else
        echo "not found: $item"
    end
end
