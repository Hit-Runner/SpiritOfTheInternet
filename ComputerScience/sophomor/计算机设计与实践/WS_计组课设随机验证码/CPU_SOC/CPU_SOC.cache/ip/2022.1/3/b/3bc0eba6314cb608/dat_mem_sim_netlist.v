// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Jul  1 16:41:56 2022
// Host        : DESKTOP-Q340H04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dat_mem_sim_netlist.v
// Design      : dat_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dat_mem,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27952)
`pragma protect data_block
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
MlAPb1dBI+WWNyEy9w311AZgIIcNEg==
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
