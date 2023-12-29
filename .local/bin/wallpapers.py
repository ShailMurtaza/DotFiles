#!/usr/bin/python3

from screeninfo import get_monitors
from tomllib import load
import subprocess as sb

WALLPAPER_CONFIG = "/home/shail/.config/wallpapers.toml"

# return list of displays
def displays():
    monitors_info = get_monitors()
    monitors = [m.name for m in monitors_info]
    return monitors
    

# return parsed TOML file -> Python DICT
def read_config():
    with open(WALLPAPER_CONFIG, "rb") as file:
        config = load(file)
    return config["wallpaper"]


# convert arguments to valid subprocess command
def get_cmd(args):
    cmd = ["feh"]
    # background setting
    cmd.append("--bg-" + args["bg"])
    # wallpaper path
    cmd.append(args["wallpaper"])
    # output display
    cmd.append("--output")
    cmd.append(args["display"])

    # set background color if given
    bg_color = args.get("bg-color")
    if bg_color:
        cmd.append("--image-bg")
        cmd.append(bg_color)

    # set other options if given
    opt = args.get("options")
    if opt:
        cmd += opt
    return cmd


def change_wallpaper():
    monitors = displays()
    config = read_config()

    for i in config:
        display = i["display"]
        if display in monitors:
            cmd = get_cmd(i)
            output = sb.run(cmd, check=False, stdout=sb.PIPE, stderr=sb.PIPE, text=True)
            if output.returncode != 0:
                print("**ERROR**")
                print(' '.join(cmd))
                print(output.stdout)
                print(output.stderr)
        else:
            print(f'Display: {i["display"]} not found')


if __name__ == "__main__":
    change_wallpaper()

