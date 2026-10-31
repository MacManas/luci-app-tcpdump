luci-app-tcpdump
================

LuCI App to capture live TCP traffic for analysis.

## Building an OpenWrt package

Place this repository in an OpenWrt buildroot or a matching SDK, then build it
for the configured target:

```sh
git clone https://github.com/MacManas/luci-app-tcpdump.git package/luci-app-tcpdump
make menuconfig
```

In `menuconfig`, enable **LuCI > Applications > TCP traffic capture interface**.
Then build the package:

```sh
make package/luci-app-tcpdump/compile V=s
```

The resulting `luci-app-tcpdump` IPK is written under
`bin/packages/<architecture>/base/`. The package declares dependencies on
`luci-base` and `tcpdump`, which OpenWrt resolves when installing it.
