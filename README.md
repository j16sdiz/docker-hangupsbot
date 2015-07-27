 HangupsBot Docker Image 
=========================
Run this with

```sh
docker run -i -t \
	-v `pwd`/config:/root/.local/share/hangupsbot \
	-v `pwd`/plugins:/plugins \
	-v `pwd`/sinks:/sinks \
	j16sdiz/hangupsbot
```
