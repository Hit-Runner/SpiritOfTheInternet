// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Jul  2 01:18:52 2022
// Host        : DESKTOP-Q340H04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ins_mem_sim_netlist.v
// Design      : ins_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ins_mem,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27408)
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
