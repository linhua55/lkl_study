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

wget "https://github.com/linhua55/lkl_study/releases/download/v1/rinetd_bbr_powered" -O /usr/bin/rinetd

lkl版 普通bbr

wget “https://github.com/linhua55/lkl_study/releases/download/v1/rinetd_bbr” -O /usr/bin/rinetd

lkl版 PCC 拥塞控制协议

wget “https://github.com/linhua55/lkl_study/releases/download/v1/rinetd_PCC” -O /usr/bin/rinetd

用法可参考：

https://gist.github.com/codexss/1d5a834c479bb1532b9f82b23ee2f3fa

https://github.com/mixool/rinetd

https://www.v2ex.com/t/353778#r_4311799

### 注意：

依赖 iptables, grep, cut, xargs 。 一般linux系统都自带这些工具，不过有的系统用的是firewalld（不是iptables）, 需要安装iptables。

kvm 要 改 venet0:0 为 kvm 的公网ip对应的网卡设备，一般是 eth0

### Some technical details
https://linhua55.github.io/2017/04/24/LKL(Linux%20Kernel%20Library)/
