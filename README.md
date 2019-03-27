# SRT (Docker)

This is a dockerized version of [Haivision/srt Repo](https://github.com/Haivision/srt).  Hopefully, it will be merged into the main source.

In the repo, all the sample apps are built, main ones being: `srt-file-transmit`, `srt-live-transmit`, `srt-multiplex`

## How to use
To run an srt sample app: `docker run howlowck/srt ./srt-live-transmit`

You'll need to open ports and set up data volume to fully utilize the sample app:
`docker run -p 22222:22222/udp --volume=directory/to/your/data:/data howlowck/srt ./srt-file-transmit -v /data/bbb.ts srt://0.0.0.0:22222`

## Advanced
If you are building on top of srt, you can use this image as a base image.
The srt directory is `/etc/app/srt`.

## To Build it yourself
1. `clone this repo`
2. `docker build . -t <some-name>`