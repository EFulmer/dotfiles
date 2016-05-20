// src/main.rs
extern crate toml;

use std::fmt;
use std::fs::File;
use std::io::prelude::*;
use std::process::{Command, Output};

use toml::Value;

const PLUGIN_CMDS: &'static str = "/Users/eric/projects/dotfiles/plugins.toml";

fn main() {
    let mut f = File::open(PLUGIN_CMDS).unwrap();
    let mut s = String::new();
    f.read_to_string(&mut s);

    let t = toml::Parser::new(&s).parse().unwrap();

    let vundle_dir = t.get("vundle_dir").unwrap().as_str().unwrap();
    let command = t.get("command").unwrap().as_str().unwrap();
    let plugins = t.get("plugin").unwrap().as_slice().unwrap();

    for plugin in plugins {
        let p_tbl = plugin.as_table().unwrap();
        let name = p_tbl.get("name").unwrap().as_str().unwrap();
        let repo = p_tbl.get("repo").unwrap().as_str().unwrap();
        // TODO use Path module here.
        // TODO get plugin name from .git URL.
        let mut cmd = format!("{cmd} {repo} {dir}{name}", cmd=command, repo=repo, dir=vundle_dir,
                              name=name);
        println!("Cloning plugin {} (via running {})", name, cmd);
        let output: Output = Command::new("sh")
                                     .arg("-c")
                                     .arg(cmd)
                                     .output()
                                     .unwrap_or_else(|e| { panic!("failed to execute process {}", 
                                                                  e) });
        println!("status: {}", output.status);
        println!("stdout: {}", String::from_utf8_lossy(&output.stdout));
        println!("stderr: {}", String::from_utf8_lossy(&output.stderr));
    }
}
