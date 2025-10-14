# CNVD-FPGA
漏洞复现工程
漏洞复现工程包含4个vivado的工程：
（1）ff_ro_V7，对应基于反馈环路的自震荡电路；
（2）ff_tree_V7，对应树状的震荡攻击电路；
（3）no_ro_V7，对应产生高频毛刺的时钟的攻击电路；
（4）V7_cnn_try_pro，对应对CNN计算核心进行高频数据洪泛的攻击电路。
以上工程在Vivado2024.1环境下运行,在xilinx virtex-7 vc707开发板上进行验证。
