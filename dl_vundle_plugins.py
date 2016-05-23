# -*- coding: utf-8 -*-
# dl_vundle_plugins.py

import subprocess
import sys

import toml

DEFAULT_PLUGINS = "/Users/eric/projects/dotfiles/plugins.toml"

def main():
    if len(sys.argv) > 1:
        plugin_file = sys.argv[1]
    else:
        plugin_file = DEFAULT_PLUGINS
    
    f = open(plugin_file)
    t = toml.loads(f.read())
    vundle_dir = t['vundle_dir']
    cmd = t['command'].split()
    
    for p in t['plugin']:
        clone = cmd +[ p['repo'], vundle_dir ]
        print('Downloading {}\n(running \'{}\'...)'
                        .format(p['name'], ' '.join(clone)))
        subprocess.call(clone)


if __name__ == '__main__':
    main()

