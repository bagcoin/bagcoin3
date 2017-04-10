
::允许挖矿软件使用100%的GPU资源
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_USE_OBJECTS  1
setx GPU_MAX_HEAP_SIZE 100

::删除无用bin文件
del *.bin
Color 0A

::========================【此处说明不看后果自负！】========================
::注意 myminer.123 改成你的用户名，钱包地址后面可以加小数点再加序号！

sgminer.exe -k x13modold -o stratum+tcp://stratum.8baochi.com:3337 -u myminer.123 -p x -o stratum+tcp://stratum.8baochi.com:3337 -u myminer.123 -p x --intensity 19 --worksize 128 --thread-concurrency 8192 --expiry 1 --scan-time 1 --queue 5 --gpu-fan 60 

::========================【参数说明】========================
::以上参数可自行测试，哪个值算力高就用哪个
::一般不改也可，通用配置基本可接近最高速度

::--worksize 显存2G以上的可用256，5-6-7系卡用64或128，R9系卡用256或512
::--intensity 一般19，或用自己原有参数
::--thread-concurrency 不设置，或用自己原有参数均可，影响不大
::--gpu-threads 不设置，或用自己原有参数均可，影响不大
::--gpu-fan 风扇转速，60表示60%转速，家庭矿工觉得风扇吵的可以调到60%，专门租房放矿机的建议100

::--gpu-engine 
::按《超频攻略》指导超频，X11和X13功耗较低，有一定超频潜力，一般都可超频10-20%

::========================【常见报错】========================
::1、如果长时间停留在 Waiting for work to be available from pools
::确保网络连接矿池端口正常

::2、单卡显示OFF，或Error -4: Enqueueing kernel onto command queue. 
::原因是内存不足（只有2G或是Win7 32位）
::解决方法：将thread-concurrency值减少（比如8192或4096或2048）以减少内存占用，或者将intensity降低
::内存有4G但Win7是32位的，最好把Win7升级到64位

::3、跑一段时间后sgminer中avg速度降低
::一般是超频过高，导致显卡驱动跑一段时间后崩溃，重启后速度可恢复

::4、跑一段时间后sgminer出错退出
::一般是超频过高，可降低频率试试。或者用cgwatcher监控sgminer出错重启

pause