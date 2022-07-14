// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Jul  2 01:18:53 2022
// Host        : DESKTOP-Q340H04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.gen/sources_1/ip/ins_mem/ins_mem_sim_netlist.v
// Design      : ins_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ins_mem,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module ins_mem
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.622 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "ins_mem.mem" *) 
  (* C_INIT_FILE_NAME = "ins_mem.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ins_mem_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27328)
`pragma protect data_block
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
QjqTivH8hQlvU5MVPjCqciQEN0jd61PDMA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
