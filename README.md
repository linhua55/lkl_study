# lkl_study
study the LKL(linux kernel library)   https://github.com/lkl/linux


## Rinetd version(with LKL and raw socket backend)
### Compile

1. compile static library liblkl.a

https://github.com/linhua55/linux/tree/rinetd_bpf

refer to https://github.com/lkl/linux

2. compile rinetd(with lkl)

https://github.com/linhua55/rinetd

refer to https://github.com/linhua55/rinetd/blob/lkl_raw/make.sh

replace `/home/vagrant/lkl/linux/tools/lkl/liblkl.a ` and `/home/vagrant/lkl/linux/tools/lkl/include` with your actual LKL path.


### Release
lkl版 增强版bbr

https://drive.google.com/open?id=0B0D0hDHteoksbXY1SmNJSm9KUlk

or

wget "https://drive.google.com/uc?id=0B0D0hDHteoksVW5CemJKZVcyN1E" -O /usr/bin/rinetd

lkl版 普通bbr

https://drive.google.com/open?id=0B0D0hDHteoksZWlQQmp3enBqbTg

or

wget “https://drive.google.com/uc?id=0B0D0hDHteokscTg3aEtqemJGQUE” -O /usr/bin/rinetd

lkl版 PCC协议

https://drive.google.com/open?id=0B0D0hDHteoksdW53VjNYZmFFVzg

or

wget “https://drive.google.com/uc?id=0B0D0hDHteoksdkZPcEE2Vzc0YWc” -O /usr/bin/rinetd

用法可参考：

https://gist.github.com/codexss/1d5a834c479bb1532b9f82b23ee2f3fa

https://github.com/mixool/rinetd

https://www.v2ex.com/t/353778#r_4311799

###注意：

依赖 iptables, grep, cut, xargs 。

有的系统用的是firewalld（不是iptables）, 需要安装iptables。

kvm 要 改 venet0:0 为 kvm 的公网ip对应的网卡设备，一般是 eth0

