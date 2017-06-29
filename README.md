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

replace `/home/vagrant/lkl/linux/tools/lkl/liblkl.a ` and `/home/vagrant/lkl/linux/tools/lkl/include` with your path.
