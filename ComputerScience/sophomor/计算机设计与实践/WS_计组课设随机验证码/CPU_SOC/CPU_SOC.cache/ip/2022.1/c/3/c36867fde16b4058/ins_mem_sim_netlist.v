// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Jul  1 16:43:52 2022
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
