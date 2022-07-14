// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Jul  1 16:41:57 2022
// Host        : DESKTOP-Q340H04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/MyCode/EDA/Vivado/CPU_SOC/CPU_SOC.gen/sources_1/ip/dat_mem/dat_mem_sim_netlist.v
// Design      : dat_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dat_mem,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module dat_mem
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
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
  (* C_INIT_FILE = "dat_mem.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
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
  dat_mem_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
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
        .wea(wea),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27872)
`pragma protect data_block
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
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
